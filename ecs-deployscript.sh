deploy_ecs() {

sh ./ecs-deployscript.sh $task-definition_name $service $containerOpts $clusterName $taskcount
      taskdefinition=$1
      servicename=$2
      containerdefin=$3
	  clusterName =$4
	  taskcount =$5

      
	  COMMAND1= "aws ecs register-task-definition    --family $taskdefinition  --container-definitions $containerdefin"
	  eval $COMMAND1
	   echo "updating Service"
	  COMMAND2= $update-service $cluster --service $servicename --desired-count $desiredcount --task-definition $taskdefinition
	   eval $COMMAND2
      
      
  }



 