.class Lcom/samsung/client/DMApp$13;
.super Landroid/os/CountDownTimer;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method constructor <init>(Lcom/samsung/client/DMApp;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3235
    iput-object p1, p0, Lcom/samsung/client/DMApp$13;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 3244
    const-string v1, "DMApp"

    const-string v2, "cancelDldSessionTimer onFinish"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    :try_start_7
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3247
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/client/ISyncmlService;->cancelDownload(I)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    .line 3252
    :cond_15
    :goto_15
    return-void

    .line 3249
    :catch_16
    move-exception v0

    .line 3250
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 3239
    const-string v0, "DMApp"

    const-string v1, "cancelDldSessionTimer onTick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    return-void
.end method