.class public Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;
.super Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
.source "PeopleSearchGridAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;


# instance fields
.field private mShowMembership:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "fragmentManager"
    .parameter "loaderManager"
    .parameter "account"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 22
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 63
    packed-switch p2, :pswitch_data_1bc

    .line 161
    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    move-object/from16 v3, p1

    .line 65
    check-cast v3, Lcom/google/android/apps/plus/views/PersonCardView;

    .line 66
    .local v3, card:Lcom/google/android/apps/plus/views/PersonCardView;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setOnPersonCardClickListener(Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;)V

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->getPositionForPartition(I)I

    move-result v14

    add-int v14, v14, p4

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setPosition(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 69
    const/4 v14, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setContactName(Ljava/lang/String;)V

    .line 70
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setPersonId(Ljava/lang/String;)V

    .line 71
    const/4 v14, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setGaiaId(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mShowMembership:Z

    if-eqz v14, :cond_9f

    .line 73
    const/4 v14, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, circles:Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v5, v14, v15}, Lcom/google/android/apps/plus/views/PersonCardView;->setPackedCircleIdsEmailAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v14, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_7f

    const/4 v2, 0x1

    .line 76
    .local v2, blocked:Z
    :goto_5b
    if-eqz v2, :cond_83

    .line 77
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setForceAvatarDefault(Z)V

    .line 78
    const/4 v14, 0x1

    const v15, 0x7f080447

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setActionButtonVisible(ZII)V

    .line 80
    const/4 v14, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_81

    const/4 v14, 0x1

    :goto_77
    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setPlusPage(Z)V

    .line 88
    :goto_7a
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setDismissActionButtonVisible(Z)V

    goto :goto_3

    .line 75
    .end local v2           #blocked:Z
    :cond_7f
    const/4 v2, 0x0

    goto :goto_5b

    .line 80
    .restart local v2       #blocked:Z
    :cond_81
    const/4 v14, 0x0

    goto :goto_77

    .line 82
    :cond_83
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_95

    .line 83
    const/4 v14, 0x1

    const v15, 0x7f080446

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setActionButtonVisible(ZII)V

    goto :goto_7a

    .line 86
    :cond_95
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setActionButtonVisible(ZII)V

    goto :goto_7a

    .line 90
    .end local v2           #blocked:Z
    .end local v5           #circles:Ljava/lang/String;
    :cond_9f
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setPackedCircleIdsEmailAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v14, 0x1

    const v15, 0x7f080446

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setActionButtonVisible(ZII)V

    .line 93
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setDismissActionButtonVisible(Z)V

    goto/16 :goto_3

    .end local v3           #card:Lcom/google/android/apps/plus/views/PersonCardView;
    :pswitch_b9
    move-object/from16 v3, p1

    .line 100
    check-cast v3, Lcom/google/android/apps/plus/views/PersonCardView;

    .line 101
    .restart local v3       #card:Lcom/google/android/apps/plus/views/PersonCardView;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setOnPersonCardClickListener(Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;)V

    .line 102
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->getPositionForPartition(I)I

    move-result v14

    add-int v14, v14, p4

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setPosition(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setHighlightedText(Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 105
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, personId:Ljava/lang/String;
    invoke-virtual {v3, v12}, Lcom/google/android/apps/plus/views/PersonCardView;->setPersonId(Ljava/lang/String;)V

    .line 107
    const/4 v14, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, lookupKey:Ljava/lang/String;
    const/4 v14, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14, v10}, Lcom/google/android/apps/plus/views/PersonCardView;->setContactId(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v14, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setContactName(Ljava/lang/String;)V

    .line 111
    const/16 v14, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, snippet:Ljava/lang/String;
    const/4 v14, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, circleIds:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_159

    const/4 v8, 0x1

    .line 115
    .local v8, inCircles:Z
    :goto_118
    const/4 v14, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, email:Ljava/lang/String;
    invoke-virtual {v3, v4, v6, v13}, Lcom/google/android/apps/plus/views/PersonCardView;->setPackedCircleIdsEmailAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v14, :cond_15b

    if-nez v8, :cond_15b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15b

    const/4 v14, 0x1

    :goto_139
    const v15, 0x7f080446

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setActionButtonVisible(ZII)V

    .line 121
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_150

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->continueLoadingPublicProfiles()V

    .line 125
    :cond_150
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PersonCardView;->updateContentDescription()V

    .line 126
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setDismissActionButtonVisible(Z)V

    goto/16 :goto_3

    .line 114
    .end local v6           #email:Ljava/lang/String;
    .end local v8           #inCircles:Z
    :cond_159
    const/4 v8, 0x0

    goto :goto_118

    .line 117
    .restart local v6       #email:Ljava/lang/String;
    .restart local v8       #inCircles:Z
    :cond_15b
    const/4 v14, 0x0

    goto :goto_139

    .end local v3           #card:Lcom/google/android/apps/plus/views/PersonCardView;
    .end local v4           #circleIds:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v8           #inCircles:Z
    .end local v10           #lookupKey:Ljava/lang/String;
    .end local v12           #personId:Ljava/lang/String;
    .end local v13           #snippet:Ljava/lang/String;
    :pswitch_15d
    move-object/from16 v3, p1

    .line 131
    check-cast v3, Lcom/google/android/apps/plus/views/PersonCardView;

    .line 132
    .restart local v3       #card:Lcom/google/android/apps/plus/views/PersonCardView;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setOnPersonCardClickListener(Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/PersonCardView;->setWellFormedEmail(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mAddToCirclesActionEnabled:Z

    const v15, 0x7f080446

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->setActionButtonVisible(ZII)V

    .line 136
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PersonCardView;->updateContentDescription()V

    goto/16 :goto_3

    .line 141
    .end local v3           #card:Lcom/google/android/apps/plus/views/PersonCardView;
    :pswitch_180
    const/16 v9, 0x8

    .line 142
    .local v9, loadingVisibility:I
    const/16 v11, 0x8

    .line 143
    .local v11, notFoundVisibility:I
    const/16 v7, 0x8

    .line 144
    .local v7, errorVisibility:I
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    packed-switch v14, :pswitch_data_1cc

    .line 155
    :goto_190
    const v14, 0x7f09018d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    .line 156
    const v14, 0x7f09018e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const v14, 0x7f09018f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 146
    :pswitch_1b6
    const/4 v9, 0x0

    .line 147
    goto :goto_190

    .line 149
    :pswitch_1b8
    const/4 v11, 0x0

    .line 150
    goto :goto_190

    .line 152
    :pswitch_1ba
    const/4 v7, 0x0

    goto :goto_190

    .line 63
    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_15d
        :pswitch_3
        :pswitch_b9
        :pswitch_180
    .end packed-switch

    .line 144
    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_1b6
        :pswitch_1b8
        :pswitch_1ba
    .end packed-switch
.end method

.method public changeCircleMembers(Landroid/database/Cursor;ZZ)V
    .registers 5
    .parameter "cursor"
    .parameter "showMembership"
    .parameter "blocked"

    .prologue
    .line 164
    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mShowMembership:Z

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 166
    return-void
.end method

.method public isCursorClosingEnabled()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 45
    packed-switch p2, :pswitch_data_16

    .line 53
    new-instance v1, Lcom/google/android/apps/plus/views/PersonCardView;

    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/views/PersonCardView;-><init>(Landroid/content/Context;)V

    :goto_8
    return-object v1

    .line 47
    :pswitch_9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    .line 45
    :pswitch_data_16
    .packed-switch 0x5
        :pswitch_9
    .end packed-switch
.end method

.method public onActionButtonClick(Lcom/google/android/apps/plus/views/PersonCardView;I)V
    .registers 6
    .parameter "view"
    .parameter "action"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v0, :cond_7

    .line 190
    packed-switch p2, :pswitch_data_2e

    .line 204
    :cond_7
    :goto_7
    return-void

    .line 192
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PersonCardView;->getWellFormedEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 193
    const-string v0, "add_email_dialog"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    goto :goto_7

    .line 195
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PersonCardView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_7

    .line 200
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PersonCardView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onUnblockPersonAction(Ljava/lang/String;Z)V

    goto :goto_7

    .line 190
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_23
    .end packed-switch
.end method

.method public onDismissButtonClick(Lcom/google/android/apps/plus/views/PersonCardView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v0, :cond_d

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PersonCardView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onDismissSuggestionAction(Ljava/lang/String;)V

    .line 214
    :cond_d
    return-void
.end method

.method public onItemClick(Lcom/google/android/apps/plus/views/PersonCardView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PersonCardView;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->onItemClick(I)V

    .line 182
    return-void
.end method
