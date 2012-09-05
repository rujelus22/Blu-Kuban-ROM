.class Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageCursorAdapter"
.end annotation


# instance fields
.field final mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

.field final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Landroid/widget/AbsListView;Landroid/database/Cursor;)V
    .registers 5
    .parameter "fragment"
    .parameter "listView"
    .parameter "cursor"

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 481
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    .line 484
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 498
    return-void
.end method


# virtual methods
.method public bindHangoutTileEventMessageView(Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;Landroid/content/Context;)V
    .registers 7
    .parameter "view"
    .parameter "context"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setType(I)V

    .line 670
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 673
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->updateContentDescription()V

    .line 674
    return-void
.end method

.method public bindSystemMessageView(Lcom/google/android/apps/plus/views/SystemMessageListItemView;Landroid/content/Context;)V
    .registers 7
    .parameter "view"
    .parameter "context"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setType(I)V

    .line 661
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 664
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->updateContentDescription()V

    .line 665
    return-void
.end method

.method public bindUserImageMessageView(Lcom/google/android/apps/plus/views/MessageListItemViewImage;Landroid/content/Context;)V
    .registers 24
    .parameter "mliv"
    .parameter "context"

    .prologue
    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->clear()V

    .line 607
    const/4 v10, 0x0

    .line 608
    .local v10, hideAuthor:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 609
    .local v11, participantId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long v17, v3, v6

    .line 610
    .local v17, timestamp:J
    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v16

    .line 611
    .local v16, timeSinceString:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setMessageRowId(J)V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setAuthorName(Ljava/lang/CharSequence;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 614
    .local v15, thumbUrl:Ljava/lang/String;
    move-object/from16 v20, v15

    .line 615
    .local v20, url:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a8

    .line 616
    const-string v3, "//"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 619
    :cond_85
    const-string v3, "content://"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 620
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 621
    .local v19, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$500()I

    move-result v3

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$600()I

    move-result v4

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->getRealtimechatLocalImageThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 623
    .local v9, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v9}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 633
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_a8
    :goto_a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-nez v3, :cond_f6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long v12, v3, v6

    .line 635
    .local v12, prevTimestamp:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ef

    sub-long v3, v17, v12

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1600()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-gtz v3, :cond_ef

    .line 639
    const/4 v10, 0x1

    .line 641
    :cond_ef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 643
    .end local v12           #prevTimestamp:J
    :cond_f6
    if-eqz v11, :cond_162

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z

    move-result v3

    if-nez v3, :cond_162

    const/4 v14, 0x1

    .line 646
    .local v14, showStatus:Z
    :goto_115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v14}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setMessageStatus(IZ)V

    .line 647
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 649
    if-eqz v10, :cond_164

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->hideAuthor()V

    .line 656
    :goto_12f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateContentDescription()V

    .line 657
    return-void

    .line 625
    .end local v14           #showStatus:Z
    :cond_133
    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$500()I

    move-result v3

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$600()I

    move-result v4

    invoke-static {v3, v4, v15}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, resizedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$500()I

    move-result v7

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$600()I

    move-result v8

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/google/android/apps/plus/service/EsService;->getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 630
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_a8

    .line 643
    .end local v5           #resizedUrl:Ljava/lang/String;
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_162
    const/4 v14, 0x0

    goto :goto_115

    .line 652
    .restart local v14       #showStatus:Z
    :cond_164
    invoke-static {v11}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setAvatar(J)V

    .line 653
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->showAuthor()V

    goto :goto_12f
.end method

