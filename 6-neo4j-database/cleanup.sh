echo "removing container"
echo docker rm -f dds-neo4j
docker rm -f dds-neo4j
set -e
echo "removing data files"
echo rm -rf ./data ./logs
rm -rf ./data ./logs
echo "done."
