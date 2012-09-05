.class public Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothPbapAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# instance fields
.field private mAuthCancelled:Z

.field private mCallback:Landroid/os/Handler;

.field private mChallenged:Z

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 5
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "BluetoothPbapAuthenticator"

    const-string v1, "BluetoothPbapAuthenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mCallback:Landroid/os/Handler;

    .line 61
    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private waitUserConfirmation()V
    .registers 5

    .prologue
    .line 82
    const-string v2, "BluetoothPbapAuthenticator"

    const-string v3, "waitUserConfirmation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mCallback:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 84
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x138b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 85
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 86
    monitor-enter p0

    .line 87
    :goto_15
    :try_start_15
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2a

    if-nez v2, :cond_2d

    .line 89
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_15

    .line 90
    :catch_21
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_22
    const-string v2, "BluetoothPbapAuthenticator"

    const-string v3, "Interrupted while waiting on isChalled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 94
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_2a
    move-exception v2

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v2

    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 95
    return-void
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .registers 8
    .parameter "description"
    .parameter "isUserIdRequired"
    .parameter "isFullAccess"

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string v2, "BluetoothPbapAuthenticator"

    const-string v3, "onAuthenticationChallenge"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->waitUserConfirmation()V

    .line 101
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    .line 102
    new-instance v0, Ljavax/obex/PasswordAuthentication;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    .line 105
    :goto_22
    return-object v0

    :cond_23
    move-object v0, v1

    goto :goto_22
.end method

.method public onAuthenticationResponse([B)[B
    .registers 5
    .parameter "userName"

    .prologue
    .line 110
    const-string v1, "BluetoothPbapAuthenticator"

    const-string v2, "onAuthenticationResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, b:[B
    return-object v0
.end method

.method public final declared-synchronized setCancelled(Z)V
    .registers 4
    .parameter "bool"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothPbapAuthenticator"

    const-string v1, "setCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setChallenged(Z)V
    .registers 4
    .parameter "bool"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothPbapAuthenticator"

    const-string v1, "setChallenged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSessionKey(Ljava/lang/String;)V
    .registers 4
    .parameter "string"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothPbapAuthenticator"

    const-string v1, "setSessionKey"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
