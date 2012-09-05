.class public Lcom/sprint/w/installer/service/D2CPackService;
.super Landroid/app/Service;
.source "D2CPackService.java"


# static fields
.field private static log:Lcom/sprint/id/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/sprint/w/installer/service/D2CPackService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/service/D2CPackService;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/sprint/w/installer/service/D2CPackService;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method private installD2CPack(I)V
    .registers 3
    .parameter "startId"

    .prologue
    .line 30
    new-instance v0, Lcom/sprint/w/installer/service/D2CPackService$1;

    invoke-direct {v0, p0, p1}, Lcom/sprint/w/installer/service/D2CPackService$1;-><init>(Lcom/sprint/w/installer/service/D2CPackService;I)V

    .line 75
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 24
    invoke-direct {p0, p3}, Lcom/sprint/w/installer/service/D2CPackService;->installD2CPack(I)V

    .line 26
    const/4 v0, 0x3

    return v0
.end method
