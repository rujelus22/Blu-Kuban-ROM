.class Lcom/samsung/client/SyncmlService$7;
.super Landroid/os/CountDownTimer;
.source "SyncmlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/SyncmlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/SyncmlService;


# direct methods
.method constructor <init>(Lcom/samsung/client/SyncmlService;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/samsung/client/SyncmlService$7;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 1386
    const-string v0, "SyncmlService"

    const-string v1, "DelayTimer:onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$7;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->checkStart()V
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$1300(Lcom/samsung/client/SyncmlService;)V

    .line 1388
    const-string v0, "SyncmlService"

    const-string v1, "checkStart ======"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 1382
    const-string v0, "SyncmlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DelayTimer:onTick: =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " left"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void
.end method
