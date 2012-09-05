.class final Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SocialHubMessageCommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SocialHubCommentListAdapter"
.end annotation


# instance fields
.field private mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;Landroid/content/Context;Lcom/sec/android/socialhub/parent/AbsBouncingLayout;)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "bouncing"

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f030016

    .line 779
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 776
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 781
    iput-object p2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->mContext:Landroid/content/Context;

    .line 782
    iput-object p3, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 783
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->setViewResource(I)V

    .line 784
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$1102(Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 785
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;

    .line 809
    .local v9, wrapper:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;
    if-nez v9, :cond_14

    .line 811
    new-instance v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;

    .end local v9           #wrapper:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-direct {v9, v0, p2, p1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 812
    .restart local v9       #wrapper:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;
    invoke-virtual {p1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 815
    :cond_14
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_b4

    .line 817
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->divider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 824
    :goto_27
    invoke-virtual {v9, p3}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->changeData(Landroid/database/Cursor;)V

    .line 825
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    iget-object v1, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->senderId:Ljava/lang/String;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->isMyMessage(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$1200(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;Ljava/lang/String;)Z

    move-result v7

    .line 829
    .local v7, isMine:Z
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->userImage:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->mSpType:I
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    .line 833
    .local v8, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;->manager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->senderPhotoUrl:Ljava/lang/String;

    iget-object v3, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v4, v3, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->userImage:Landroid/widget/ImageView;

    invoke-interface {v8}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getDefaultProfileImage()I

    move-result v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 835
    .local v6, bPicture:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6d

    .line 837
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->userImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 840
    :cond_6d
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tName:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->contents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 845
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 846
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 847
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 849
    if-eq v7, v11, :cond_a8

    .line 850
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->lLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 852
    :cond_a8
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->tTime:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    return-void

    .line 821
    .end local v6           #bPicture:Landroid/graphics/Bitmap;
    .end local v7           #isMine:Z
    .end local v8           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_b4
    iget-object v0, v9, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->divider:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_27
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 858
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    if-eqz v0, :cond_c

    .line 862
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->changeCursor(Landroid/database/Cursor;)V

    .line 864
    :cond_c
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 790
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 792
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SocialHubCommentListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-direct {v1, v2, p1, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 796
    .local v1, wrapper:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 798
    return-object v0
.end method
