.class public Landroid/app/enterprise/remotecontrol/RemoteInjection;
.super Ljava/lang/Object;
.source "RemoteInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    .line 41
    return-void
.end method

.method public static getInstance()Landroid/app/enterprise/remotecontrol/RemoteInjection;
    .registers 2

    .prologue
    .line 29
    sget-object v1, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_3
    sget-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;

    invoke-direct {v0}, Landroid/app/enterprise/remotecontrol/RemoteInjection;-><init>()V

    sput-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

    .line 33
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 34
    sget-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

    return-object v0

    .line 33
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 7
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 58
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    if-eqz v1, :cond_24

    .line 60
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/remotecontrol/IRemoteInjection;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 65
    :goto_a
    return v1

    .line 61
    :catch_b
    move-exception v0

    .line 62
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting key event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_24
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 7
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 83
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    if-eqz v1, :cond_24

    .line 85
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/remotecontrol/IRemoteInjection;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 90
    :goto_a
    return v1

    .line 86
    :catch_b
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting pointer event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_24
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 7
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 108
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    if-eqz v1, :cond_24

    .line 110
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/remotecontrol/IRemoteInjection;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 115
    :goto_a
    return v1

    .line 111
    :catch_b
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting trackball event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_24
    const/4 v1, 0x0

    goto :goto_a
.end method
