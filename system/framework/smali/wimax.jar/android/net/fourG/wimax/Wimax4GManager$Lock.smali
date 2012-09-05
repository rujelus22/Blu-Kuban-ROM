.class public Landroid/net/fourG/wimax/Wimax4GManager$Lock;
.super Landroid/net/fourG/net4GManager$Lock;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Lock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/net/fourG/wimax/Wimax4GManager;


# direct methods
.method private constructor <init>(Landroid/net/fourG/wimax/Wimax4GManager;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "lockType"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1088
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-direct {p0, p1}, Landroid/net/fourG/net4GManager$Lock;-><init>(Landroid/net/fourG/net4GManager;)V

    .line 1089
    iput-object p3, p0, Landroid/net/fourG/net4GManager$Lock;->mTag:Ljava/lang/String;

    .line 1090
    iput p2, p0, Landroid/net/fourG/net4GManager$Lock;->mLockType:I

    .line 1091
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    .line 1092
    iput v1, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCount:I

    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCounted:Z

    .line 1094
    iput-boolean v1, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z

    .line 1095
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/fourG/wimax/Wimax4GManager;ILjava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1085
    invoke-direct {p0, p1, p2, p3}, Landroid/net/fourG/wimax/Wimax4GManager$Lock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 6

    .prologue
    .line 1109
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1110
    :try_start_3
    iget-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCounted:Z

    if-eqz v0, :cond_3f

    iget v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_4b

    if-lez v0, :cond_3d

    .line 1112
    :goto_f
    :try_start_f
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    iget v3, p0, Landroid/net/fourG/net4GManager$Lock;->mLockType:I

    iget-object v4, p0, Landroid/net/fourG/net4GManager$Lock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Landroid/net/fourG/wimax/IWimax4GManager;->acquireLock(Landroid/os/IBinder;ILjava/lang/String;)Z

    .line 1113
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_39

    .line 1114
    :try_start_1d
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    #getter for: Landroid/net/fourG/net4GManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->access$000(Landroid/net/fourG/wimax/Wimax4GManager;)I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_44

    .line 1115
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v3}, Landroid/net/fourG/wimax/IWimax4GManager;->releaseLock(Landroid/os/IBinder;)Z

    .line 1116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of Wimax locks"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :catchall_36
    move-exception v0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_39} :catch_39

    .line 1121
    :catch_39
    move-exception v0

    .line 1123
    :goto_3a
    const/4 v0, 0x1

    :try_start_3b
    iput-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z

    .line 1125
    :cond_3d
    monitor-exit v1

    .line 1126
    return-void

    .line 1110
    :cond_3f
    iget-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_4b

    if-nez v0, :cond_3d

    goto :goto_f

    .line 1119
    :cond_44
    :try_start_44
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->access$108(Landroid/net/fourG/wimax/Wimax4GManager;)I

    .line 1120
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_36

    goto :goto_3a

    .line 1125
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-super {p0}, Landroid/net/fourG/net4GManager$Lock;->finalize()V

    .line 1201
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1202
    :try_start_6
    iget-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_21

    if-eqz v0, :cond_1a

    .line 1204
    :try_start_a
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/net/fourG/wimax/IWimax4GManager;->releaseLock(Landroid/os/IBinder;)Z

    .line 1205
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_21
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_1f

    .line 1206
    :try_start_14
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->access$310(Landroid/net/fourG/wimax/Wimax4GManager;)I

    .line 1207
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    .line 1211
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_21

    .line 1212
    return-void

    .line 1207
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 1208
    :catch_1f
    move-exception v0

    goto :goto_1a

    .line 1211
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 1179
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1180
    :try_start_3
    iget-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1181
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public release()V
    .registers 5

    .prologue
    .line 1141
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1142
    :try_start_3
    iget-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCounted:Z

    if-eqz v0, :cond_44

    iget v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_41

    if-nez v0, :cond_22

    .line 1144
    :goto_f
    :try_start_f
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/net/fourG/wimax/IWimax4GManager;->releaseLock(Landroid/os/IBinder;)Z

    .line 1145
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_4c

    .line 1146
    :try_start_19
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->access$210(Landroid/net/fourG/wimax/Wimax4GManager;)I

    .line 1147
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_49

    .line 1150
    :goto_1f
    const/4 v0, 0x0

    :try_start_20
    iput-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z

    .line 1152
    :cond_22
    iget v0, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCount:I

    if-gez v0, :cond_4e

    .line 1153
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WimaxLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/net4GManager$Lock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_41

    throw v0

    .line 1142
    :cond_44
    :try_start_44
    iget-boolean v0, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_41

    if-eqz v0, :cond_22

    goto :goto_f

    .line 1147
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 1148
    :catch_4c
    move-exception v0

    goto :goto_1f

    .line 1155
    :cond_4e
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_41

    .line 1156
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 1170
    iput-boolean p1, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCounted:Z

    .line 1171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1186
    iget-object v4, p0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 1187
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/fourG/net4GManager$Lock;->mHeld:Z

    if-eqz v3, :cond_53

    const-string v1, "held; "

    .line 1189
    .local v1, s2:Ljava/lang/String;
    :goto_11
    iget-boolean v3, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCounted:Z

    if-eqz v3, :cond_56

    .line 1190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/fourG/net4GManager$Lock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, s3:Ljava/lang/String;
    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 1188
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_53
    const-string v1, ""

    goto :goto_11

    .line 1192
    .restart local v1       #s2:Ljava/lang/String;
    :cond_56
    const-string v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_2a

    .line 1195
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_59
    move-exception v3

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v3
.end method
