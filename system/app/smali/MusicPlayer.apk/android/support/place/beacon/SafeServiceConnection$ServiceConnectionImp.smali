.class Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/beacon/SafeServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionImp"
.end annotation


# instance fields
.field private mContextForDelayedUnbind:Landroid/content/Context;

.field private mFlags:I

.field private mService:Landroid/content/Intent;

.field private mState:I

.field final synthetic this$0:Landroid/support/place/beacon/SafeServiceConnection;


# direct methods
.method public constructor <init>(Landroid/support/place/beacon/SafeServiceConnection;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->this$0:Landroid/support/place/beacon/SafeServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    .line 76
    return-void
.end method

.method private reportBadState()V
    .registers 4

    .prologue
    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected method for state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 7
    .parameter "context"
    .parameter "service"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_3
    iget v2, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    packed-switch v2, :pswitch_data_4c

    .line 110
    :pswitch_8
    invoke-direct {p0}, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->reportBadState()V

    .line 111
    monitor-exit p0

    move v0, v1

    :goto_d
    return v0

    .line 82
    :pswitch_e
    iget-object v1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mService:Landroid/content/Intent;

    if-nez v1, :cond_27

    .line 86
    iput-object p2, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mService:Landroid/content/Intent;

    .line 87
    iput p3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mFlags:I

    .line 97
    :cond_16
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    .line 98
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 99
    .local v0, bound:Z
    if-nez v0, :cond_22

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    .line 102
    :cond_22
    monitor-exit p0

    goto :goto_d

    .line 113
    .end local v0           #bound:Z
    :catchall_24
    move-exception v1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1

    .line 89
    :cond_27
    :try_start_27
    iget-object v1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mService:Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service must be equivalent for every call to bindService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_37
    iget v1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mFlags:I

    if-eq v1, p3, :cond_16

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "flags must be equivalent for every call to bindService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :pswitch_43
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mContextForDelayedUnbind:Landroid/content/Context;

    .line 108
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_24

    goto :goto_d

    .line 80
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_8
        :pswitch_8
        :pswitch_43
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x2

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, doDelayedUnbind:Z
    const/4 v0, 0x0

    .line 149
    .local v0, contextForDelayedUnbind:Landroid/content/Context;
    monitor-enter p0

    .line 150
    :try_start_4
    iget v3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    packed-switch v3, :pswitch_data_3e

    .line 165
    invoke-direct {p0}, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->reportBadState()V

    .line 168
    :goto_c
    :pswitch_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_25

    .line 171
    iget-object v3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->this$0:Landroid/support/place/beacon/SafeServiceConnection;

    invoke-virtual {v3, p1, p2}, Landroid/support/place/beacon/SafeServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 173
    if-eqz v1, :cond_20

    .line 174
    monitor-enter p0

    .line 177
    :try_start_15
    iget v3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    if-ne v3, v4, :cond_1f

    .line 178
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3b

    .line 180
    :try_start_1c
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_3b
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1f} :catch_32

    .line 202
    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_3b

    .line 204
    :cond_20
    return-void

    .line 152
    :pswitch_21
    const/4 v3, 0x2

    :try_start_22
    iput v3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I

    goto :goto_c

    .line 168
    :catchall_25
    move-exception v3

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_25

    throw v3

    .line 159
    :pswitch_28
    const/4 v1, 0x1

    .line 160
    :try_start_29
    iget-object v0, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mContextForDelayedUnbind:Landroid/content/Context;

    .line 161
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mContextForDelayedUnbind:Landroid/content/Context;

    .line 162
    const/4 v3, 0x2

    iput v3, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->mState:I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_25

    goto :goto_c

    .line 181
    :catch_32
    move-exception v2

    .line 199
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_33
    const-string v3, "SafeServiceConnection"

    const-string v4, "Unable to perform delayed unbind."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 202
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_3b
    move-exception v3

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw v3

    .line 150
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_c
        :pswitch_28
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->this$0:Landroid/support/place/beacon/SafeServiceConnection;

    invoke-virtual {v0, p1}, Landroid/support/place/beacon/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 220
    return-void
.end method
