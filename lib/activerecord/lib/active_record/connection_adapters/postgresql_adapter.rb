module ActiveRecord
  module ConnectionAdapters
    class PostgreSQLAdapter < AbstractAdapter

      def supports_alter_constraint?
        # PostgreSQL 9.4 introduces ALTER TABLE ... ALTER CONSTRAINT but it has a bug and fixed in 9.4.2
        # https://www.postgresql.org/docs/9.4/static/release-9-4-2.html
        postgresql_version >= 90402
      end

    end
  end
end