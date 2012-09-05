.class Lcom/arcsoft/quickview/QuickViewActivity$19;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Lcom/arcsoft/quickview/MediaList$OnMediaListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->initMediaList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I)V
    .registers 6
    .parameter "notifyCode"

    .prologue
    const v3, 0x7f040013

    const/4 v2, 0x1

    .line 1600
    packed-switch p1, :pswitch_data_ee

    .line 1656
    :cond_7
    :goto_7
    return-void

    .line 1602
    :pswitch_8
    const-string v0, "QuickViewActivity:"

    const-string v1, "Thread LIST_CREATE_STARTED"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1605
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/arcsoft/widget/QuickView;->setDataReady(Z)V

    goto :goto_7

    .line 1609
    :pswitch_22
    const-string v0, "QuickViewActivity:"

    const-string v1, "Thread LIST_CREATE_FINISHED"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2400(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1612
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/quickview/MediaList;->getCount()I

    move-result v0

    if-gtz v0, :cond_67

    .line 1613
    const-string v0, "QuickViewActivity:"

    const-string v1, "No file found!"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2500(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/ToastMgr;

    move-result-object v0

    if-nez v0, :cond_56

    .line 1616
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    new-instance v1, Lcom/arcsoft/widget/ToastMgr;

    invoke-direct {v1}, Lcom/arcsoft/widget/ToastMgr;-><init>()V

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2502(Lcom/arcsoft/quickview/QuickViewActivity;Lcom/arcsoft/widget/ToastMgr;)Lcom/arcsoft/widget/ToastMgr;

    .line 1617
    :cond_56
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2500(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/ToastMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/arcsoft/widget/ToastMgr;->showQuickMessage(Landroid/content/Context;IIZ)V

    .line 1618
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    goto :goto_7

    .line 1622
    :cond_67
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2600(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 1623
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;
    invoke-static {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2600(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/quickview/MediaList;->setCurrent(Landroid/net/Uri;)V

    .line 1624
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mUriStartFile:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2602(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1627
    :cond_84
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    if-nez v0, :cond_93

    .line 1628
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->resetView()V
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2700(Lcom/arcsoft/quickview/QuickViewActivity;)V

    goto/16 :goto_7

    .line 1631
    :cond_93
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/arcsoft/widget/QuickView;->setDataReady(Z)V

    .line 1632
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/widget/QuickView;->reloadFilelist()V

    goto/16 :goto_7

    .line 1639
    :pswitch_a7
    const-string v0, "QuickViewActivity:"

    const-string v1, "LIST_CREATE_CANCELED"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsPaused:Z
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2400(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1643
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/quickview/MediaList;->getCount()I

    move-result v0

    if-gtz v0, :cond_7

    .line 1644
    const-string v0, "QuickViewActivity:"

    const-string v1, "No file found"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2500(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/ToastMgr;

    move-result-object v0

    if-nez v0, :cond_db

    .line 1646
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    new-instance v1, Lcom/arcsoft/widget/ToastMgr;

    invoke-direct {v1}, Lcom/arcsoft/widget/ToastMgr;-><init>()V

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2502(Lcom/arcsoft/quickview/QuickViewActivity;Lcom/arcsoft/widget/ToastMgr;)Lcom/arcsoft/widget/ToastMgr;

    .line 1647
    :cond_db
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mToastMgr:Lcom/arcsoft/widget/ToastMgr;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2500(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/ToastMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/arcsoft/widget/ToastMgr;->showQuickMessage(Landroid/content/Context;IIZ)V

    .line 1648
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$19;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    goto/16 :goto_7

    .line 1600
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_8
        :pswitch_22
        :pswitch_a7
    .end packed-switch
.end method
