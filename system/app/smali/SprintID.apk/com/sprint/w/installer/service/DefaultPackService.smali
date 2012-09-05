.class public Lcom/sprint/w/installer/service/DefaultPackService;
.super Landroid/app/Service;
.source "DefaultPackService.java"


# static fields
.field public static final ACTION_ERROR:Ljava/lang/String; = "com.sprint.w.installer.service.DefaultPackService.ACTION_ERROR"

.field public static final ACTION_INSTALL:Ljava/lang/String; = "ACTION_INSTALL"

.field public static final ACTION_VERIFY:Ljava/lang/String; = "ACTION_VERIFY"

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field mD2CCheckRetry:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/service/DefaultPackService;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/service/DefaultPackService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/service/DefaultPackService;->installDefaultPack(IZ)V

    return-void
.end method

.method static synthetic access$100()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/sprint/w/installer/service/DefaultPackService;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method private installDefaultPack(IZ)V
    .registers 4
    .parameter "startId"
    .parameter "reinstall"

    .prologue
    .line 61
    new-instance v0, Lcom/sprint/w/installer/service/DefaultPackService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sprint/w/installer/service/DefaultPackService$2;-><init>(Lcom/sprint/w/installer/service/DefaultPackService;IZ)V

    .line 119
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method private verifyDefaultPack(IZ)V
    .registers 7
    .parameter "startId"
    .parameter "reinstall"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->isDefaultPackInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {p0}, Lcom/sprint/w/installer/DownloadService;->hasDefaultPackToInstall(Landroid/content/Context;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v1

    if-nez v1, :cond_36

    .line 42
    sget-object v2, Lcom/sprint/w/installer/service/DefaultPackService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_37

    const-string v1, "reinstall"

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " the default pack."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/sprint/w/installer/service/DefaultPackService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sprint/w/installer/service/DefaultPackService$1;-><init>(Lcom/sprint/w/installer/service/DefaultPackService;IZ)V

    .line 53
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    .end local v0           #t:Ljava/lang/Thread;
    :cond_36
    return-void

    .line 42
    :cond_37
    const-string v1, "install"

    goto :goto_1d
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 30
    const-string v0, "ACTION_INSTALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/sprint/w/installer/service/DefaultPackService;->verifyDefaultPack(IZ)V

    .line 37
    :cond_10
    :goto_10
    const/4 v0, 0x3

    return v0

    .line 32
    :cond_12
    const-string v0, "ACTION_VERIFY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/sprint/w/installer/service/DefaultPackService;->verifyDefaultPack(IZ)V

    goto :goto_10
.end method
