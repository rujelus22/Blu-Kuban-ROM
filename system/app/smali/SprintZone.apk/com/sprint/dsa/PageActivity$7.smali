.class Lcom/sprint/dsa/PageActivity$7;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$7;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 184
    const-wide/16 v1, 0x5dc

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 186
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$7;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$7;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v2}, Lcom/sprint/dsa/PageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f05

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/dsa/PageActivity;->mp:Landroid/media/MediaPlayer;

    .line 187
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$7;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v1, v1, Lcom/sprint/dsa/PageActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 188
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$7;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v1, v1, Lcom/sprint/dsa/PageActivity;->mp:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$7;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v2, v2, Lcom/sprint/dsa/PageActivity;->onCompleteAudioListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    .line 193
    :goto_27
    return-void

    .line 189
    :catch_28
    move-exception v0

    .line 190
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$7;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v1}, Lcom/sprint/dsa/PageActivity;->resetSound()V

    .line 191
    const-string v1, "SprintZone_PageActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method
