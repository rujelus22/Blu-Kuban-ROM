.class public Lcom/wssnps/smlNpsService;
.super Landroid/app/Service;
.source "smlNpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/smlNpsService$NpsServiceTask;
    }
.end annotation


# static fields
.field public static ModleDefine:Lcom/wssnps/smlModelDefine;

.field public static dsServerSocket:Ljava/net/ServerSocket;

.field public static m_context:Landroid/content/Context;

.field static m_thread1:Ljava/lang/Thread;

.field private static socket:Ljava/net/Socket;


# instance fields
.field binder:Landroid/os/Binder;

.field m_thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    .line 21
    sput-object v0, Lcom/wssnps/smlNpsService;->socket:Ljava/net/Socket;

    .line 23
    sput-object v0, Lcom/wssnps/smlNpsService;->m_thread1:Ljava/lang/Thread;

    .line 24
    sput-object v0, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;

    .line 27
    new-instance v0, Lcom/wssnps/smlModelDefine;

    invoke-direct {v0}, Lcom/wssnps/smlModelDefine;-><init>()V

    sput-object v0, Lcom/wssnps/smlNpsService;->ModleDefine:Lcom/wssnps/smlModelDefine;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/smlNpsService;->m_thread:Ljava/lang/Thread;

    .line 26
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/wssnps/smlNpsService;->binder:Landroid/os/Binder;

    .line 76
    return-void
.end method

.method static synthetic access$000()Ljava/net/Socket;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/wssnps/smlNpsService;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$002(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    sput-object p0, Lcom/wssnps/smlNpsService;->socket:Ljava/net/Socket;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wssnps/smlNpsService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x2

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    sput-object p0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wssnps/smlNpsService$NpsServiceTask;

    invoke-direct {v1}, Lcom/wssnps/smlNpsService$NpsServiceTask;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/wssnps/smlNpsService;->m_thread:Ljava/lang/Thread;

    .line 44
    iget-object v0, p0, Lcom/wssnps/smlNpsService;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 48
    const-string v1, "OnDestroy"

    invoke-static {v2, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 50
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssnps/smlModelDefine;->nps_wakeLock(I)V

    .line 53
    sget-object v1, Lcom/wssnps/smlNpsService;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1a

    .line 56
    const/4 v1, 0x2

    :try_start_10
    const-string v2, "socket close"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 57
    sget-object v1, Lcom/wssnps/smlNpsService;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_2d

    .line 64
    :cond_1a
    :goto_1a
    sget-object v1, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_29

    .line 67
    const/4 v1, 0x2

    :try_start_1f
    const-string v2, "dsServerSocket close"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 68
    sget-object v1, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_49

    .line 73
    :cond_29
    :goto_29
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    return-void

    .line 59
    :catch_2d
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1a

    .line 69
    .end local v0           #e:Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_29
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 36
    const/4 v0, 0x2

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 37
    return-void
.end method
