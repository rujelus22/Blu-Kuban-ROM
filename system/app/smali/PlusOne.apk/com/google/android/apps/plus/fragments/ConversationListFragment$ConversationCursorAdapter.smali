.class Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConversationCursorAdapter"
.end annotation


# instance fields
.field mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/ConversationListItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "listView"
    .parameter "cursor"

    .prologue
    .line 341
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->mViews:Ljava/util/List;

    .line 344
    new-instance v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 354
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 371
    move-object/from16 v3, p1

    check-cast v3, Lcom/google/android/apps/plus/views/ConversationListItemView;

    .line 372
    .local v3, cliv:Lcom/google/android/apps/plus/views/ConversationListItemView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->mViews:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_17
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ConversationListItemView;->clear()V

    .line 376
    const/16 v13, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, lastMessageAuthor:Ljava/lang/String;
    const/16 v13, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_92

    .line 379
    const/4 v13, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setConversationName(Ljava/lang/CharSequence;)V

    .line 381
    const/16 v13, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, inviterFirstName:Ljava/lang/String;
    if-nez v5, :cond_43

    .line 383
    const-string v5, ""

    .line 385
    :cond_43
    const v13, 0x7f07025e

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    .line 418
    .end local v5           #inviterFirstName:Ljava/lang/String;
    :cond_55
    :goto_55
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setTimeSince(Ljava/lang/CharSequence;)V

    .line 420
    const/4 v13, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setUnreadCount(I)V

    .line 421
    const/4 v13, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_109

    const/4 v13, 0x1

    :goto_7d
    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setMuted(Z)V

    .line 423
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10c

    .line 424
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setGroup(Z)V

    .line 443
    :goto_8e
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ConversationListItemView;->updateContentDescription()V

    .line 444
    return-void

    .line 388
    :cond_92
    const/4 v13, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, name:Ljava/lang/String;
    if-nez v10, :cond_a2

    .line 390
    const/4 v13, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 392
    :cond_a2
    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setConversationName(Ljava/lang/CharSequence;)V

    .line 393
    const/16 v13, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 395
    .local v8, lastMessageType:I
    const/16 v13, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, lastMessage:Ljava/lang/String;
    const/16 v13, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 399
    .local v9, lastMessageUrl:Ljava/lang/String;
    if-nez v7, :cond_ca

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0701af

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 403
    :cond_ca
    if-eqz v9, :cond_e0

    .line 404
    const v13, 0x7f0701b6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_55

    .line 406
    :cond_e0
    if-eqz v6, :cond_55

    .line 407
    const/4 v13, 0x1

    if-ne v8, v13, :cond_fc

    .line 408
    const v13, 0x7f0701b5

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_55

    .line 413
    :cond_fc
    const-string v13, "\\<.*?\\>"

    const-string v14, ""

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 414
    .local v12, strippedMessage:Ljava/lang/String;
    invoke-virtual {v3, v12}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setLastMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_55

    .line 421
    .end local v6           #lastMessage:Ljava/lang/String;
    .end local v8           #lastMessageType:I
    .end local v9           #lastMessageUrl:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #strippedMessage:Ljava/lang/String;
    :cond_109
    const/4 v13, 0x0

    goto/16 :goto_7d

    .line 426
    :cond_10c
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setGroup(Z)V

    .line 427
    const/16 v13, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 428
    .local v11, participantId:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 429
    .local v1, avatarId:J
    if-eqz v11, :cond_131

    .line 430
    const-string v13, "g:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_131

    .line 432
    const/4 v13, 0x2

    :try_start_125
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J
    :try_end_130
    .catch Ljava/lang/NumberFormatException; {:try_start_125 .. :try_end_130} :catch_136

    move-result-wide v1

    .line 440
    :cond_131
    :goto_131
    invoke-virtual {v3, v1, v2}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setAvatarId(J)V

    goto/16 :goto_8e

    .line 433
    :catch_136
    move-exception v4

    .line 434
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v13, "ConversationListFrag"

    const/4 v14, 0x5

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_131

    .line 435
    const-string v13, "ConversationListFrag"

    const-string v14, "invalid participantId"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 361
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 363
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 449
    return-void
.end method
