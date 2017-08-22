-- +micrate Up
CREATE TABLE posts (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR,
  body TEXT,
  draft BOOL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

-- +micrate Down
DROP TABLE IF EXISTS posts;
