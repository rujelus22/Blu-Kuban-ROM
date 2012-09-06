.class Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "HostedMessengerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConversationCursorAdapter"
.end annotation


# instance fields
.field private mConversationsCursor:Landroid/database/Cursor;

.field private mSuggestionsCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Landroid/content/Context;Landroid/widget/AbsListView;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 355
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    .line 356
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 357
    invoke-virtual {p0, v1, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->addPartition(ZZ)V

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->addPartition(ZZ)V

    .line 360
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 373
    return-void
.end method


# virtual methods
.method public bindConversationView(Lcom/google/android/apps/plus/views/ConversationListItemView;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 469
    move-object/from16 v1, p1

    .line 470
    .local v1, cliv:Lcom/google/android/apps/plus/views/ConversationListItemView;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ConversationListItemView;->clear()V

    .line 472
    const/16 v13, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, lastMessageAuthor:Ljava/lang/String;
    const/16 v13, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_ab

    .line 475
    const/4 v13, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setConversationName(Ljava/lang/CharSequence;)V

    .line 477
    const/16 v13, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, inviterFirstName:Ljava/lang/String;
    if-nez v4, :cond_2e

    .line 480
    const-string v4, ""

    .line 482
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f08031b

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    .line 515
    .end local v4           #inviterFirstName:Ljava/lang/String;
    :cond_43
    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v13, v14, v15}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 517
    const/4 v13, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setUnreadCount(I)V

    .line 518
    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12d

    const/4 v13, 0x1

    :goto_6e
    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setMuted(Z)V

    .line 520
    const/16 v13, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, packedParticipantIds:Ljava/lang/String;
    if-eqz v10, :cond_141

    .line 523
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, "|"

    invoke-direct {v12, v10, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v12, tokenizer:Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 526
    .local v3, gaiaIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_87
    :goto_87
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_130

    .line 527
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, gaiaId:Ljava/lang/String;
    if-eqz v2, :cond_87

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    iget-object v13, v13, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_87

    .line 529
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 485
    .end local v2           #gaiaId:Ljava/lang/String;
    .end local v3           #gaiaIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #packedParticipantIds:Ljava/lang/String;
    .end local v12           #tokenizer:Ljava/util/StringTokenizer;
    :cond_ab
    const/4 v13, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, name:Ljava/lang/String;
    if-nez v9, :cond_bb

    .line 487
    const/4 v13, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 489
    :cond_bb
    invoke-virtual {v1, v9}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setConversationName(Ljava/lang/CharSequence;)V

    .line 490
    const/16 v13, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 492
    .local v7, lastMessageType:I
    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, lastMessage:Ljava/lang/String;
    const/16 v13, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, lastMessageUrl:Ljava/lang/String;
    if-nez v6, :cond_e7

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 500
    :cond_e7
    if-eqz v8, :cond_100

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f080264

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_43

    .line 503
    :cond_100
    if-eqz v5, :cond_43

    .line 504
    const/4 v13, 0x1

    if-ne v7, v13, :cond_120

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f080263

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    aput-object v5, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_43

    .line 510
    :cond_120
    const-string v13, "\\<.*?\\>"

    const-string v14, ""

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 511
    .local v11, strippedMessage:Ljava/lang/String;
    invoke-virtual {v1, v11}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_43

    .line 518
    .end local v5           #lastMessage:Ljava/lang/String;
    .end local v7           #lastMessageType:I
    .end local v8           #lastMessageUrl:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #strippedMessage:Ljava/lang/String;
    :cond_12d
    const/4 v13, 0x0

    goto/16 :goto_6e

    .line 532
    .restart local v3       #gaiaIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #packedParticipantIds:Ljava/lang/String;
    .restart local v12       #tokenizer:Ljava/util/StringTokenizer;
    :cond_130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    iget-object v13, v13, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setParticipantsId(Ljava/util/List;Ljava/lang/String;)V

    .line 537
    .end local v3           #gaiaIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #tokenizer:Ljava/util/StringTokenizer;
    :goto_13d
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ConversationListItemView;->updateContentDescription()V

    .line 538
    return-void

    .line 534
    :cond_141
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setParticipantsId(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_13d
.end method

.method public bindSuggestedParticipantView(Lcom/google/android/apps/plus/views/SuggestedParticipantView;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 461
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, gaiaId:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->setParticipantId(Ljava/lang/String;)V

    .line 464
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->setParticipantName(Ljava/lang/CharSequence;)V

    .line 465
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 8
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 444
    if-eqz p3, :cond_8

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 457
    :cond_8
    :goto_8
    return-void

    .line 447
    :cond_9
    packed-switch p2, :pswitch_data_1c

    goto :goto_8

    :pswitch_d
    move-object v0, p1

    .line 449
    check-cast v0, Lcom/google/android/apps/plus/views/ConversationListItemView;

    .line 450
    .local v0, cliv:Lcom/google/android/apps/plus/views/ConversationListItemView;
    invoke-virtual {p0, v0, p3}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->bindConversationView(Lcom/google/android/apps/plus/views/ConversationListItemView;Landroid/database/Cursor;)V

    goto :goto_8

    .end local v0           #cliv:Lcom/google/android/apps/plus/views/ConversationListItemView;
    :pswitch_14
    move-object v1, p1

    .line 453
    check-cast v1, Lcom/google/android/apps/plus/views/SuggestedParticipantView;

    .line 454
    .local v1, spv:Lcom/google/android/apps/plus/views/SuggestedParticipantView;
    invoke-virtual {p0, v1, p3}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->bindSuggestedParticipantView(Lcom/google/android/apps/plus/views/SuggestedParticipantView;Landroid/database/Cursor;)V

    goto :goto_8

    .line 447
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 420
    const/4 v6, 0x0

    .line 421
    .local v6, view:Landroid/view/View;
    if-eqz p4, :cond_6

    .line 422
    packed-switch p1, :pswitch_data_26

    .line 435
    :cond_6
    :goto_6
    if-nez v6, :cond_15

    .line 436
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 438
    :cond_15
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 439
    return-object v6

    .line 424
    :pswitch_19
    instance-of v0, p4, Lcom/google/android/apps/plus/views/ConversationListItemView;

    if-eqz v0, :cond_6

    .line 425
    move-object v6, p4

    goto :goto_6

    .line 429
    :pswitch_1f
    instance-of v0, p4, Lcom/google/android/apps/plus/views/SuggestedParticipantView;

    if-eqz v0, :cond_6

    .line 430
    move-object v6, p4

    goto :goto_6

    .line 422
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 397
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 398
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0300c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 406
    .local v0, inflater:Landroid/view/LayoutInflater;
    packed-switch p2, :pswitch_data_1a

    .line 414
    :goto_8
    return-object v1

    .line 408
    :pswitch_9
    const v2, 0x7f030023

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    .line 411
    :pswitch_11
    const v2, 0x7f0300e2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    .line 406
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 376
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v0, v1, :cond_46

    .line 377
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->mConversationsCursor:Landroid/database/Cursor;

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 388
    :cond_17
    :goto_17
    const-string v0, "ConversationList"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 389
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished suggestions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " conversations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->mConversationsCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_45
    return-void

    .line 382
    :cond_46
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 383
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 385
    invoke-virtual {p0, v1, p2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_17
.end method
