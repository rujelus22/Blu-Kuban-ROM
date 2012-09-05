.class Lcom/arcsoft/quickview/QuickViewActivity$9;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity;
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
    .line 1048
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoHideMenu()V
    .registers 1

    .prologue
    .line 1106
    return-void
.end method

.method public onMenuFocusChanged()V
    .registers 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1111
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/widget/QuickView;->cancelAutoHide()V

    .line 1112
    :cond_11
    return-void
.end method

.method public onMenuItemSelected(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 1052
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v4, 0x1

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z
    invoke-static {v3, v4}, Lcom/arcsoft/quickview/QuickViewActivity;->access$002(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 1053
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->resetTimer()V

    .line 1054
    packed-switch p1, :pswitch_data_8a

    .line 1100
    :goto_f
    return-void

    .line 1057
    :pswitch_10
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsSNS:Z
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$700(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1058
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.showhistory"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v1, i:Landroid/content/Intent;
    :try_start_1f
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v3, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_f

    .line 1061
    :catch_25
    move-exception v0

    .line 1062
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 1065
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:Landroid/content/Intent;
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/quickview/MediaList;->getCurrentMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1067
    .local v2, strMimeType:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v4}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1077
    :try_start_4d
    iget-object v4, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v5, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$200(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const v3, 0x7f04000e

    :goto_5c
    invoke-virtual {v5, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4d .. :try_end_67} :catch_68

    goto :goto_f

    .line 1081
    :catch_68
    move-exception v0

    .line 1082
    .restart local v0       #ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 1077
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :cond_6d
    const v3, 0x7f04000f

    goto :goto_5c

    .line 1090
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #strMimeType:Ljava/lang/String;
    :pswitch_71
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMenuHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$900(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMenuHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$900(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    .line 1094
    :pswitch_84
    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$9;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v3}, Lcom/arcsoft/quickview/QuickViewActivity;->showMorePopup()V

    goto :goto_f

    .line 1054
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_71
        :pswitch_84
    .end packed-switch
.end method
