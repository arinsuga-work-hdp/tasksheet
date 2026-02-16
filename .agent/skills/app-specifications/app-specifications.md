# Application Specification Report

## Overview
This application is a highly customized **Laravel 5.8** system designed for **Employee Management, Attendance (Absensi), and Task/Activity Tracking**. It utilizes a specialized architecture that extends standard Laravel patterns with a custom Repository-based implementation.

- **Framework**: Laravel 5.8.38
- **Database**: MariaDB 10.11 / MySQL (Storage Engine: InnoDB)
- **Primary Architecture**: Repository Pattern with Business Objects (Bo)
- **Custom Namespace**: `Arins` (located in `/arins` directory)

---

## Architecture & Code Structure

The application separates standard Laravel framework components from the core business logic using a custom directory structure in `/arins`.

### 1. Custom Directory: `/arins`
- **Models**: Located in `arins/Models`. These are the Eloquent models representing database tables (e.g., `Absensi`, `Activity`, `Employee`, `User`).
- **Repositories**: Located in `arins/Repositories`. Implements the Repository Pattern with interface-implementation pairs (e.g., `ActivityRepositoryInterface.php` and `ActivityRepository.php`).
- **Bo (Business Objects)**: Located in `arins/Bo`. Contains the core application logic, including:
    - **Controllers**: Specific back-office controllers (e.g., `ActivityController`, `SupportController`).
    - **Repositories**: Specialized repositories for BO logic.
- **Facades**: Custom facades in `arins/Facades` (e.g., `ConvertDate`, `Response`).
- **Helpers**: Custom helper functions in `arins/Helpers`.
- **Traits**: Reusable logic for controllers and models in `arins/Traits`.

### 2. Standard Laravel Components
- **`app/Http/Controllers`**: Contains standard controllers and frontend-facing website logic (e.g., `WebsiteController`).
- **`routes/`**: Divided into multiple route files:
    - `web.php`: Frontend/Public website routes.
    - `bo.php`: Back-office application routes.
    - `api.php`: API endpoints.
    - `a0.php`, `dd.php`: Specialized or legacy route groups.

---

## Core Modules & Features

### 1. Human Resource (HR) & Employee Management
Manages the organizational structure and personnel.
- **Tables**: `employee`, `dept`, `subdept`, `job`, `bizunit`, `branch`, `superior`.
- **Key Features**: Employee profiles, department hierarchy, relationship between employees and their superiors.

### 2. Attendance (Absensi)
Tracks employee work hours and attendance.
- **Tables**: `absensi`.
- **Key Features**: Logging tgl (date), daytype (Workday/Restday), masuk (clock-in), keluar (clock-out), work hours, overtime, and leavetypes (Sakit, Cuti, Ijin).

### 3. Activity & Task Tracking
The core functional module of the Back-Office, used for logging and managing various types of work.
- **Tables**: `activity`, `tasktype`, `tasksubtype1`, `tasksubtype2`, `activitystatus`, `activitytype`.
- **Activity Types**:
    - **Support**: Incident/Request handling (e.g., IT support).
    - **Maintenance**: Predefined or scheduled maintenance activities.
    - **Project**: Tasks linked to specific projects.
- **Workflows**: Activities follow a status-based workflow: `Open` -> `Pending` -> `Close/Cancel` -> `Reopen`.

### 4. Master Data
Configurable categories for activities and tasks.
- **Tables**: `activitytype`, `activitysubtype`, `tasktype`, `tasksubtype1`, `tasksubtype2`.

---

## Database Schema Highlights

The database `hdde4090_dbtask` consists of approximately 33 tables. 

### Key Relationships
- **Activity -> Employee**: `activity.enduser_id` and `activity.technician_id` link to `employee.id`.
- **Employee -> Dept**: `employee.dept_id` links to `dept.id`.
- **Activity -> Masters**: Multiple foreign keys link activities to their types and subtypes (e.g., `activitystatus_id`, `activitytype_id`).

### Table Groupings
| Category | Tables |
| :--- | :--- |
| **Authentication** | `users`, `roles`, `role_user`, `password_resets`, `app_user`, `apps` |
| **Attendance** | `absensi` |
| **Activity/Task** | `activity`, `activitystatus`, `activitytype`, `activitysubtype`, `tasktype`, `tasksubtype1`, `tasksubtype2` |
| **HR / Master** | `employee`, `dept`, `subdept`, `job`, `branch`, `bizunit`, `education`, `gender`, `marital`, `religion`, `bloodtype`, `nationality` |

---

## Technical Specifications
- **PHP Version**: 7.1.3+ (Required for Laravel 5.8)
- **Frontend**: Blade templates with possible integration of custom JS/CSS helpers.
- **Repository Pattern**: Centralized data access logic, making it easier to swap persistence layers if needed.
- **Base Controller**: Most custom controllers extend `Arins\Http\Controllers\BoController`, which provides shared functionality for response handling and view management.
