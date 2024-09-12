zz
zooxr
coredash3
zz
cd imaging/
ls
git grep zcore
less driving_os/roles/install_zoox_system_services/files/zcore.service
zz
cd scripts/launch/
ls
cd ../..
cd vehicle/launch/scripts/
ls
git grep driving
less zcore/helperfuncs.py 
zz
git log
gb
git checkout shayan/SWAT-10091-migrate-cpu-v2-developrsibranch
git log
git show c69163351ed83bef0420c6ca0c33e19a955ab478
exit
ls
cd vehicle/common/zci/
ls
cd dynamic/
ls
emacs dynamic_transport_controller.cpp 
zz
cd vehicle/planner/node/
ls
cd hero_state/
ls
less transport_params.pr
less transport_params.pbtxt 
zz
cd vehicle/common/pub_sub/
ls
cd ach/
ls
less ach_publisher.cpp 
less ach_publisher.h 
cd ..
ls
less serialized_publisher.h 
less serialized_publisher.cpp 
cd ach
ls
less ach_publisher.cpp 
ls
less ach_payload.h 
less ach_payload.cpp 
exit
exit
zz
zooxrc
ggs
ls
git grep teleop_streamer
cd teleop/telemetry/video_stream/
ls
git grep SCHED_FIFO
..
git grep SCHED_FIFO
..
git grep SCHED_FIFO
ggs
zz
zooxrc
git grep "SCHED_FIFO"
ls
git log
emacs vehicle/sensors/cameras/cammux/cammux_entry.cpp
zfixit
emacs vehicle/sensors/cameras/cammux/image_source_wrapper.cpp
gs
git diff 1
zfixit
emacs vehicle/sensors/cameras/cammux/sporadic_task_runner.h
git grep setRtSchedulingPolicy
emacs vehicle/sensors/cameras/cammux/image_source_wrapper.cpp
gs
git diff 1
git add 
git add 1
git diff 2
gs
git add 2
cd vehicle/sensors/cameras/cammux/
bb --config=kraken --config=cuda cammux_entry
ls
emacs vehicle/sensors/cameras/cammux/cammux_entry.cpp
cd vehicle/sensors/cameras/cammux/
ls
git grep "CamMux"
eamcs cammux_core.cpp 
emacs cammux_core.cpp 
emacs cammux_entry.cpp 
less cammux_core.h 
emacs cammux_core.cpp 
emacs vehicle/sensors/cameras/cammux/image_source_wrapper.cpp
gs
git diff HEAD 2
zz
emacs vehicle/sensors/cameras/cammux/image_source_wrapper.cpp
ls
git grep SporadicTaskRunner
cd vehicle/sensors/cameras/cammux/
ls
emacs sporadic_task_runner.h 
ls
git grep post_proc_task_
emacs image_source_wrapper.h 
emacs sporadic_task_runner.h 
cd vehicle/sensors/camm
cd vehicle/sensors/cameras/
ls
cd cammux
ls
git grep "init("
git grep image_source_wrapper_
less cammux_core.cpp 
exit
ls
exit
zz
ls
cd base/threading/
s
ls
less simple_condition_variable.h 
exit
zz
ls
cd base/threading/
ls
less blocking_counter.h 
zz
ls
git log
git show c69163351ed83bef0420c6ca0c33e19a955ab478
exit
less blocking_queue.h 
exit
ls
zz
cd base/threading/
ls
emacs BUILD 
zz
zooxrc
ls
cd vehicle/sensors/camm
cd vehicle/sensors/cameras/
ls
cd cammux
ls
gs
bb bb --config=kraken --config=cuda sporadic_task_runner
exit
exit
gs
exit
exit
exit
bb --config=kraken --config=cuda sporadic_task_runner
gs
git add .
bb --config=kraken --config=cuda image_source_wrapper
cd vehicle/sensors/cameras/
ls
cd cammux/
ls
emacs sporadic_task_runner.h 
ls
zz
cd base/threading/
ls
less blocking_counter.h 
less blocking_counter.cpp 
ls
gs
exit
gs
git diff HEAD .
git commit
gs
git rebase -i HEAD~3
zz
git push -f
gb
ls
exit
ls
cd vehicle/sensors/cameras/
ls
cd cammux/
ls
git grep RT
git grep RTSch
git grep RTS
git grep RTsch
less sporadic_task_runner
less sporadic_task_runner.h
git grep setRtSchedulingPolicy
gs
git log
ls
gs
ls
gb
git checkout master
zz
zooxrc
gb
git fetch origin master
git reset --hard origin/master
git checkout -b shayan/SWAT-10992-dep-vehmeas-from-sksampl
zz
zooxrc
cd scripts/tools/
ls
cd stack_samples/
ls
git grep veh_meas
git grep "/vehicle/measurements" 
cd cpu_utilization_report/
ls
emacs cpu_report.py
ls
zz
cd vehicle/common/proto/
ls
git grep "DriveDyna"
less conversions/bmu_conversions.h 
zz
cd firmware/common/proto/
ls
less drive_dynamics.proto 
ls
zz
cd vehicle/common/proto/
ls
less vehicle_platform_measurements.proto 
..
ls
less BUILD 
zz
git grep "firmware/common:drive_dynamics"
emacs BUILD 
emacs cpu_report.py
zz
cd vehicle/common/proto/
ls
less BUILD 
emacs BUILD 
ls
less cpu_utilization_report.py 
emacs BUILD 
ls
less cpu_utilization_report.py 
exit
cd proto/
ls
ls
zz
cd scripts/tools/
ls
cd stack_samples/
ls
cd cpu_utilization_report/
ls
less cpu_report.py 
ls
exit
emacs cpu_report.py 
less drive_dynamics.proto 
less ../../../vehicle/common/proto/autonomous_control.proto 
less drive_dynamics.proto 
zz
ls
cd vehicle/common/proto/firmware/
ls
less header.proto 
less ../../../vehicle/common/proto/autonomous_control.proto 
gs
git diff .
gs
git add .
exit
exit
ls
..
ls
less README.md 
ls
gs
cd cpu_utilization_report/
ls
less cpu_utilization_report.py 
bb --config=kraken cpu_utilization_report
ls
less cpu_utilization_report.py 
bazel run --config=kraken cpu_utilization_report -- --output=/home/sdarayan/cpu_report.txt --runs kitt_210@20240726T041500-20240726T042500
ls
emacs cpu_report.py 
gs
git diff HEAD 2
bazel run --config=kraken cpu_utilization_report -- --output=/home/sdarayan/cpu_report.txt --runs kitt_210@20240726T041500-20240726T042500
ls
zz
cd firmware/common/proto/
ls
less drive_dynamics.proto 
zz
cd vehicle/common/proto/
ls
less autonomous_control.proto 
gs
git diff HEAD 2
zz
ls
cd vehicle/common/proto/
ls
less vehicle_platform_measurements.proto 
emacs BUILD 
ls
less BUILD 
zz
ls
bb --config=kraken //vehicle/common/proto:autonomous_control_py
bb --config=kraken //vehicle/common/proto:autonomous_control
bb --config=kraken //vehicle/common/proto:autonomous_control_proto_py
bazel run --config=kraken cpu_utilization_report -- --output=/home/sdarayan/cpu_report.txt --runs kitt_210@20240726T041500-20240726T042500
exit
exit
gs
git add .
git diff HEAD 2
ls
cd ~
ls
less cpu_report.txt 
mv cpu_report.txt cpu_report.html
ls
df -ah
cat .bash_extras 
cd /var/www/html/
ls
cd dropfile/
ls
mv ~/cpu_report.html 
mv ~/cpu_report.html ,
ls
mv , cpu_report.html
ls
ifconfig
gs
gs
git log
git commit
zfixit
zz
zfixit
gs
git diff 3
git add 3
git commit
ls
exit
ls
zz
cd scripts/tools/stack_samples/
ls
git grep "vehicle/meas"
git grep "VEH"
cd cpu_utilization_report/
ls
less cpu_report.py 
gs
cd scripts/tools/stack_samples/
ls
cd cpu_utilization_report/
ls
less BUILD 
zz
git grep cpu_utilization_report_lib
git push
git log
git commit --amend
git push -f
ifconfig
git log
exit
gb
git checkout master
git fetch origin master
git reset --hard origin/master
gb
git checkout -b shayan/SWAT-10991-dep-vehmeas-from-msgutils
ls
cd base/message_utils/
ls
git grep "/vehicle/measurements
git grep "/vehicle/measurements"
cd internal/
emacs chum_message_reader.py 
zz
zooxrc
cd base/threading/
ls
cd ..
ls
cd python
ls
gb
ls
cd message_utils/
ls
git grep "/vehicle/measurements"
tmux a
cd base/message_utils
ls
exit
git grep "/vehicle/measurements"
emacs show_message.py 
cd internal/
ls
emacs chum_message_reader.py 
zz
cd vehicle/common/proto/
ls
less autonomous_control.proto 
zz
cd firmware/common/proto/
ls
less drive_dynamics.proto 
less ../../../vehicle/common/proto/autonomous_control.proto 
ls
less drive_dynamics.proto 
less ../../../vehicle/common/proto/autonomous_control.proto 
ls
zz
cd vehicle/common/proto/
ls
less vehicle_platform_measurements.proto 
gs
git diff 1
git add .
ls
emacs BUILD 
gs
git diff 2
git add 2
ls
emacs chum_message_reader_test.py 
gs
git diff 3
git add 3
ls
cd ..
ls
emacs RE
git grep "/vehicle/meas"
emacs show_message.py 
less drive_dynamics.proto 
less ../../../vehicle/common/proto/autonomous_control.proto 
gs
git diff 4
git add 4
ls
zz
zooxrc
ls
cd base/message_utils/
ls
cd internal/
ls
bb --config=kraken chum_message_reader
gs
git log
bazel test --config=kraken chum_message_reader_test
less /home/sdarayan/.cache/bazel/_bazel_sdarayan/6375610fc1c71e8facae411558b73881/execroot/zoox/bazel-out/k8-fastbuild/testlogs/base/message_utils/internal/chum_message_reader_test/test.log
bazel run --config=kraken chum_message_reader_test
ls
cd internal/
ls
emacs chum_message_reader.py 
gs
git diff 5
git add 5
ls
zz
gs
git log
zfixit
gs
git diff 5
git add 5
git commit
ls
less base/message_utils/internal/BUILD 
gs
git log
git push
gb
git checkout shayan/SWAT-10091-migrate-cpu-v2-developrsibranch
git log
gb
l
git log
git show 4afa44928928edd4e01f81ed024aa95646880834
exit
exit
zz
zooxrc
ls
zz
zooxrc
ls
tmux a
gb
ls
cd vehicle/computer_hardware/cgroup/
ls
emacs cgroup.h 
ls
git grep assignToGroup
emacs cgroup_exec.cpp
ls
man cgexec
emacs cgroup.cpp 
git grep assignToGroup
emacs cgroup_exec.cpp 
emacs cgroup_py.cpp 
zz
git grep "assign_cgroup"
emacs vehicle/computer_hardware/cgroup/cgroup_py.cpp 
gs
git diff .
gs
git add .
git grep "assign_cgroup"
for i in `find . -name *.py`; do echo $i; done
for i in `find . -name *.py`; do sed -i 's/assign_cgroup/pid_assign_cgroup/g' $i; done
zz
gs
git diff 5
gs
git diff 91
git add 91
git diff 95
git add 95
git diff 119
git add 119
git diff 120
git add 120
git difff 121
git diff 121
gs
git add 121
gs | less
git checkout .
git grep "assign_cgroup"
emacs vehicle/computer_hardware/cgroup/README.md 
gs
git add 10
ls
cd vehicle/computer_hardware/cgroup/r
cd vehicle/computer_hardware/cgroup/
ls
emacs cgroup.h
emacs cgroup.cpp 
gs
emacs cgroup_py.cpp 
gs
git grep "assignProcessToGroup"
zz
git grep "assignToGroup"
emacs base/posix/child_process.cpp
emacs ci/zimbeast/tools/lidar_emulator/basic_lidar_emulator.cpp
emacs ci/zimbeast/tools/shifted_player/zci/shifted_chum_player_node.cpp
gs
git grep "assignProcessToGroup"
emacs vehicle/computer_hardware/cgroup/cgroup_exec.cpp
gs
git diff .
gs
git add .
ls
cd vehicle/computer_hardware/cgroup/
ls
emacs cgroup.cpp 
emacs cgroup.h
gs
git diff .
git ad .
git add .
ls
emacs cgroup_py.cpp 
emacs cgroup_test.py 
gs
git diff 15
git diff 14
git add .
ls
zz
zooxrc
cd vehicle/computer_hardware/cgroup/
ls
gs
ls
gs
zz
gs
git diff HEAD 11
cd vehicle/launch/scripts/zcore/
ls
emacs helperfuncs.py 
ls
zz
cd vehicle/launch
ls
cd ../orchestration/
ls
git grep cgroup
git grep cgroup_lib
git grep assignPid
git grep assignToGroup
ls
cd framework/
ls
emacs executive_attributes.cpp 
ls
zz
gs
cd vehicle/computer_hardware/cgroup/
ls
emacs cgroup.cpp 
bb --config=kraken ...
cd vehicle/computer_hardware/cgroup/
ls
less cgroup.h 
gs
emacs cgroup_py.cpp 
gs
git add .
bazel test --config=kraken ...
less /home/sdarayan/.cache/bazel/_bazel_sdarayan/6375610fc1c71e8facae411558b73881/execroot/zoox/bazel-out/k8-fastbuild/testlogs/vehicle/computer_hardware/cgroup/cgroup_py_test/test.log
ls
bazel run //vehicle/computer_hardware/cgroup:cgroup_py_test 
ls
less cgroup_py.cpp 
emacs cgroup_test.py 
emacs cgroup.cpp 
ls
less cgroup_py.cpp 
less cgroup_test.py 
gs
ls
emacs cgroup.cpp 
zz
zfixit
emacs cgroup_test.
emacs cgroup_test.py 
zz
cd vehicle/computer_hardware/cgroup/
ls
cd ../utils/
ls
less errors..h
less errors.h
zz
zfixit
gs
zz
gs
git diff .
gs
git add .
gs
zfixit
gs
cd base/posix/chi
cd base/posix/
less child_process.cpp 
git diff HEAD 1
less child_process.cpp 
ls
exit
exit
exit
gs
zz
zz
cd vehicle/launch/scripts/
ls
cd zcore
ls
bazel test --config=kraken ...
gs
zz
cd base/posix/
ls
bb --config=kraken child_process
git grep ActorInstance
cd vehicle/
git grep ActorInstance
cd orchestration/
git grep ActorInstance
cd framework/
ls
git grep //vehicle/computer_hardware/cgroup:cgroup_py_test 
git grep ActorInstance
less actor_instance_initializer.h
git grep "phase("
..
git grep "phase("
cd framework/
ls
less actor_instance_initializer.h 
zz
ls
cd base/posix/
ls
emacs server_program.h 
emacs server_program.cpp 
less server_program.h 
less server_program.cpp 
emacs server_program.cpp 
gs
zz
gs
bb --config=kraken //ci/zimbeast/tools/lidar_emulator:basic_lidar_emulator
zz
cd ci/zimbeast/tools/lidar_emulator/
ls
less BUILD 
bb --config=kraken //ci/zimbeast/tools/lidar_emulator:lidar_emulator
less BUILD 
zz
cd ci/zimbeast/tools/shifted_player/zci
ls
less BUILD 
bb --config=kraken shifted_chum_player_node
cd base/threading/
ls
emacs shared_mutex.h 
emacs shared_mutex.cpp 
gs
zz
gs
zz
ls
cd vehicle/computer_hardware/
ls
less system_metrics2.proto 
gb
gs
zz
zooxrc
ls
gs
git commit
git rebase -i HEAD~3
gs
git log
rm -f ~/*.patch
ls
git log
git format-patch -1 eb5ed56cde57f94da666146dbe2ec64a2c063fe9
mv 0001-SWAT-10091-Migrate-cpu-controller-to-cgroup-v2.patch ~
ls
gb
git checkout -b shayan/SWAT-9438-cgroup-threading
git log
git reset --hard eb5ed56cde57f94da666146dbe2ec64a2c063fe9
git log
git commit --amend
git log
ggs
git reset HEAD -- vehicle/sensors/cameras
gs
git reset HEAD^ -- vehicle/sensors/cameras
gs
git diff .
gs
git checkout .
git commit --amend
ggs
cd vehicle/computer_hardware/cgroup/
ls
cd config/
ls
git grep threaded
cd zoox/
ls
git reset HEAD^ -- .
gs
git diff 4
gs
git diff 5
git diff 6
gs
git checkout .
git commit --amend
gs
ggs
ls
gs
zz
cd vehicle/computer_hardware/cgroup/
ls
bazel test --config=kraken ...
gs
git push
emacs README.md 
tmux a
ls
gs
cd cgroup/
ls
exit
exit
exit
gs
ls
zz
cd vehicle/computer_hardware/cgroup/
ls
emacs README.md 
ls
less cgroup.h 
less config.h 
emacs cgroup.cpp 
gs
git diff 1
gs
git add .
git diff HEAD 1
gs
git commit --amend
git push
git push -f
gb
ls
cd ..
ls
cd system_monitor/
ls
git grep compact_success
emacs vmstat.cpp 
zz
zooxrc
cat /proc/vmstat 
gb
git checkout shayan/SWAT-9393-memory-compaction-work
git fetch origin master
git rebase origin/master
gs
emacs vehicle/launch/scripts/zcore/helperfuncs.py
gs
git rebase --continue
git log
gs
git log
git push -f
gs
gb
git show HEAD
ls
gb
git checkout shayan/SWAT-10091-migrate-cpu-v2-developrsibranch
git log
gb
git rebase shayan/SWAT-9438-cgroup-threading
gs
git diff 8
emacs $e8
gs
git rebase --continue
git push -f
zz
zooxrc
ls
gb
git checkout shayan/SWAT-9438-cgroup-threading
gb
git log
gs
fix-deps //vehicle/computer_hardware/cgroup:cgroup
gs
ls
emacs vehicle/computer_hardware/cgroup/BUILD 
l
fix-deps //vehicle/computer_hardware/cgroup:cgroup_mock
gs
git diff 1
git add 1
git commit --amend
git push -f
gb
git checkout shayan/SWAT-9393-memory-compaction-work
git branch -D shayan/SWAT-9438-threaded-cgroups
gb
tmux a
zz
gs
git show HEAD
cd vehicle/launch/scripts/zcore/
ls
cd test
ls
emacs test_zcore_helperfuncs.py 
exit
ls
cd ..
ls
emacs helperfuncs.py 
zz
zooxrc
ls
cd vehicle/launch/scripts/
ls
cd zcore
ls
cd test
ls
less BUILD 
bazel run --config=kraken test_zcore_helperfuncs
gs
git stash
qq
gb
git checkout shayan/SWAT-10091-migrate-cpu-v2-developrsibranch
zz
zooxrc
ls
git reset HEAD^ -- imaging/driving_os/vars/robot_os.yml
gs
git log
gb
git checkout shayan/SWAT-9438-cgroup-threading
git reset HEAD^ -- imaging/driving_os/vars/robot_os.yml
gs
git diff 2
git checkout 2
git commit --amend
git push -f
gb
git checkout shayan/SWAT-9393-memory-compaction-work
git stash pop
gs
cd vehicle/launch/scripts/zcore/tes
cd vehicle/launch/scripts/zcore/test
ls
emacs test_zcore_helperfuncs.py 
gs
git add .
git add 2
exit
zz
ls
git grep "mock.patch.object"
zz
zfixit
less helperfuncs.py 
python3
gs
zz
gs
git diff 4
git add 3
git add 4
git checkout 3
zfixit
gs
git rm -f 3
gs
ls
git diff HEAD .
gs
git log
git commit --amend
git push -f
zz
zooxrc
clear
g
gb
zz
zooxrc
ls
bazel run --config=kraken //vehicle/launch/scripts/zcore/test:test_zcore_helperfuncs_mypy_test
tmux a
ls
git grep execute_memory
less runmain.py 
bazel run --config=kraken //vehicle/launch/scripts/zcore/test:test_zcore_helperfuncs_test
bazel run --config=kraken //vehicle/launch/scripts/zcore/test:test_zcore_helperfuncs
gs
git add 1
zz
zfixit
gs
git log
git commit --amend
gs
git push -f
exit
exit
ls
gs
ls
less test_zcore_helperfuncs.py 
ls
exit
exit
exit
exit
exit
exit
exit
exit
zz
zooxrc
ls
cd vehicle/planner/node/conf
ls
cd vehicle/planner/node/
cd planner_config/
ls
cd overwrite/
ls
zz
zooxrc
ls
cd base/posix/
ls
less BUILD 
git log -- child_process.cpp
zz
zooxrc
zz
zooxrc
ls
cd base/diag/
ls
cd collector/
ls
emacs diagnostic_collector.h 
ls
gb
git checkout master
git branch -D shayan/SWAT-9438-cgroup-threading
git branch -D shayan/SWAT-9393-memory-compaction-work
git branch -D shayan/SWAT-10992-dep-vehmeas-from-sksampl
git branch -D shayan/SWAT-10991-dep-vehmeas-from-msgutils
gb
git branch -D shayan/SWAT-10091-migrate-cpu-v2-developrsibranch-reproissue
git branch -D shayan/SWAT-10091-migrate-cpu-v2
gb
gs
ls
git branch -D shayan/SWAT-10091-migrate-cpu-v2-developrsibranch
git branch -D shayan/SWAT-11263-memory-tooling
gb
git branch -D shayan/SWAT-9287-hook-for-camera-group
git branch -D shayan/SWAT-9328-hook-for-teleop-group
gb
git branch -D rrishel/zb_leak_fix-pass2
gb
git checkout -b ktrivedi/ctgg-non-determinism
git fetch origin ktrivedi/ctgg-non-determinism
git reset --hard origin/ktrivedi/ctgg-non-determinism
ggs
s
gll
ls
gb
l
clear
ls
rm -f *.patch
ls
zz
zooxrc
ls
gb
git checkout -b mmacdougall/ctgg_iso/090524
git fetch origin mmacdougall/ctgg_iso/090524
git reset --hard origin/mmacdougall/ctgg_iso/090524
gb
git log
ls
gb
git checkout -b mmacdougall/ctgg_iso/090524-revert-laneseq
git log
gb
git log
gll
git revert a8cdaf9be679
gs
git revert --abort
gb
gll
clear
gll
git revert 1b342695732b
gs
emacs vehicle/common/roads/lane_seq.cpp
git revert --abort
git revert 1b342695732b
gs
ls
zz
zooxrc
gb
gs
ls
tmux a
tmux
ls
gs
zz
zooxrc
ls
gs
emacs vehicle/common/roads/lane_seq.h 
ls
zz
zooxrc
ls
git grep updatePreferredPathOverlapEndS
emacs vehicle/planner/mission/road_planner/lane_bubble_generator.cpp 
gs
git diff 23
git add 23
emacs $e15
zz
gb
zz
zooxrc
ls
tmux a
emacs vehicle/common/roads/lane_seq.h 
gs
git add 24
git diff 23
gs
git add 23
git diff HEAD 3
gs
ls
emacs vehicle/common/roads/lane_seq.h 
g
gs
ls
emacs vehicle/common/roads/lane_seq_test.cpp 
zz
zooxrc
ls
cd vehicle/common/roads
ls
less BUILD 
bb --config=kraken lane_seq
bb --config=kraken lane_seq_test
bazel run --config=kraken lane_seq_test
gs
gs
emacs vehicle/planner/decision3/search_setup/agent_manager/uap_agent_manager_test.cpp
ls
emacs vehicle/planner/decision3/teleop/test/teleop_path_builder_test.cpp
zz
gs
cd vehicle/planner/decision3/teleop/test
ls
less BUILD 
bb --config=kraken --config=cuda teleop_path_builder_test
emacs vehicle/planner/decision3/teleop/translator/utils.cpp
gs
ls
cd vehicle/planner/decision3/
ls
cd teleop/
ls
cd translator/
ls
less utils.h 
zz
zooxrc
tmux a
exit
cd ..
ls
cd translator/
ls
less BUILD 
gb
emacs vehicle/planner/decision3/teleop/translator/utils.cpp
gs
git diff 23
git add 23
emacs vehicle/planner/decision3/teleop/test/utils_test.cpp
gs
ls
cd ..
ls
cd test
ls
less BUILD 
bb --config=kraken --config=cuda utils_test
emacs vehicle/planner/mission/road_planner/lane_bubble_generator.cpp
gs
emacs vehicle/planner/mission/road_planner/lane_bubble_generator.cpp
gs
zz
ls
git grep constructPosition
cd vehicle/common/roads/
ls
git grep constructPosition
less road_segment_util.cpp 
exit
git grep distanceToClosestDrivableLaneCenter
git grep lane_reference_getter_results
less vehicle/planner/decision3/search_setup/get_on_road_abstractor/get_on_road_abstractor.h
less vehicle/planner/decision3/search_setup/get_on_road_abstractor/get_on_road_abstractor.cpp 
emacs vehicle/planner/decision3/search_setup/get_on_road_abstractor/get_on_road_abstractor.cpp 
exit
git grep appendIfSuccessor
cd vehicle/common/roads/
ls
less lane_seq_util.h 
gs
zz
gs
git diff vehicle/planner/mission/preferred_path_evaluation_utils_test.cpp
gs
emacs vehicle/planner/decision3/teleop/translator/utils.cpp
gs
git diff HEAD 23
gs
emacs vehicle/planner/decision3/teleop/test/utils_test.cpp
ls
cd vehicle/planner/tele
ls
cd vehicle/planner/decision3/teleop/
ls
cd translator/
ls
cd ../test
ls
emacs utils_test.cpp 
cd ../translator/
ls
emacs utils.cpp 
bazel run --config=kraken --config=cuda utils_test
gs
git diff 23
git add 23
git diff 23
git add 23
gs
zz
s
gs
cd vehicle/planner/decision3/teleop/test
less BUILD 
bb --config=kraken --config=cuda teleop_path_builder_test
bazel run --config=kraken --config=cuda teleop_path_builder_test
git diff HEAD 13
emacs vehicle/planner/decision3/teleop/test/teleop_path_builder_test.cpp
gs
git add 23
less BUILD 
bb --config=kraken --config=cuda teleop_assertiveness_test
bazel run --config=kraken --config=cuda teleop_assertiveness_test
zz
gs
emacs vehicle/planner/mission/preferred_path_evaluation_utils_test.cpp
gs
zz
gs
cd vehicle/planner/mission
ls
less BUILD 
bb --config=kraken --config=cuda preferred_path_evaluation_utils_test
emacs vehicle/planner/decision3/search_setup/agent_manager/uap_agent_manager_test.cpp
bazel run --config=kraken --config=cuda preferred_path_evaluation_utils_test
gs
zz
gs
cd vehicle/planner/decision3/search_setup/get_on_road_abstractor
less get_on_road_abstractor_test
less BUILD 
bb --config=kraken --config=cuda get_on_road_abstractor_test
bazel run --config=kraken --config=cuda get_on_road_abstractor_test
bb --config=kraken --config=cuda get_on_road_abstractor_test
bazel run --config=kraken --config=cuda get_on_road_abstractor_test
git diff HEAD vehicle/planner/decision3/search_setup/get_on_road_abstractor/get_on_road_abstractor.cpp
ls
gs
gs
zzz
zz
gs
cd vehicle/common/roads/
ls
less BUILD 
bb --config=kraken lanes_test
bazel run --config=kraken lanes_test
gs
ls
less BUILD 
bb --config=kraken lane_seq_test
bazel run --config=kraken lane_seq_test
gs
zz
cd vehicle/planner/decision3/search_setup/agent_manager
ls
gs
less BUILD 
emac vehicle/planner/decision3/search_setup/agent_manager/uap_agent_manager_test.cpp
emacs vehicle/planner/decision3/search_setup/agent_manager/uap_agent_manager_test.cpp
bb --config=kraken --config=cuda uap_agent_manager_test
zz
git grep SolvedRoadGraphGenerator
ls
s
gs
git diff HEAD vehicle/planner/decision3/search_setup/agent_manager/BUILD
git reset HEAD vehicle/planner/decision3/search_setup/agent_manager/BUILD
gs
git diff 22
git checkout 22
gs
emacs vehicle/planner/decision3/search_setup/agent_manager/BUILD
emacs vehicle/planner/decision3/search_setup/agent_manager/uap_agent_manager_test.cpp
bazel run --config=kraken --config=cuda uap_agent_manager_test
gs
git diff HEAD vehicle/planner/decision3/search_setup/get_on_road_abstractor/get_on_road_abstractor.cpp
gs
git add 2
git add 22
cd ../get_on_road_abstractor/
ls
bazel test --config=kraken ...
gs
git diff HEAD vehicle/planner/decision3/search_setup/get_on_road_abstractor/get_on_road_abstractor.cpp
bazel test --config=kraken --config=cuda ...
gs
git checkout --ours .
git checkout --theirs .
gs
git diff HEAD 10
git checkout --ours .
git diff HEAD 10
gs
git reset HEAD 10
git reset HEAD 11
gs
git diff 20
gs
git add .
git stash
git stash apply
gs
zz
gs
git add .
cd vehicle/planner/decision3/search_setup/get_on_road_abstractor
gs
git reset HEAD .
git checkout .
gs
ls
less get_on_road_abstractor.cpp 
gs
bazel test --config=kraken --config=cuda ...
git stash apply
gs
zz
gs
git diff .
gs
git add .
ls
git log
gb
git revert --continue
gs
gi tdiff HEAD 3
git diff HEAD 3
gs
cd vehicle/planner/decision3/
ls
bb --config=kraken --config=cuda ...
gs
ls
zz
gs
ls
git grep updatePreferredPathOverlapEndS
ls
git commit
zz
zfixit
emacs vehicle/planner/decision3/teleop/translator/utils.cpp
gs
git diff 22
git add 22
gi tdiff 22
git diff 22
git add 22
git diff 24
git add 24
git checkout 22
git checkout 23
gs
ls
zfixit
gs
git checkout 22
git checkout 23
git commit
zfix
gs
git grep M_PI_2
zfix
less base/math/constant_division.h 
zz
zfixit
emacs vehicle/planner/decision3/teleop/translator/utils.cpp
cd base/
git grep M_PI_2
git grep "M_PI_2 ="
..
git grep "M_PI_2 ="
git grep "defing M_PI_2"
git grep "define M_PI_2"
git grep "constexpr M_PI_2"
zfixit
emacs vehicle/planner/decision3/teleop/translator/utils.cpp
zfixit
emacs vehicle/planner/decision3/teleop/translator/path_builder.cpp
gs
git add .
zfixit
cd vehicle/planner/decision3/teleop/test
ls
less BUILD 
bazel test --config=kraken --config=cuda cc_gpu_rdc_test_if_cuda
bazel test --config=kraken --config=cuda utils_test
gs
git diff 24
git add 24
bazel test --config=kraken --config=cuda teleop_path_builder_test
gs
git commit
git push
gb
git checkout  mmacdougall/ctgg_iso/090524
git grep use_lane_reference_bubble
emacs vehicle/planner/node/planner_configuration_common.pbtxt
gs
git diff 1
git add 1
git commit
gb
git checkout mmacdougall/ctgg_iso/090524-turnoff-lrb
git checkout -b mmacdougall/ctgg_iso/090524-turnoff-lrb
gs
git commit
git push
zz
zooxrc
ls
tmux a
ls
exit
ls
cd vehicle/launch/orchestration/
ls
cd groups/
ls
git grep RoadInfo
git grep Road
cd pla
ls
cd planner/
ls
less rg_lib.libsonnet 
less rg.libsonnet 
zz
l
cd vehicle/planner/
ls
cd no
cd ../perception/
ls
cd road_info_provider/
ls
ls
cd ..
ls
git grep Perception
cd lidar_localizer/
ls
less rg_lib.libsonnet 
..
ls
cd perception/
ls
less rg.libsonnet 
less rg_lib.libsonnet 
ls
less road_info_provider.h 
less road_info_provider_transport_params.pbtxt 
gb
git checkout mmacdougall/ctgg_iso/090524
git checkout -b mmacdougall/ctgg_iso/090524-no-hero-track-s-in-prefpath
ls
zz
ls
git grep updatePreferredPathOverlapEndS
emacs vehicle/common/roads/lane_seq.cpp
gs
git add 1
zz
zooxrc
ls
cd vehicle/common/roads/
ls
bb --config=kraken lane_seq
bazel test --config=kraken lane_seq_test
gs
git log
git commit
git push
gb
zz
zooxrc
gb
git checkout mmacdougall/ctgg_iso/090524
git checkout -b mmacdougall/ctgg_iso/090524-no-sign-flip-in-extlaneseq
git grep extendWithLaneSeq
emacs vehicle/planner/decision3/teleop/translator/utils.cpp
gs
git diff 1
git add 1
gb
zz
cd vehicle/planner/decision3/teleop/
ls
cd test/
l
less BUILD 
bb --config=kraken --config=cuda utils_test
git diff HEAD 1
emacs $e1
bazel test --config=kraken --config=cuda utils_test
gs
git diff 2
git add 2
git ocmmit
git commit
zz
gs
git add 2
zfixit
gs
git add .
bazel test --config=kraken --config=cuda utils_test
cd vehicle/planner/
ls
cd decision3/teleop/
ls
cd te
ls
cd test
ls
bazel test --config=kraken --config=cuda utils_test
gs
git commit
gs
zz
zooxrc
ls
git push
gb
git checkout -b develop/rsi
git fetch origin develop/rsi
git reset --hard origin/develop/rsi
ls
gb
cd vehicle/computer_hardware/utils/
ls
cd vehicle/computer_hardware/utils/
ls
less BUILD 
bb --config=kraken utils_test
bazel run --config=kraken utils_test
tmux
ls
emacs utils_test.cpp 
ls
cd testdata
ls
cd cgroup/
ls
cd unified/
ls
cd zoox
ls
cat cpu.weight
ls
echo 100 > cpu.weight 
ls
gs
ls
cat cpu.stat
ls
..
ls
..
ls
gs
zz
gs
git diff .
gs
git add .
zfixit
gs
less utils
less utils_test.cpp 
gb
git checkout -b shayan/SWAT-11339-fix-pseudofstest
gb
gs
git commit
git log
git push
gb
git log
git commit --amend
git push -f
zz
zooxrc
ls
cd vehicle/computer_hardware/cgroup/
ls
less cgroup.h
less cgroup.cpp 
ls
less compute_settings_py.cpp 
less compute_settings_test.py 
ls jsonnet
less jsonnet/cgroup.libsonnet 
ls proto
less proto/cgroup_config.proto 
ls
zz
zooxrc
ls
gb
git checkout mmacdougall/ctgg_iso/090524
ls
gb
ls
gb
zz
zooxrc
ls
gb
cd ..
ls
cd driving-test/
ls
gb
git checkout master
git fetch origin master
git checkout master
git fetch origin master
gb
git reset --hard origin/master
gb
ls
less README.md 
./scripts/setup/setup.sh dev
gb
git reset --hard origin/master
gs
git log
df -ah
ls
ls
cd argus/
l
tmux a
exit
exit
exit
exit
tmux
ls
./run.sh 
git log
gb
git checkout mmacdougall/ctgg_iso/090524
gb
git log
ls
tmux
ls
cd vehicle/planner/
l
git grep "planner/decision3/state"
ls
cd proto/
ls
..
cd decision3/
ls
less decision3.bzl 
cd ..
ls
cd node/decision/
ls
emacs zci.cpp 
ls
git grep DecisionPlannerData
..
git grep DecisionPlannerData
..
git grep DecisionPlannerData
git grep "message DecisionPlannerData"
ls
cd decision3/data/proto/
ls
emacs decision_planner_io.proto 
ls
git grep .LaneReferenceManagerDebug
..
ls
cd proto/
ls
less decision_planner_io.proto 
..
ls
cd mission/
ls
git grep .LaneReferenceManagerDebug
less lane_reference_manager.proto 
zz
cd vehicle/planner/decision3/search_setup/pr
cd vehicle/planner/decision3/search_setup/pro
cd vehicle/planner/decision3/search_setup/
ls
ls proto
cd proto
less lane_groups_state.
less lane_groups_state.proto 
zz
cd vehicle/planner/decision3
ls
cd search_setup/
ls
cd proto
ls
less lane_reference_generator_debug.proto 
zz
cd vehicle/planner/decision3/
l
cd search_setup/
ls
cd cost_to_go_graph/
ls
cd ctgg_behaviors/
ls
less route_based_lane_movements_behavior.h 
..
ls
git grep RouteBasedLaneMovementsBehavior
git grep "RouteBasedLaneMovementsBehavior("
..
git grep "RouteBasedLaneMovementsBehavior("
..
cd decision3/
ls
gb
git checkout -b feature/cost_to_go_graph
gb
git fetch origin feature/cost_to_go_graph
gb
git reset --hard origin/feature/cost_to_go_graph
ls
zz
cd vehicle/planner/decision3/search_setup/
ls
cd cost_to_go_graph/
ls
zz
cd vehicle/planner/decision3/search_setup/
ls
git grep "RouteBasedLaneMovementsBehavior("
gb
git log
ls
git grep "RouteBasedLaneMovementsBehavior("
cd ..
...
git grep "RouteBasedLaneMovementsBehavior("
git grep "RouteBasedLaneMovementsBehavior"
cd planner/decision3/search_setup/cost_to_go_graph
ls
emacs cost_to_go_graph_builder.cpp
git grep "contructStates("
git grep "constructStates("
emacs cost_to_go_graph_manager.cpp
cd ..
ls;
git grep "update("
git grep CostToGo
git grep CostToGoGraphManager
emacs search_setup.cpp 
git grep dispatchCostToGoGraphGeneration
emacs search_setup.cpp 
gb
clear
gb
zz
zooxrc
ls
gb
git log
ls
tmux a
exit
ls
git grep getAllLaneSequences
..
ls
git grep getAllLaneSequences
cd ..
git grep getAllLaneSequences
cd mission/
emacs lane_reference_manager.cpp 
ls
less lane_reference_manager.h 
git grep updateStore
less mission_master/mission_master.cpp 
emacs mission_master/mission_master.cpp 
zz
zooxrc
ls
gb
git checkout maseter
git checkout master
git fetch origin master
git reset --hard origin/master
cd core/tools/resource_usage/
ls
emacs resource_data.py 
git blame resource_data.py
ls
git grep cpuset_controller
emacs resource_data.py 
zz
zooxrc
cd vehicle/computer_hardware/cgroup/
ls
cd ../system_monitor/
ls
cd ..
ls
emacs system_metrics2.proto 
git grep PidMetric
emacs system_metrics2.proto 
ls
less BUILD 
bb --config=kraken report_usage
cat ~/.bash_extras 
cat ~/.bash_extras | less
bazel run --config=kraken report_usage -- --chum_uri=20240911T164343-kitt_312 --html ~/out.html
zz
cd core/tools/resource_usage/
ls
tmux
ls
emacs resource_data.py 
gs
git diff HEAD `
git diff HEAD 1
zz
zooxrc
ls
tmux a
gs
emacs resource_data.py 
gs
git diff 1
git add .
zz
ls
cd vehicle/launch/scripts/
ls
cd ..
ls
cd ..
ls
cd tools/scr
ls
cd tools/
ls
cd ..
ls
gs
zz
zooxrc
ls
cd core/tools/resource_usage/
ls
ls
git log
ls
zz
cd scripts/tools/compute_resources/
ls
git grep cpuset
emacs compute_resources.py 
s
gs
zz
gs
gb
ls
gb
git checkout -b shayan/SYSINT-6571-fix-rr
gs
git commit
gs
git push
cd scripts/tools/
ls
cd compute_resources/
ls
git grep "pid_metric"
less compute_resources.py 
exit
exit
exit
exit
ls
cd proto
git grep DecisionPlannerDebug
cd data/proto
ls
less decision_planner_io.proto 
gs
gb
git stash
ls
zz
gs
git og
ggs
cd core/tools/resource_usage/
ls
emacs resource_data_test.py 
bazel run --config=kraken report_usage -- --chum_uri=20240911T164343-kitt_312 --html ~/out.html
ls
less BUILD 
bazel run --config=kraken resource_data_test
gs
ls
git diff 1
git add .
git log
git commit --amend
git push -f
gb
git checkout feature/cost_to_go_graph
git stash pop
zz
zooxrc
ls
gs
exit
git diff 1
git add 1
emacs $e1
zz
ls
cd vehicle/planner/mission/
ls
git grep "new_entries"
less lane_reference_manager.cpp 
zz
ls
cd ~
ls
cd shayanco/
ls
gb
git branch
ls -la
cd dotfiles/
ls
ls -la
git branch
git push -f
ls
git branch
git push
cat ~/.ssh/id_rsa.pub 
git push
git remote -v
git push -f
gb
git log
git status
ls
cd ..
ls
rm -f dotfiles/
l
rm -fr dotfiles
ls
git clone git@github.com:SDarayan/dotfiles.git
ls
cd dotfiles/
ls
ls -la
cp ~/.tmux.conf .
cp -r ~/.tmux .
ls
cp ~/.profile .
gs
git diff .profile
git checkout 1
git diff 2
git status
git add .
ls
ls -la
cp ~/.bash* .
