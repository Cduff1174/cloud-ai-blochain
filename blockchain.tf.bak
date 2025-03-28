resource "null_resource" "create_blockchain_network" {
  provisioner "local-exec" {
    command = <<EOT
      aws managedblockchain create-network \
        --name "ai-blockchain-network" \
        --framework HYPERLEDGER_FABRIC \
        --framework-version 1.2 \
        --framework-configuration '{"Fabric":{"Edition":"STARTER"}}' \
        --voting-policy '{"ApprovalThresholdPolicy":{"ThresholdPercentage":50,"ProposalDurationInHours":24,"ThresholdComparator":"GREATER_THAN"}}' \
        --member-configuration '{
          "Name":"Org1",
          "Description":"Initial Member",
          "FrameworkConfiguration":{
            "Fabric":{
              "AdminUsername":"admin",
              "AdminPassword":"MySecurePassword1!"
            }
          }
        }'
    EOT
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}


