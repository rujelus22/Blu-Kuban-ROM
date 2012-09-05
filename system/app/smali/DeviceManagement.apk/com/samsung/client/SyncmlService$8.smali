.class Lcom/samsung/client/SyncmlService$8;
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
    .line 1394
    iput-object p1, p0, Lcom/samsung/client/SyncmlService$8;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 1403
    const-string v0, "SyncmlService"

    const-string v1, "sessionResponseTimer onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const-string v0, "SyncmlService"

    const-string v1, "sessionResponseTimer :onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/4 v0, 0x7

    sput v0, Lcom/samsung/client/SyncmlService;->sessStatus:I

    .line 1406
    const/16 v0, 0x8

    sput v0, Lcom/samsung/client/SyncmlService;->sessErr:I

    .line 1407
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/SyncmlService;->sessUpd:I

    .line 1408
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$8;->this$0:Lcom/samsung/client/SyncmlService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->postEvent(I)V

    .line 1409
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 1398
    const-string v0, "SyncmlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sessionResponseTimer :onTick: === "

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

    .line 1399
    return-void
.end method
