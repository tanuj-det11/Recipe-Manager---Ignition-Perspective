# Recipe Manager - Ignition Perspective Project

## System Requirements

| Component | Version |
|-----------|---------|
| Ignition Gateway | 8.1.x+ |
| MySQL Server | 8.0+ |
| SFC Module | Required |
| Perspective Module | Required |

## Database Configuration

**Datasource Name:** `Recipe_Manager`
**Database:** `recipe_manager`
**Port:** 3306 (default)

### Schema

| Table | Description |
|-------|-------------|
| `recipes` | Master recipe definitions |
| `recipe_steps` | Step parameters per recipe |
| `batches` | Batch execution records |
| `batch_step_logs` | Step-level execution logs |

### Named Queries

| Query | Path |
|-------|------|
| GetAllRecipes | `Recipe_Manager/GetAllRecipes` |
| GetRecipeSteps | `Recipe_Manager/GetRecipeSteps` |
| GetBatchHistory | `Recipe_Manager/GetBatchHistory` |
| GetBatchStepLogs | `Recipe_Manager/GetBatchStepLogs` |

## Installation

1. Import project via Designer: **File > Import**
2. Configure `Recipe_Manager` datasource in Gateway
3. Execute `schema.sql` against target database
4. Verify named query connections

## Project Structure

```
com.inductiveautomation.perspective/
├── views/
│   └── Exchange/SFC Recipe Handler/
│       ├── Main/
│       ├── Recipe Presets/
│       ├── Batch History/
│       ├── View Running Recipe/
│       └── Build Recipe/
ignition/
├── named-query/
│   ├── Recipe_Manager/
│   └── Exchange/SFC Recipe Handler/
```

## Configuration

Tag paths configured in step setup reference `[default]Exchange/SFC_Setpoint_Control/`.

Poll rates:
- Recipe list: 5000ms
- Batch history: 10000ms
- Step data: On-demand
