# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Wed Aug  5 12:52:35 PDT 2015
#
#/ usage: docker-image:run [ --add-host <>] [ --blkio-weight <>] [ --cap-add <>] [ --cap-drop <>] [ --command <>] [ --cpu-period <>] [ --cpu-quota <>] [ --cpu-shares <>] [ --cpuset-cpus <>] [ --cpuset-mems <>] [ --detatch <false>] [ --device <>] [ --dns <>]  --docker-cert-path <${DOCKER_CERT_PATH:-}>  --docker-host <${DOCKER_HOST:-}>  --docker-tls-verify <${DOCKER_TLS_VERIFY:-}> [ --envOpts <>]  --image <> [ --ipc <>] [ --log-driver <json-file>] [ --log-opt <>] [ --lxc-conf <>] [ --memory <>] [ --memory-swap <>] [ --name <>] [ --net <bridge>] [ --oom-kill-disable <>] [ --privileged <false>] [ --publish <>] [ --restart <>] [ --rm <false>] [ --security-opt <>] [ --read-only <false>] [ --volume <>] [ --volumes-from <>] [ --ulimit <>] [ --uts <>] [ --label <>] [ --interactive <>] [ --tty <>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --add-host) rerun_option_check $# $1; ADD_HOST=$2 ; shift ;;
            --blkio-weight) rerun_option_check $# $1; BLKIO_WEIGHT=$2 ; shift ;;
            --cap-add) rerun_option_check $# $1; CAP_ADD=$2 ; shift ;;
            --cap-drop) rerun_option_check $# $1; CAP_DROP=$2 ; shift ;;
            --command) rerun_option_check $# $1; COMMAND=$2 ; shift ;;
            --cpu-period) rerun_option_check $# $1; CPU_PERIOD=$2 ; shift ;;
            --cpu-quota) rerun_option_check $# $1; CPU_QUOTA=$2 ; shift ;;
            --cpu-shares) rerun_option_check $# $1; CPU_SHARES=$2 ; shift ;;
            --cpuset-cpus) rerun_option_check $# $1; CPUSET_CPUS=$2 ; shift ;;
            --cpuset-mems) rerun_option_check $# $1; CPUSET_MEMS=$2 ; shift ;;
            --detatch) rerun_option_check $# $1; DETATCH=$2 ; shift ;;
            --device) rerun_option_check $# $1; DEVICE=$2 ; shift ;;
            --dns) rerun_option_check $# $1; DNS=$2 ; shift ;;
            --docker-cert-path) rerun_option_check $# $1; DOCKER_CERT_PATH=$2 ; shift ;;
            --docker-host) rerun_option_check $# $1; DOCKER_HOST=$2 ; shift ;;
            --docker-tls-verify) rerun_option_check $# $1; DOCKER_TLS_VERIFY=$2 ; shift ;;
            --envOpts) rerun_option_check $# $1; ENVOPTS=$2 ; shift ;;
            --image) rerun_option_check $# $1; IMAGE=$2 ; shift ;;
            --ipc) rerun_option_check $# $1; IPC=$2 ; shift ;;
            --log-driver) rerun_option_check $# $1; LOG_DRIVER=$2 ; shift ;;
            --log-opt) rerun_option_check $# $1; LOG_OPT=$2 ; shift ;;
            --lxc-conf) rerun_option_check $# $1; LXC_CONF=$2 ; shift ;;
            --memory) rerun_option_check $# $1; MEMORY=$2 ; shift ;;
            --memory-swap) rerun_option_check $# $1; MEMORY_SWAP=$2 ; shift ;;
            --name) rerun_option_check $# $1; NAME=$2 ; shift ;;
            --net) rerun_option_check $# $1; NET=$2 ; shift ;;
            --oom-kill-disable) rerun_option_check $# $1; OOM_KILL_DISABLE=$2 ; shift ;;
            --privileged) rerun_option_check $# $1; PRIVILEGED=$2 ; shift ;;
            --publish) rerun_option_check $# $1; PUBLISH=$2 ; shift ;;
            --restart) rerun_option_check $# $1; RESTART=$2 ; shift ;;
            --rm) rerun_option_check $# $1; RM=$2 ; shift ;;
            --security-opt) rerun_option_check $# $1; SECURITY_OPT=$2 ; shift ;;
            --read-only) rerun_option_check $# $1; READ_ONLY=$2 ; shift ;;
            --volume) rerun_option_check $# $1; VOLUME=$2 ; shift ;;
            --volumes-from) rerun_option_check $# $1; VOLUMES_FROM=$2 ; shift ;;
            --ulimit) rerun_option_check $# $1; ULIMIT=$2 ; shift ;;
            --uts) rerun_option_check $# $1; UTS=$2 ; shift ;;
            --label) rerun_option_check $# $1; LABEL=$2 ; shift ;;
            --interactive) rerun_option_check $# $1; INTERACTIVE=$2 ; shift ;;
            --tty) rerun_option_check $# $1; TTY=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$DETATCH" ] && DETATCH="$(rerun_property_get $RERUN_MODULE_DIR/options/detatch DEFAULT)"
    [ -z "$DOCKER_CERT_PATH" ] && DOCKER_CERT_PATH="$(rerun_property_get $RERUN_MODULE_DIR/options/docker-cert-path DEFAULT)"
    [ -z "$DOCKER_HOST" ] && DOCKER_HOST="$(rerun_property_get $RERUN_MODULE_DIR/options/docker-host DEFAULT)"
    [ -z "$DOCKER_TLS_VERIFY" ] && DOCKER_TLS_VERIFY="$(rerun_property_get $RERUN_MODULE_DIR/options/docker-tls-verify DEFAULT)"
    [ -z "$LOG_DRIVER" ] && LOG_DRIVER="$(rerun_property_get $RERUN_MODULE_DIR/options/log-driver DEFAULT)"
    [ -z "$NET" ] && NET="$(rerun_property_get $RERUN_MODULE_DIR/options/net DEFAULT)"
    [ -z "$PRIVILEGED" ] && PRIVILEGED="$(rerun_property_get $RERUN_MODULE_DIR/options/privileged DEFAULT)"
    [ -z "$RM" ] && RM="$(rerun_property_get $RERUN_MODULE_DIR/options/rm DEFAULT)"
    [ -z "$READ_ONLY" ] && READ_ONLY="$(rerun_property_get $RERUN_MODULE_DIR/options/read-only DEFAULT)"
    # Check required options are set
    [ -z "$DOCKER_CERT_PATH" ] && { echo >&2 "missing required option: --docker-cert-path" ; return 2 ; }
    [ -z "$DOCKER_HOST" ] && { echo >&2 "missing required option: --docker-host" ; return 2 ; }
    [ -z "$DOCKER_TLS_VERIFY" ] && { echo >&2 "missing required option: --docker-tls-verify" ; return 2 ; }
    [ -z "$IMAGE" ] && { echo >&2 "missing required option: --image" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export DOCKER_CERT_PATH
    export DOCKER_HOST
    export DOCKER_TLS_VERIFY
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${ADD_HOST:=}
: ${BLKIO_WEIGHT:=}
: ${CAP_ADD:=}
: ${CAP_DROP:=}
: ${COMMAND:=}
: ${CPU_PERIOD:=}
: ${CPU_QUOTA:=}
: ${CPU_SHARES:=}
: ${CPUSET_CPUS:=}
: ${CPUSET_MEMS:=}
: ${DETATCH:=}
: ${DEVICE:=}
: ${DNS:=}
: ${DOCKER_CERT_PATH:=}
: ${DOCKER_HOST:=}
: ${DOCKER_TLS_VERIFY:=}
: ${ENVOPTS:=}
: ${IMAGE:=}
: ${IPC:=}
: ${LOG_DRIVER:=}
: ${LOG_OPT:=}
: ${LXC_CONF:=}
: ${MEMORY:=}
: ${MEMORY_SWAP:=}
: ${NAME:=}
: ${NET:=}
: ${OOM_KILL_DISABLE:=}
: ${PRIVILEGED:=}
: ${PUBLISH:=}
: ${RESTART:=}
: ${RM:=}
: ${SECURITY_OPT:=}
: ${READ_ONLY:=}
: ${VOLUME:=}
: ${VOLUMES_FROM:=}
: ${ULIMIT:=}
: ${UTS:=}
: ${LABEL:=}
: ${INTERACTIVE:=}
: ${TTY:=}


