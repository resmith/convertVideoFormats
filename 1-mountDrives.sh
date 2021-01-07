# NFS Mounts
sudo umount  /media/robert/Data/NFS_MyHomeMovies
sudo mount  -t nfs  -w -o async,rw 10.0.0.34:/volume1/homes/syncPCs/Drive/MyHomeMovies /media/robert/Data/NFS_MyHomeMovies
#sudo mount  -t nfs -v -w -o async,rw 10.0.0.34:/volume1/homes/syncPCs/Drive/MyHomeMovies /media/robert/Data/NFS_MyHomeMovies

# owner
# nosuid
# users

# sudo mount -t nfs 10.0.0.34:/volume1/homes/syncPCs/Drive/MyHomeMovies /media/robert/Data/MyHomeMoviesNFS
# sudo mount nfs 10.0.0.34:/volume1/homes/syncPCs/Drive/MyHomeMovies /media/robert/Data/MyHomeMoviesNFS
#
df
# findmnt
#
# SMB Mounts
#sudo mount 10.0.0.34:/volume1/homes/syncPCs/Drive/MyHomeMovies /media/robert/Data/MyHomeMovies
