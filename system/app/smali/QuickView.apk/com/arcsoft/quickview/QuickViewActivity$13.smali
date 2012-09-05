.class Lcom/arcsoft/quickview/QuickViewActivity$13;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->showDelDialog()V
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
    .line 1236
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1244
    .local v2, currentTime:J
    const/16 v5, 0x1f4

    .line 1250
    .local v5, interval:I
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mClickPreTime:J
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1500(Lcom/arcsoft/quickview/QuickViewActivity;)J

    move-result-wide v6

    sub-long v6, v2, v6

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1b

    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsUnderDeleteAnimation:Z
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1400(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1251
    :cond_1b
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mClickPreTime:J
    invoke-static {v6, v2, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1502(Lcom/arcsoft/quickview/QuickViewActivity;J)J

    .line 1299
    :cond_20
    :goto_20
    return-void

    .line 1255
    :cond_21
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mClickPreTime:J
    invoke-static {v6, v2, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1502(Lcom/arcsoft/quickview/QuickViewActivity;J)J

    .line 1257
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v7, 0x0

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z
    invoke-static {v6, v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$002(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 1258
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$400(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 1260
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$400(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1261
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v7, 0x0

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$402(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1263
    :cond_43
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1264
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/quickview/MediaList;->getCurrentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1266
    .local v4, currentUri:Landroid/net/Uri;
    if-eqz v4, :cond_20

    .line 1269
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/quickview/MediaList;->getCurrent()I

    move-result v1

    .line 1271
    .local v1, current:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_c2

    .line 1272
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/quickview/MediaList;->deleteCurrent()V

    .line 1273
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v6

    const v7, 0xa92701

    invoke-virtual {v6, v7, v1}, Lcom/arcsoft/widget/QuickView;->updateItem(II)V

    .line 1278
    iget-object v7, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v6

    if-nez v6, :cond_e1

    const/4 v6, 0x1

    :goto_8b
    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z
    invoke-static {v7, v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$202(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 1279
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v6

    iget-object v7, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z
    invoke-static {v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$200(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/arcsoft/widget/QuickView;->setViewingType(Z)V

    .line 1280
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1600(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/CustomizedMenu;

    move-result-object v6

    iget-object v7, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/arcsoft/widget/CustomizedMenu;->changeMenuType(Z)V

    .line 1281
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/quickview/MediaList;->isCurrentVideo()Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 1282
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v7, 0x1

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showPlayIcon(Z)V
    invoke-static {v6, v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1700(Lcom/arcsoft/quickview/QuickViewActivity;Z)V

    .line 1286
    :cond_c2
    :goto_c2
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v6

    if-eqz v6, :cond_ea

    .line 1287
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v7, 0x1

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsUnderDeleteAnimation:Z
    invoke-static {v6, v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1402(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 1288
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/widget/DeleteAnimation;->startDeleteAnimation()V

    .line 1298
    :cond_d9
    :goto_d9
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v7, 0x1

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsConfirmed:Z
    invoke-static {v6, v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1802(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    goto/16 :goto_20

    .line 1278
    :cond_e1
    const/4 v6, 0x0

    goto :goto_8b

    .line 1284
    :cond_e3
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v7, 0x0

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showPlayIcon(Z)V
    invoke-static {v6, v7}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1700(Lcom/arcsoft/quickview/QuickViewActivity;Z)V

    goto :goto_c2

    .line 1291
    :cond_ea
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/quickview/MediaList;->getCount()I

    move-result v6

    if-nez v6, :cond_d9

    .line 1293
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/arcsoft/quickview/QuickViewActivity;->mReturntoCamera:Z

    .line 1294
    iget-object v6, p0, Lcom/arcsoft/quickview/QuickViewActivity$13;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v6}, Lcom/arcsoft/quickview/QuickViewActivity;->finish()V

    goto :goto_d9
.end method
