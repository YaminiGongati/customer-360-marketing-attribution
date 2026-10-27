# Customer 360 & Marketing Attribution — Architecture

## Data Flow
'''mermaid
flowchart TD
    A[Customer Profiles] --> D[Google BigQuery]
    B[Orders Data] --> D
    C[Ad Spend and Campaigns] --> D
    E[Marketing Touchpoints] --> D
    D --> F[SQL Data Transformation]
    F --> G[Customer 360 View]
    F --> H[Customer Segmentation]
    F --> I[Campaign Performance]
    F --> J[Marketing Attribution]
    G --> K[Tableau Dashboard]
    H --> K
    I --> K
    J --> K
    '''
## Components

- Source data: Synthetic customer profiles, orders, advertising campaigns, and marketing touchpoints.
- Data warehouse: Google BigQuery.
- Transformation: SQL queries create customer-level summaries, segments, campaign metrics, and attribution comparisons.
- Visualization: Tableau dashboard presents campaign revenue, advertising spend, ROI/ROAS, acquisition cost, and conversions.
- Limitations: This is a demonstration architecture using synthetic data, not a production integration.
