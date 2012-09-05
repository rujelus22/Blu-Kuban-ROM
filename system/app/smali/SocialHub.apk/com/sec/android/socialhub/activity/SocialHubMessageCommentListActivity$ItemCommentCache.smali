.class public Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;
.super Ljava/lang/Object;
.source "SocialHubMessageCommentListActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemCommentCache"
.end annotation


# instance fields
.field public contents:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public divider:Landroid/view/View;

.field public lLayout:Landroid/widget/LinearLayout;

.field public name:Ljava/lang/String;

.field public senderId:Ljava/lang/String;

.field public senderPhotoUrl:Ljava/lang/String;

.field public tContents:Landroid/widget/TextView;

.field public tName:Landroid/widget/TextView;

.field public tTime:Landroid/widget/TextView;

.field public time:Ljava/lang/String;

.field public userImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 707
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->name:Ljava/lang/String;

    .line 717
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->contents:Ljava/lang/String;

    .line 718
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->time:Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->senderId:Ljava/lang/String;

    .line 720
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->senderPhotoUrl:Ljava/lang/String;

    .line 721
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 735
    if-nez p2, :cond_3

    .line 753
    :goto_2
    return-void

    .line 740
    :cond_3
    const-string v5, "sender_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 741
    .local v1, nameColumn:I
    const-string v5, "content"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, contentColumn:I
    const-string v5, "send_time"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 743
    .local v4, timeColumn:I
    const-string v5, "sender_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 744
    .local v2, senderIdColumn:I
    const-string v5, "sender_photo_url"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 746
    .local v3, senderPhotoColumn:I
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->name:Ljava/lang/String;

    .line 747
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->contents:Ljava/lang/String;

    .line 748
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->time:Ljava/lang/String;

    .line 749
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->senderId:Ljava/lang/String;

    .line 750
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->senderPhotoUrl:Ljava/lang/String;

    .line 752
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->time:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->date:Ljava/lang/String;

    goto :goto_2
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 725
    const v0, 0x7f0b0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->lLayout:Landroid/widget/LinearLayout;

    .line 726
    const v0, 0x7f0b0058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->userImage:Landroid/widget/ImageView;

    .line 727
    const v0, 0x7f0b005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tName:Landroid/widget/TextView;

    .line 728
    const v0, 0x7f0b005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    .line 729
    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tTime:Landroid/widget/TextView;

    .line 730
    const v0, 0x7f0b005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->divider:Landroid/view/View;

    .line 731
    return-void
.end method
