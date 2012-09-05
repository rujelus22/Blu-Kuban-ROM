.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;
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
    .line 439
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMutiFiles()Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    sget-boolean v1, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->autoPlayStateToggle(Z)V

    .line 444
    sget-boolean v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    if-nez v0, :cond_2c

    .line 445
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity,, setPlayClickListener,, mAutoPlay == false,, removeMessages!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handlePlayOrPause()V

    .line 453
    return-void

    .line 448
    :cond_2c
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity,, setPlayClickListener,, mAutoPlay == true,, play()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
