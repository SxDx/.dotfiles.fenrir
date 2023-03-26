abbr -a gcloud_removebg 'gcloud container clusters get-credentials removebg-app --no-user-output-enabled --zone europe-west4-b --project removebg-226919 && gcloud config set project removebg-226919 --no-user-output-enabled'
abbr -a gcloud_danni 'gcloud container clusters get-credentials danni --no-user-output-enabled --zone europe-west4-b --project danni-278921 && gcloud config set project danni-278921 --no-user-output-enabled'

function kl
    echo "Listing running pod for workload '$argv'"
    kubectl get pod --selector="app=$argv"
end

function kc
    echo "Connecting to running pod for workload '$argv'"
    kubectl exec -it $(kubectl get pod --selector="app=$argv" --output jsonpath='{.items[0].metadata.name}') -- bash
end
