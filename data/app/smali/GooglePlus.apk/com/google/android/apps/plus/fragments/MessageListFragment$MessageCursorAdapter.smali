.class Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;


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
    .line 493
    invoke-virtual {p1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 494
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    .line 497
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 511
    return-void
.end method


# virtual methods
.method public bindHangoutTileEventMessageView(Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;Landroid/content/Context;)V
    .registers 7
    .parameter "view"
    .parameter "context"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setType(I)V

    .line 733
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 736
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->updateContentDescription()V

    .line 737
    return-void
.end method

.method public bindSystemMessageView(Lcom/google/android/apps/plus/views/SystemMessageListItemView;Landroid/content/Context;)V
    .registers 7
    .parameter "view"
    .parameter "context"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setType(I)V

    .line 724
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 727
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->updateContentDescription()V

    .line 728
    return-void
.end method

.method public bindUserImageMessageView(Lcom/google/android/apps/plus/views/MessageListItemViewImage;Landroid/content/Context;)V
    .registers 28
    .parameter "mliv"
    .parameter "context"

    .prologue
    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->clear()V

    .line 657
    const/4 v15, 0x0

    .line 658
    .local v15, hideAuthor:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 659
    .local v17, participantId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v22, v4, v6

    .line 660
    .local v22, timestamp:J
    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v21

    .line 662
    .local v21, timeSinceString:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setMessageRowId(J)V

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setAuthorName(Ljava/lang/CharSequence;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 665
    .local v16, imageUrl:Ljava/lang/String;
    move-object/from16 v24, v16

    .line 666
    .local v24, url:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ec

    .line 667
    const-string v4, "//"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 670
    :cond_85
    const/4 v9, 0x0

    .line 671
    .local v9, imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getImageWidth()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_19b

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getImageWidth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 673
    .local v12, width:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getImageHeight()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 674
    .local v13, height:I
    const-string v4, "MessageListFragment"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 675
    const-string v4, "MessageListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BindUserImageMessageView image width "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_c7
    const-string v4, "content://"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_187

    .line 680
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 681
    .local v8, uri:Landroid/net/Uri;
    new-instance v3, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    sget-object v9, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .end local v9           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 683
    .local v3, ref:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v9, Lcom/google/android/apps/plus/content/LocalImageRequest;

    invoke-direct {v9, v3, v12, v13}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 694
    .end local v3           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v12           #width:I
    .end local v13           #height:I
    .restart local v9       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :goto_e5
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setImage(Ljava/lang/String;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 696
    .end local v9           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_ec
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-nez v4, :cond_13c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v18, v4, v6

    .line 698
    .local v18, prevTimestamp:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_135

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_135

    sub-long v4, v22, v18

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1400()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_135

    .line 702
    const/4 v15, 0x1

    .line 704
    :cond_135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 706
    .end local v18           #prevTimestamp:J
    :cond_13c
    if-eqz v17, :cond_1a4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1600(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z

    move-result v4

    if-nez v4, :cond_1a4

    const/16 v20, 0x1

    .line 709
    .local v20, showStatus:Z
    :goto_15e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setMessageStatus(IZ)V

    .line 710
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 711
    invoke-static/range {v17 .. v17}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setGaiaId(Ljava/lang/String;)V

    .line 713
    if-eqz v15, :cond_1a7

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->hideAuthor()V

    .line 719
    :goto_183
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateContentDescription()V

    .line 720
    return-void

    .line 685
    .end local v20           #showStatus:Z
    .restart local v9       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .restart local v12       #width:I
    .restart local v13       #height:I
    :cond_187
    move-object/from16 v0, v16

    invoke-static {v12, v13, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 688
    .local v10, resizedUrl:Ljava/lang/String;
    new-instance v9, Lcom/google/android/apps/plus/content/MediaImageRequest;

    .end local v9           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .restart local v9       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    goto/16 :goto_e5

    .line 692
    .end local v10           #resizedUrl:Ljava/lang/String;
    .end local v12           #width:I
    .end local v13           #height:I
    :cond_19b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setOnMeasureListener(Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;)V

    goto/16 :goto_e5

    .line 706
    .end local v9           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_1a4
    const/16 v20, 0x0

    goto :goto_15e

    .line 716
    .restart local v20       #showStatus:Z
    :cond_1a7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->showAuthor()V

    goto :goto_183
.end method

.method public bindUserMessageView(Lcom/google/android/apps/plus/views/MessageListItemView;Landroid/content/Context;)V
    .registers 15
    .parameter "mliv"
    .parameter "context"

    .prologue
    .line 615
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 616
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->clear()V

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, hideAuthor:Z
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, participantId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 622
    .local v6, timestamp:J
    invoke-static {p2, v6, v7}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 623
    .local v5, timeSinceString:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessageRowId(J)V

    .line 624
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/views/MessageListItemView;->setAuthorName(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessage(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isFirst()Z

    move-result v8

    if-nez v8, :cond_88

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v8

    if-eqz v8, :cond_88

    .line 627
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 628
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

    invoke-static {}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1400()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_83

    .line 632
    const/4 v0, 0x1

    .line 634
    :cond_83
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 636
    .end local v2           #prevTimestamp:J
    :cond_88
    if-eqz v1, :cond_c0

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1600(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z

    move-result v8

    if-nez v8, :cond_c0

    const/4 v4, 0x1

    .line 639
    .local v4, showStatus:Z
    :goto_a3
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p1, v8, v4}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessageStatus(IZ)V

    .line 640
    invoke-virtual {p1, v5}, Lcom/google/android/apps/plus/views/MessageListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 641
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/views/MessageListItemView;->setGaiaId(Ljava/lang/String;)V

    .line 643
    if-eqz v0, :cond_c2

    .line 644
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->hideAuthor()V

    .line 649
    :goto_bc
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->updateContentDescription()V

    .line 650
    return-void

    .line 636
    .end local v4           #showStatus:Z
    :cond_c0
    const/4 v4, 0x0

    goto :goto_a3

    .line 646
    .restart local v4       #showStatus:Z
    :cond_c2
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MessageListItemView;->showAuthor()V

    goto :goto_bc
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 554
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mDataValid:Z

    if-nez v4, :cond_d

    .line 555
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "this should only be called when the cursor is valid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 558
    :cond_d
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 559
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

    .line 562
    :cond_2e
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 564
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 565
    .local v1, messageType:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_88

    .line 566
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, thumbUrl:Ljava/lang/String;
    if-eqz v2, :cond_6a

    .line 569
    if-eqz p2, :cond_5b

    instance-of v4, p2, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    if-eqz v4, :cond_5b

    move-object v3, p2

    .line 570
    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    .line 576
    .local v3, view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :goto_55
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindUserImageMessageView(Lcom/google/android/apps/plus/views/MessageListItemViewImage;Landroid/content/Context;)V

    .line 610
    .end local v2           #thumbUrl:Ljava/lang/String;
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :goto_5a
    return-object v3

    .line 572
    .restart local v2       #thumbUrl:Ljava/lang/String;
    :cond_5b
    const v4, 0x7f03006a

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    .line 574
    .restart local v3       #view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setMessageClickListener(Lcom/google/android/apps/plus/views/MessageClickListener;)V

    goto :goto_55

    .line 580
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :cond_6a
    if-eqz p2, :cond_79

    instance-of v4, p2, Lcom/google/android/apps/plus/views/MessageListItemView;

    if-eqz v4, :cond_79

    move-object v3, p2

    .line 581
    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemView;

    .line 587
    .local v3, view:Lcom/google/android/apps/plus/views/MessageListItemView;
    :goto_73
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindUserMessageView(Lcom/google/android/apps/plus/views/MessageListItemView;Landroid/content/Context;)V

    goto :goto_5a

    .line 583
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemView;
    :cond_79
    const v4, 0x7f030069

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/MessageListItemView;

    .line 585
    .restart local v3       #view:Lcom/google/android/apps/plus/views/MessageListItemView;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/MessageListItemView;->setMessageClickListener(Lcom/google/android/apps/plus/views/MessageClickListener;)V

    goto :goto_73

    .line 590
    .end local v2           #thumbUrl:Ljava/lang/String;
    .end local v3           #view:Lcom/google/android/apps/plus/views/MessageListItemView;
    :cond_88
    const/4 v4, 0x6

    if-ne v1, v4, :cond_a4

    .line 592
    if-eqz p2, :cond_9a

    instance-of v4, p2, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    if-eqz v4, :cond_9a

    move-object v3, p2

    .line 594
    check-cast v3, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    .line 599
    .local v3, view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    :goto_94
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindHangoutTileEventMessageView(Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;Landroid/content/Context;)V

    goto :goto_5a

    .line 596
    .end local v3           #view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    :cond_9a
    const v4, 0x7f030051

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    .restart local v3       #view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    goto :goto_94

    .line 603
    .end local v3           #view:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
    :cond_a4
    if-eqz p2, :cond_b3

    instance-of v4, p2, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    if-eqz v4, :cond_b3

    move-object v3, p2

    .line 604
    check-cast v3, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    .line 609
    .local v3, view:Lcom/google/android/apps/plus/views/SystemMessageListItemView;
    :goto_ad
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->bindSystemMessageView(Lcom/google/android/apps/plus/views/SystemMessageListItemView;Landroid/content/Context;)V

    goto :goto_5a

    .line 606
    .end local v3           #view:Lcom/google/android/apps/plus/views/SystemMessageListItemView;
    :cond_b3
    const v4, 0x7f0300e5

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/SystemMessageListItemView;

    .restart local v3       #view:Lcom/google/android/apps/plus/views/SystemMessageListItemView;
    goto :goto_ad
.end method

.method public onMeasured(Landroid/view/View;)V
    .registers 16
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 519
    instance-of v2, p1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    if-eqz v2, :cond_69

    move-object v13, p1

    .line 520
    check-cast v13, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    .line 524
    .local v13, mliv:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    invoke-virtual {v13, v1}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setOnMeasureListener(Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;)V

    .line 525
    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getImageWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 526
    .local v9, width:I
    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getImageHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 527
    .local v10, height:I
    const-string v2, "MessageListFragment"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 528
    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasured image width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_46
    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getFullResUrl()Ljava/lang/String;

    move-result-object v12

    .line 533
    .local v12, imageUrl:Ljava/lang/String;
    const/4 v6, 0x0

    .line 534
    .local v6, imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    const-string v2, "content://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 535
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 536
    .local v5, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v2, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .end local v6           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 538
    .local v0, ref:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v6, Lcom/google/android/apps/plus/content/LocalImageRequest;

    invoke-direct {v6, v0, v9, v10}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 546
    .end local v0           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v6       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :goto_66
    invoke-virtual {v13, v12, v6}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setImage(Ljava/lang/String;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 547
    .end local v6           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .end local v9           #width:I
    .end local v10           #height:I
    .end local v12           #imageUrl:Ljava/lang/String;
    .end local v13           #mliv:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :cond_69
    return-void

    .line 540
    .restart local v6       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .restart local v9       #width:I
    .restart local v10       #height:I
    .restart local v12       #imageUrl:Ljava/lang/String;
    .restart local v13       #mliv:Lcom/google/android/apps/plus/views/MessageListItemViewImage;
    :cond_6a
    invoke-static {v9, v10, v12}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, resizedUrl:Ljava/lang/String;
    new-instance v6, Lcom/google/android/apps/plus/content/MediaImageRequest;

    .end local v6           #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .restart local v6       #imageRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    goto :goto_66
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 742
    return-void
.end method
