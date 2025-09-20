# Zepto E-commerce Inventory Dataset Analysis


## 🎯 Project Overview

This project provides a comprehensive data analysis of Zepto's e-commerce inventory dataset using Python, focusing on business intelligence insights and inventory optimization. The analysis demonstrates end-to-end data science workflows including data cleaning, exploratory data analysis, and business-focused visualizations.

## 📊 Dataset Description

The Zepto inventory dataset contains **3,732 products** across multiple categories with the following key attributes:

### Data Schema
| Column | Description | Data Type |
|--------|-------------|-----------|
| `Category` | Product category (Fruits & Vegetables, etc.) | String |
| `name` | Product name | String |
| `mrp` | Maximum Retail Price (in paise) | Numeric |
| `discountPercent` | Discount percentage offered | Numeric |
| `availableQuantity` | Stock quantity available | Integer |
| `discountedSellingPrice` | Final selling price after discount (in paise) | Numeric |
| `weightInGms` | Product weight in grams | Integer |
| `outOfStock` | Stock availability status | Boolean |
| `quantity` | Unit quantity | Integer |

## 🔍 Analysis Highlights

### Key Business Insights Discovered:

1. **Revenue Analysis**: Calculated total revenue potential across categories
2. **Stock Optimization**: Identified out-of-stock high-value products
3. **Pricing Strategy**: Analyzed discount patterns and price-per-gram value
4. **Inventory Management**: Evaluated weight-based product categorization
5. **Category Performance**: Ranked categories by revenue and discount offerings

### Technical Skills Demonstrated:

- ✅ **Data Cleaning & ETL**: Price conversion (paise to rupees), null handling
- ✅ **Exploratory Data Analysis**: Statistical summaries, data profiling
- ✅ **Business Intelligence**: KPI creation, revenue calculations
- ✅ **Data Visualization**: Charts, graphs, and dashboards using matplotlib/seaborn
- ✅ **SQL-to-Python Translation**: Converting SQL business logic to pandas operations

## 🚀 Getting Started

### Prerequisites
```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### Running the Analysis
```bash
# Clone or download the project
cd zepto_dataset/

# Launch Jupyter Notebook
jupyter notebook zepto_analysis.ipynb
```

## 📁 Project Structure

```
zepto_dataset/
├── README.md                      # Project documentation
├── zepto_analysis.ipynb          # Complete analysis notebook
├── zepto_simple_analysis.ipynb   # Simplified version for resume
├── zepto_v2.csv                 # Raw dataset
├── zepto_SQL_project.sql        # Original SQL queries
└── zepto_v1.xlsx               # Additional data files
```

## 📈 Key Findings

### Business Intelligence Results:

- **Total Products**: 3,732 across multiple categories
- **Revenue Potential**: ₹XXX,XXX total estimated revenue
- **Stock Status**: XX% in stock, XX% out of stock
- **Average Discount**: XX% across all products
- **Price Range**: ₹X.XX - ₹XXX.XX

### Category Performance:
- **Top Revenue Category**: [Category Name]
- **Highest Discount Category**: [Category Name] 
- **Best Value Products**: Identified based on price-per-gram analysis

### Inventory Optimization Opportunities:
- XX high-value products need restocking
- Weight-based categorization (Low/Medium/Bulk) for logistics optimization
- Premium product pricing strategy recommendations

## 🔧 Technical Implementation

### Data Processing Pipeline:
1. **Data Loading**: CSV import with pandas
2. **Data Validation**: Null value checks, data type verification
3. **Data Cleaning**: Price conversion, outlier handling
4. **Feature Engineering**: Price-per-gram calculations, category groupings
5. **Analysis & Visualization**: Business intelligence queries and charts

### SQL-to-Python Translations:
The notebook translates 8 key SQL business queries into Python equivalents:
- Top discount products analysis
- Out-of-stock high-value product identification
- Category-wise revenue calculations
- Premium product segmentation
- Price-per-gram value analysis
- Weight-based product categorization
- Inventory weight distribution

## 📊 Visualizations

The analysis includes comprehensive visualizations:
- **Category Distribution**: Bar charts and pie charts
- **Revenue Analysis**: Horizontal bar charts with value labels
- **Stock Status**: Pie charts and count plots
- **Price Analysis**: Histograms and scatter plots
- **Discount Patterns**: Bar charts with percentage labels

## 💼 Business Applications

### Stakeholder Value:
- **Inventory Managers**: Stock optimization recommendations
- **Pricing Teams**: Discount strategy insights  
- **Category Managers**: Performance benchmarking
- **Operations**: Weight-based logistics planning
- **Finance**: Revenue potential analysis

### Actionable Insights:
1. Prioritize restocking high-MRP out-of-stock items
2. Leverage high-discount categories for marketing campaigns
3. Optimize inventory for bulk items with low margins
4. Implement premium pricing for low-discount, high-value products

## 🎓 Skills Showcased

This project demonstrates proficiency in:
- **Python Programming**: pandas, numpy, matplotlib, seaborn
- **Data Analysis**: Statistical analysis, data profiling
- **Business Intelligence**: KPI development, metric calculation
- **Data Visualization**: Chart creation, dashboard design
- **SQL Knowledge**: Business logic translation
- **Documentation**: Clear project documentation and presentation

## 📞 Contact

For questions about this analysis or collaboration opportunities:

**Satish Das**  
📧 dasskumar7909@gmail.com  

---