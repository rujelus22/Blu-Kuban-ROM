.class public Lcom/sprint/w/installer/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    const-class v0, Lcom/sprint/w/installer/AlarmService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/AlarmService;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/AlarmService;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/sprint/w/installer/AlarmService;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprint/w/installer/AlarmService$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/AlarmService$1;-><init>(Lcom/sprint/w/installer/AlarmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    const/4 v0, 0x3

    return v0
.end method
