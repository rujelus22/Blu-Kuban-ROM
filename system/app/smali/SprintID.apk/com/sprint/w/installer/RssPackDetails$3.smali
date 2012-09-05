.class Lcom/sprint/w/installer/RssPackDetails$3;
.super Ljava/lang/Object;
.source "RssPackDetails.java"

# interfaces
.implements Lcom/sprint/w/installer/DownloadService$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
    .registers 5
    .parameter "sp"
    .parameter "packFilePath"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssPackDetails;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 246
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    new-instance v1, Lcom/sprint/w/installer/RssPackDetails$3$3;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/RssPackDetails$3$3;-><init>(Lcom/sprint/w/installer/RssPackDetails$3;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssPackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    :cond_12
    return-void
.end method

.method public downloadFailed()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssPackDetails;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 231
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    new-instance v1, Lcom/sprint/w/installer/RssPackDetails$3$2;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/RssPackDetails$3$2;-><init>(Lcom/sprint/w/installer/RssPackDetails$3;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssPackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    :cond_12
    return-void
.end method

.method public progressChanged(I)V
    .registers 4
    .parameter "percentComplete"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssPackDetails;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 211
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    new-instance v1, Lcom/sprint/w/installer/RssPackDetails$3$1;

    invoke-direct {v1, p0, p1}, Lcom/sprint/w/installer/RssPackDetails$3$1;-><init>(Lcom/sprint/w/installer/RssPackDetails$3;I)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssPackDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    :cond_12
    return-void
.end method
