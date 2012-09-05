.class Lcom/google/android/music/jumper/MusicPreferences$5;
.super Lcom/google/android/music/IPreferenceChangeListener$Stub;
.source "MusicPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/jumper/MusicPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 2
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Lcom/google/android/music/IPreferenceChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBooleanChanged(Ljava/lang/String;Z)V
    .registers 6
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    monitor-enter v1

    .line 1033
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    .line 1035
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->access$600(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;)V

    .line 1036
    return-void

    .line 1034
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onIntChanged(Ljava/lang/String;I)V
    .registers 6
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    monitor-enter v1

    .line 1026
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    .line 1028
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->access$600(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;)V

    .line 1029
    return-void

    .line 1027
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onLongChanged(Ljava/lang/String;J)V
    .registers 7
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    monitor-enter v1

    .line 1019
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    .line 1021
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->access$600(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;)V

    .line 1022
    return-void

    .line 1020
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onPreferenceRemoved(Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    monitor-enter v1

    .line 1040
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 1042
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->access$600(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;)V

    .line 1043
    return-void

    .line 1041
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onStringChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    monitor-enter v1

    .line 1012
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 1014
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$5;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->access$600(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;)V

    .line 1015
    return-void

    .line 1013
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
