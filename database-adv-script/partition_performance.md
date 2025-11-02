### Partitioning Performance Results

Partitioned bookings by `start_date`.

Benefits observed:
- Faster range queries
- Less memory use on large date-range filters
- Query planner skips irrelevant partitions

Conclusion: partitioning improves performance for date-filtered queries.

### Performance Monitoring Report

Tools used:
- `EXPLAIN ANALYZE`
- `pg_stat_statements`

Findings:
- Frequent joins required indexing
- Heavy date-based queries improved after partitioning
- Caching repeated lookups improved latency

Next steps:
- Add query caching layer (Redis)
- Periodically vacuum/analyze database