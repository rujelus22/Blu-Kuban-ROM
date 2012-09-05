.class public Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SocialHubCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/sec/android/socialhub/image/ImageCacheManager;

.field private mServiceProvider:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "SocialHubCommentListAdapter"

    sput-object v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V
    .registers 9
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "bouncing"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 30
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mService:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mServiceProvider:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 43
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p6, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mService:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 46
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;

    .line 94
    .local v7, holder:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;
    invoke-virtual {v7, p2, p3}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 96
    iget v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mServiceProvider:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    .line 97
    .local v8, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mService:Lcom/sec/android/socialhub/image/ImageCacheManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommenterPhotoUrl:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mImageView_ActorPhoto:Landroid/widget/ImageView;

    invoke-interface {v8}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getDefaultProfileImage()I

    move-result v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 99
    .local v6, actorPhoto:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_27

    .line 101
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mImageView_ActorPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_27
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mTextView_Actor:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommenterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mTextView_Comment:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommentContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mTextView_Date:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommentDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    if-eqz v0, :cond_c

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->changeCursor(Landroid/database/Cursor;)V

    .line 87
    :cond_c
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;-><init>()V

    .line 121
    .local v0, holder:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;
    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mLayout_Comment:Landroid/widget/RelativeLayout;

    .line 122
    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mImageView_ActorPhoto:Landroid/widget/ImageView;

    .line 123
    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mTextView_Actor:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mTextView_Comment:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mTextView_Date:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    return-object v1
.end method

.method protected onContentChanged()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_a

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v0, 0x0

    .line 78
    :cond_a
    return-void
.end method

.method public setServiceProvider(I)V
    .registers 2
    .parameter "sp"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->mServiceProvider:I

    .line 51
    return-void
.end method
