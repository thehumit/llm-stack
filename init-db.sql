-- -- LiteLLM Database Initialization Script
-- -- This script sets up the necessary database structure for LiteLLM

-- -- Ensure the database exists and is properly configured
-- ALTER DATABASE litellm SET timezone TO 'UTC';

-- -- Create extensions if needed
-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- -- Grant necessary permissions to the litellm user
-- GRANT ALL PRIVILEGES ON DATABASE litellm TO llmproxy;
-- GRANT ALL PRIVILEGES ON SCHEMA public TO llmproxy;

-- -- Set default privileges for future objects
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO llmproxy;
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO llmproxy;
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO llmproxy;

-- -- Create a function to update timestamps
-- CREATE OR REPLACE FUNCTION update_updated_at_column()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     NEW.updated_at = CURRENT_TIMESTAMP;
--     RETURN NEW;
-- END;
-- $$ language 'plpgsql';

-- -- Database is now ready for LiteLLM to create its tables
