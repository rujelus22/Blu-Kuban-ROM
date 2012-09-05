.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->toggleShuffle()V

    .line 423
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uris : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storingUris : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->storingUris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->isShuffled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_66

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->doShuffle()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 430
    :cond_66
    return-void
.end method
