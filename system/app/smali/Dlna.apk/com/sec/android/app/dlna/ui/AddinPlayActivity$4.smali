.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$4;
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
    .line 456
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMutiFiles()Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleNext()V
    :try_end_19
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 467
    :cond_19
    :goto_19
    return-void

    .line 463
    :catch_1a
    move-exception v0

    .line 465
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_19
.end method
