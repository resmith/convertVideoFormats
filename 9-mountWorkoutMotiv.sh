sudo umount  /media/robert/Data/NFS_ZWorkoutMotivation
sudo umount  /media/robert/Data/ZWorkoutMotivationNFS
sudo mount  -t nfs -w -o async,rw 10.0.0.34:/volume1/ZWorkoutMotivation /media/robert/Data/NFS_ZWorkoutMotivation
df
