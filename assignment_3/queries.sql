create extension POSTGIS; -- run once


SELECT ST_AsText(ST_ConvexHull(
    ST_GeomFromText('MULTIPOINT(-118.28532222295337 34.02150961046098,
                                -118.28729001916392 34.021072322722624,
                                -118.28645264790256 34.023541192139454,
                                -118.28797880430984 34.024067008720024,
                                -118.28449393314318 34.02006975709813,
                                -118.28910207837514 34.0219231268512,
                                -118.2853829859345 34.01880322313149,
                                -118.28266898850322 34.019072035267364,
                                -118.28566606080976 34.02239019422073,
                                -118.28537753117745 34.02285104060733,
                                -118.28914064490952 34.02006490467983,
                                -118.28885155835569 34.020687268398426,
                                -118.27950033405116 34.02808024651537
     )')
)); -- query for convex hull, used ST_GeomFromText to get geom objects from text and then just made a convex hull and outputted the result


WITH start_point AS (
  SELECT ST_GeomFromText('POINT(-118.27950033405116 34.02808024651537)') AS geom
),

neighbor_points AS (
    SELECT ST_GeomFromText('POINT(-118.28532222295337 34.02150961046098)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28729001916392 34.021072322722624)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28645264790256 34.023541192139454)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28797880430984 34.024067008720024)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28449393314318 34.02006975709813)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28910207837514 34.0219231268512)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.2853829859345 34.01880322313149)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28266898850322 34.019072035267364)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28566606080976 34.02239019422073)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28537753117745 34.02285104060733)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28914064490952 34.02006490467983)') AS geom UNION ALL
    SELECT ST_GeomFromText('POINT(-118.28885155835569 34.020687268398426)') AS geom
)

SELECT ST_AsText(neighbor_points.geom)
FROM start_point, neighbor_points
ORDER BY ST_Distance(start_point.geom, neighbor_points.geom) ASC
LIMIT 4; -- query to get 4 nearest neighbors; calculated the distance from start point(home) to all the other points(departments), arranged them in ascending order and took the top 4.

-- run the queries seperately, and I have hardcoded the points. Used bit.io.