.class public Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;
.super Ljava/lang/Object;
.source "SocialHubFeedsCommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTitleString(I)Ljava/lang/String;
    .registers 7
    .parameter "cnt"

    .prologue
    const v3, 0x7f0800cc

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1220
    packed-switch p1, :pswitch_data_4a

    .line 1229
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 1223
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 1226
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    const v1, 0x7f0800cb

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 1220
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public drawTitle(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 1208
    const/4 v0, 0x0

    .line 1210
    .local v0, comment_cnt:I
    if-eqz p1, :cond_11

    .line 1211
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1215
    :goto_7
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->getTitleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setTitle(Ljava/lang/String;)V

    .line 1216
    return-void

    .line 1213
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setLightEffect(I)V
    .registers 4
    .parameter "status"

    .prologue
    const/16 v1, 0x32

    .line 1235
    packed-switch p1, :pswitch_data_40

    .line 1258
    :goto_5
    return-void

    .line 1240
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->hideTitleProgress()V

    .line 1246
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2200(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1247
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2300(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/view/HeaderLightView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/HeaderLightView;->setVisibility(I)V

    goto :goto_5

    .line 1253
    :pswitch_23
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2200(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1254
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2300(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/view/HeaderLightView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/HeaderLightView;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->hideTitleProgress()V

    goto :goto_5

    .line 1235
    :pswitch_data_40
    .packed-switch -0x1
        :pswitch_b
        :pswitch_23
        :pswitch_23
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method
