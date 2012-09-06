.class public Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
.super Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
.source "PeopleSearchListAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "fragmentManager"
    .parameter "loaderManager"
    .parameter "account"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 6
    .parameter "context"
    .parameter "fragmentManager"
    .parameter "loaderManager"
    .parameter "account"
    .parameter "instanceId"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 24
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 87
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 203
    :cond_8
    :goto_8
    return-void

    .line 91
    :cond_9
    packed-switch p2, :pswitch_data_1ae

    goto :goto_8

    :pswitch_d
    move-object/from16 v1, p1

    .line 93
    check-cast v1, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 94
    .local v1, item:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 95
    .local v3, type:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/CircleListItemView;->setHighlightedText(Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v7, v3}, Lcom/google/android/apps/plus/util/AccountsUtil;->isRestrictedCircleForAccount(Lcom/google/android/apps/plus/content/EsAccount;I)Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCircle(Ljava/lang/String;ILjava/lang/String;IZ)V

    goto :goto_8

    .end local v1           #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    .end local v3           #type:I
    :pswitch_40
    move-object/from16 v1, p1

    .line 105
    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 106
    .local v1, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setHighlightedText(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 108
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 109
    .local v17, personId:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, lookupKey:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v15}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactId(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 114
    const/16 v2, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, snippet:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, circleIds:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_100

    const/4 v13, 0x1

    .line 118
    .local v13, inCircles:Z
    :goto_8f
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, email:Ljava/lang/String;
    const/4 v8, 0x0

    .line 120
    .local v8, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v2, :cond_a5

    .line 121
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 123
    :cond_a5
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIdsEmailAddressPhoneNumberAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v2, :cond_102

    if-nez v13, :cond_102

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    const/4 v2, 0x1

    :goto_d1
    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v2, :cond_e5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v2, :cond_e5

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 136
    :cond_e5
    const/4 v12, 0x1

    .line 137
    .local v12, firstRow:Z
    if-eqz v15, :cond_eb

    .line 140
    if-nez p4, :cond_104

    .line 141
    const/4 v12, 0x1

    .line 153
    :cond_eb
    :goto_eb
    invoke-virtual {v1, v12}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setFirstRow(Z)V

    .line 155
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_fb

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->continueLoadingPublicProfiles()V

    .line 159
    :cond_fb
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_8

    .line 117
    .end local v6           #email:Ljava/lang/String;
    .end local v8           #phoneNumber:Ljava/lang/String;
    .end local v12           #firstRow:Z
    .end local v13           #inCircles:Z
    :cond_100
    const/4 v13, 0x0

    goto :goto_8f

    .line 130
    .restart local v6       #email:Ljava/lang/String;
    .restart local v8       #phoneNumber:Ljava/lang/String;
    .restart local v13       #inCircles:Z
    :cond_102
    const/4 v2, 0x0

    goto :goto_d1

    .line 143
    .restart local v12       #firstRow:Z
    :cond_104
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 144
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 146
    .local v18, prevLookupKey:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 147
    const/4 v12, 0x0

    .line 149
    :cond_11a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_eb

    .end local v1           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    .end local v5           #circleIds:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v8           #phoneNumber:Ljava/lang/String;
    .end local v10           #snippet:Ljava/lang/String;
    .end local v12           #firstRow:Z
    .end local v13           #inCircles:Z
    .end local v15           #lookupKey:Ljava/lang/String;
    .end local v17           #personId:Ljava/lang/String;
    .end local v18           #prevLookupKey:Ljava/lang/String;
    :pswitch_11e
    move-object/from16 v1, p1

    .line 163
    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 164
    .restart local v1       #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setWellFormedEmail(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 166
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v2, :cond_141

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v2, :cond_141

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 169
    :cond_141
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_8

    .end local v1           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    :pswitch_146
    move-object/from16 v1, p1

    .line 173
    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 174
    .restart local v1       #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setWellFormedSms(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v2, :cond_169

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v2, :cond_169

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 179
    :cond_169
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_8

    .line 183
    .end local v1           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    :pswitch_16e
    const/16 v14, 0x8

    .line 184
    .local v14, loadingVisibility:I
    const/16 v16, 0x8

    .line 185
    .local v16, notFoundVisibility:I
    const/16 v11, 0x8

    .line 186
    .local v11, errorVisibility:I
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1bc

    .line 197
    :goto_17e
    const v2, 0x7f09018d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 198
    const v2, 0x7f09018e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const v2, 0x7f09018f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 188
    :pswitch_1a6
    const/4 v14, 0x0

    .line 189
    goto :goto_17e

    .line 191
    :pswitch_1a8
    const/16 v16, 0x0

    .line 192
    goto :goto_17e

    .line 194
    :pswitch_1ab
    const/4 v11, 0x0

    goto :goto_17e

    .line 91
    nop

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11e
        :pswitch_146
        :pswitch_40
        :pswitch_16e
    .end packed-switch

    .line 186
    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_1a6
        :pswitch_1a8
        :pswitch_1ab
    .end packed-switch
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "container"

    .prologue
    .line 64
    packed-switch p2, :pswitch_data_1e

    .line 79
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 66
    :pswitch_5
    new-instance v1, Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 71
    :pswitch_b
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v1

    goto :goto_4

    .line 74
    :pswitch_10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    .line 64
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method public onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V
    .registers 6
    .parameter "view"
    .parameter "action"

    .prologue
    .line 210
    if-nez p2, :cond_11

    .line 211
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getWellFormedEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 212
    const-string v0, "add_email_dialog"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    .line 219
    :cond_11
    :goto_11
    return-void

    .line 213
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getWellFormedSms()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 214
    const-string v0, "add_sms_dialog"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    goto :goto_11

    .line 216
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_11
.end method
