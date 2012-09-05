.class public Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SocialHubCommentListAdapter.java"

# interfaces
.implements Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mCommentContent:Ljava/lang/String;

.field public mCommentDate:Ljava/lang/String;

.field public mCommenterName:Ljava/lang/String;

.field public mCommenterPhotoUrl:Ljava/lang/String;

.field public mImageView_ActorPhoto:Landroid/widget/ImageView;

.field public mLayout_Comment:Landroid/widget/RelativeLayout;

.field public mTextView_Actor:Landroid/widget/TextView;

.field public mTextView_Comment:Landroid/widget/TextView;

.field public mTextView_Date:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 147
    if-nez p2, :cond_3

    .line 159
    :goto_2
    return-void

    .line 152
    :cond_3
    const-string v1, "time"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, timeStamp:Ljava/lang/String;
    const-string v1, "commenter_name"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommenterName:Ljava/lang/String;

    .line 155
    const-string v1, "content"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommentContent:Ljava/lang/String;

    .line 156
    const-string v1, "commenter_photo_url"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommenterPhotoUrl:Ljava/lang/String;

    .line 157
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommentDate:Ljava/lang/String;

    goto :goto_2
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommenterName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommenterName:Ljava/lang/String;

    .line 167
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
