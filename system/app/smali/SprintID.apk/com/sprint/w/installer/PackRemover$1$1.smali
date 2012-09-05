.class Lcom/sprint/w/installer/PackRemover$1$1;
.super Ljava/lang/Thread;
.source "PackRemover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackRemover$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackRemover$1;

.field final synthetic val$info:Lcom/sprint/w/installer/PackInfo;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackRemover$1;Lcom/sprint/w/installer/PackInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sprint/w/installer/PackRemover$1$1;->this$1:Lcom/sprint/w/installer/PackRemover$1;

    iput-object p2, p0, Lcom/sprint/w/installer/PackRemover$1$1;->val$info:Lcom/sprint/w/installer/PackInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$1$1;->this$1:Lcom/sprint/w/installer/PackRemover$1;

    iget-object v0, v0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v1, p0, Lcom/sprint/w/installer/PackRemover$1$1;->this$1:Lcom/sprint/w/installer/PackRemover$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackRemover$1;->val$packId:Ljava/lang/String;

    #calls: Lcom/sprint/w/installer/PackRemover;->removePackContent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackRemover;->access$000(Lcom/sprint/w/installer/PackRemover;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$1$1;->val$info:Lcom/sprint/w/installer/PackInfo;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$1$1;->val$info:Lcom/sprint/w/installer/PackInfo;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$1$1;->val$info:Lcom/sprint/w/installer/PackInfo;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sprint/w/installer/PackRemover$1$1;->this$1:Lcom/sprint/w/installer/PackRemover$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackRemover;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1$1;->val$info:Lcom/sprint/w/installer/PackInfo;

    iget-object v3, v3, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 66
    :cond_50
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    iget-object v1, p0, Lcom/sprint/w/installer/PackRemover$1$1;->this$1:Lcom/sprint/w/installer/PackRemover$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    invoke-direct {v0, v1}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sprint/w/installer/PackRemover$1$1;->val$info:Lcom/sprint/w/installer/PackInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackRemoved(Lcom/sprint/w/installer/PackInfo;Z)V

    .line 67
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$1$1;->this$1:Lcom/sprint/w/installer/PackRemover$1;

    iget-object v0, v0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v1, p0, Lcom/sprint/w/installer/PackRemover$1$1;->this$1:Lcom/sprint/w/installer/PackRemover$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v1, v1, Lcom/sprint/w/installer/PackRemover;->mDone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackRemover;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
