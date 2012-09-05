.class Lcom/sprint/w/installer/PackDetails$8;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Lcom/sprint/w/installer/DownloadService$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
    .registers 5
    .parameter "sp"
    .parameter "packFilePath"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 542
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    new-instance v1, Lcom/sprint/w/installer/PackDetails$8$3;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackDetails$8$3;-><init>(Lcom/sprint/w/installer/PackDetails$8;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 552
    :cond_12
    return-void
.end method

.method public downloadFailed()V
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 529
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    new-instance v1, Lcom/sprint/w/installer/PackDetails$8$2;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackDetails$8$2;-><init>(Lcom/sprint/w/installer/PackDetails$8;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 537
    :cond_12
    return-void
.end method

.method public progressChanged(I)V
    .registers 4
    .parameter "percentComplete"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 517
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    new-instance v1, Lcom/sprint/w/installer/PackDetails$8$1;

    invoke-direct {v1, p0, p1}, Lcom/sprint/w/installer/PackDetails$8$1;-><init>(Lcom/sprint/w/installer/PackDetails$8;I)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 524
    :cond_12
    return-void
.end method
