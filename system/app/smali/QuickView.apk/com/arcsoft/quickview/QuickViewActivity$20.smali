.class Lcom/arcsoft/quickview/QuickViewActivity$20;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->initPlayButton()V
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
    .line 1724
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const v6, 0x7f040017

    const/4 v5, 0x0

    .line 1728
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsDragging:Z
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2800(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$000(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1758
    :cond_14
    :goto_14
    return-void

    .line 1733
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1734
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1736
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1737
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1739
    :cond_2f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1741
    if-nez v2, :cond_3e

    .line 1742
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 1746
    :cond_3e
    :try_start_3e
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1600(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/CustomizedMenu;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1747
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1600(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/CustomizedMenu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    .line 1748
    :cond_50
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 1749
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/QuickView;->hideThumbnail()V

    .line 1751
    :cond_61
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v3, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_66
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_66} :catch_67

    goto :goto_14

    .line 1752
    :catch_67
    move-exception v0

    .line 1753
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$20;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1754
    const-string v3, "QuickViewActivity:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gallery play video error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
