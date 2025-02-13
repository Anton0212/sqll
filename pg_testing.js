import { pgPool } from "./pg_connection.js";

async function insertGenre(genre_id, genre_name) {
    try {
        const query = "INSERT INTO genre (genre_id, genre_name) VALUES ($1, $2) RETURNING *";
        const values = [genre_id, genre_name];

        const result = await pgPool.query(query, values);

        console.log('Inserted Row:', result.rows[0]);
    } catch (e) {
        console.error('Error inserting data:', e.message);
    }
}


insertGenre(1, 'Rock');







