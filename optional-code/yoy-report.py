import matplotlib.pyplot as plt

years = [2020, 2021, 2022, 2023, 2024]
total_data = [59, 79, 97, 120, 149]
ai_processed = [5.9, 11.85, 17.46, 18, 37.25]
non_ai_processed = [total_data[i] - ai_processed[i] for i in range(len(years))]

plt.figure(figsize=(12, 7))
bar_width = 0.4

plt.bar(years, non_ai_processed, color='skyblue', width=bar_width, label='Non-AI Processed Data')

plt.bar(years, ai_processed, bottom=non_ai_processed, color='green', width=bar_width, label='AI-Processed Data')

plt.xlabel('Year')
plt.ylabel('Data Generated (ZB)')
plt.title('Global Annual Data Generated (2020-2024)')
plt.xticks(years)

plt.legend(loc='upper left')

plt.savefig('report-generated.png', dpi=300, bbox_inches='tight')

# plt.show()