.method public bindUserMessageView(Lcom/google/android/apps/plus/views/MessageListItemView;Landroid/content/Context;)V
    .registers 15
    .parameter "mliv"
    .parameter "context"

    .prologue
    .line 565
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 566
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->clear()V

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, hideAuthor:Z
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, participantId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 572
    .local v6, timestamp:J
    invoke-static {p2, v6, v7}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 573
    .local v5, timeSinceString:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessageRowId(J)V

    .line 574
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/views/MessageListItemView;->setAuthorName(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessage(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isFirst()Z

    move-result v8

    if-nez v8, :cond_88

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v8

    if-eqz v8, :cond_88

    .line 577
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 578
    .local v2, prevTimestamp:J
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_83

    sub-long v8, v6, v2

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1600()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_83

    .line 582
    const/4 v0, 0x1

    .line 584
    :cond_83
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 586
    .end local v2           #prevTimestamp:J
    :cond_88
    if-eqz v1, :cond_b9

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z

    move-result v8

    if-nez v8, :cond_b9

    const/4 v4, 0x1

    .line 589
    .local v4, showStatus:Z
    :goto_a3
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p1, v8, v4}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessageStatus(IZ)V

    .line 590
    invoke-virtual {p1, v5}, Lcom/google/android/apps/plus/views/MessageListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 592
    if-eqz v0, :cond_bb

    .line 593
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->hideAuthor()V

    .line 599
    :goto_b5
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->updateContentDescription()V

    .line 600
    return-void

    .line 586
    .end local v4           #showStatus:Z
    :cond_b9
    const/4 v4, 0x0

    goto :goto_a3

    .line 595
    .restart local v4       #showStatus:Z
    :cond_bb
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/google/android/apps/plus/views/MessageListItemView;->setAvatar(J)V

    .line 596
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->showAuthor()V

    goto :goto_b5
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 505
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mDataValid:Z

    if-nez v4, :cond_d

    .line 506
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "this should only be called when the cursor is valid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 508
    :cond_d
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 509
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t move cursor to position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 512
    :cond_2e
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 514
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 515
    .local v1, messageType:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_88

    .line 516
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, thumbUrl:Ljava/lang/String;
    if-eqz v2, :cond_6a

    .line 519
    if-eqz p2, :cond_5b

    instance-of v4, p2, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    if-eqz v4, :cond_5b

    move-object v3, p2

    .line 520
    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    .line 526
    .local v3, view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :goto_55
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindUserImageMessageView(Lcom/google/android/apps/plus/views/MessageListItemViewImage;Landroid/content/Context;)V

    .line 560
    .end local v2           #thumbUrl:Ljava/lang/String;
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :goto_5a
    return-object v3

    .line 522
    .restart local v2       #thumbUrl:Ljava/lang/String;
    :cond_5b
    const v4, 0x7f030045

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    .line 524
    .restart local v3       #view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setMessageClickListener(Lcom/google/android/apps/plus/views/MessageClickListener;)V

    goto :goto_55

    .line 530
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :cond_6a
    if-eqz p2, :cond_79

    instance-of v4, p2, Lcom/google/android/apps/plus/views/MessageListItemView;

    if-eqz v4, :cond_79

    move-object v3, p2

    .line 531
    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemView;

    .line 537
    .local v3, view:Lcom/google/android/apps/plus/views/MessageListItemView;
    :goto_73
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindUserMessageView(Lcom/google/android/apps/plus/views/MessageListItemView;Landroid/content/Context;)V

    goto :goto_5a

    .line 533
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemView;
    :cond_79
    const v4, 0x7f030044

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemView;

    .line 535
    .restart local v3       #view:Lcom/google/android/apps/plus/views/MessageListItemView;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessageClickListener(Lcom/google/android/apps/plus/views/MessageClickListener;)V

    goto :goto_73

    .line 540
    .end local v2           #thumbUrl:Ljava/lang/String;
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemView;
    :cond_88
    const/4 v4, 0x6

    if-ne v1, v4, :cond_a4

    .line 542
    if-eqz p2, :cond_9a

    instance-of v4, p2, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    if-eqz v4, :cond_9a

    move-object v3, p2

    .line 544
    check-cast v3, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    .line 549
    .local v3, view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    :goto_94
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindHangoutTileEventMessageView(Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;Landroid/content/Context;)V

    goto :goto_5a

    .line 546
    .end local v3           #view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    :cond_9a
    const v4, 0x7f030032

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    .restart local v3       #view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    goto :goto_94

    .line 553
    .end local v3           #view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    :cond_a4
    if-eqz p2, :cond_b3

    instance-of v4, p2, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    if-eqz v4, :cond_b3

    move-object v3, p2

    .line 554
    check-cast v3, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    .line 559
    .local v3, view:Lcom/google/android/apps/plus/views/SystemMessageListItemView;
    :goto_ad
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindSystemMessageView(Lcom/google/android/apps/plus/views/SystemMessageListItemView;Landroid/content/Context;)V

    goto :goto_5a

    .line 556
    .end local v3           #view:Lcom/google/android/apps/plus/views/SystemMessageListItemView;
    :cond_b3
    const v4, 0x7f0300a8

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    .restart local v3       #view:Lcom/google/android/apps/plus/views/SystemMessageListItemView;
    goto :goto_ad
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 8
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 682
    if-nez p2, :cond_4

    .line 683
    const/4 v0, 0x0

    .line 698
    :cond_3
    return v0

    .line 686
    :cond_4
    const/4 v0, 0x0

    .line 687
    .local v0, bitmapUsed:Z
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 688
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    if-eqz v4, :cond_b

    move-object v2, v3

    .line 689
    check-cast v2, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    .line 690
    .local v2, mView:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 691
    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 692
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->invalidate()V

    .line 693
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 679
    return-void
.end method
