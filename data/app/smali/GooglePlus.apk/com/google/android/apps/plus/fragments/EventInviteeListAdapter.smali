.class public final Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "EventInviteeListAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;
    }
.end annotation


# instance fields
.field protected mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mListener:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;

.field private mOwnerId:Ljava/lang/String;

.field private mViewerGaiaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V
    .registers 5
    .parameter "context"
    .parameter "circleNameResolver"

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 45
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 46
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 116
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    packed-switch v12, :pswitch_data_11a

    .line 171
    :goto_a
    return-void

    .line 118
    :pswitch_b
    const/16 v12, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, rsvpType:Ljava/lang/String;
    const/16 v12, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 121
    .local v2, count:I
    sget-object v12, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_47

    .line 122
    const v8, 0x7f0803f8

    .line 130
    .local v8, resId:I
    :goto_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v8, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, text:Ljava/lang/String;
    const v12, 0x1020014

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 132
    .local v11, textView:Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 123
    .end local v8           #resId:I
    .end local v10           #text:Ljava/lang/String;
    .end local v11           #textView:Landroid/widget/TextView;
    :cond_47
    sget-object v12, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 124
    const v8, 0x7f0803f9

    .restart local v8       #resId:I
    goto :goto_26

    .line 125
    .end local v8           #resId:I
    :cond_53
    const-string v12, "REMOVED"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 126
    const v8, 0x7f0803fb

    .restart local v8       #resId:I
    goto :goto_26

    .line 128
    .end local v8           #resId:I
    :cond_5f
    const v8, 0x7f0803fa

    .restart local v8       #resId:I
    goto :goto_26

    .end local v2           #count:I
    .end local v8           #resId:I
    .end local v9           #rsvpType:Ljava/lang/String;
    :pswitch_63
    move-object/from16 v5, p1

    .line 136
    check-cast v5, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 137
    .local v5, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 138
    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, gaiaId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v5, v12}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 140
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setGaiaId(Ljava/lang/String;)V

    .line 142
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 144
    const/4 v12, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, email:Ljava/lang/String;
    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setWellFormedEmail(Ljava/lang/String;)V

    .line 146
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, packedCircleIds:Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIds(Ljava/lang/String;)V

    .line 149
    const v12, 0x7f08003e

    invoke-virtual {v5, v12}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setActionButtonLabel(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mOwnerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mViewerGaiaId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mViewerGaiaId:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cc

    .line 151
    :cond_c3
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setActionButtonVisible(Z)V

    .line 159
    :goto_c7
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_a

    .line 153
    :cond_cc
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_e3

    const/4 v1, 0x1

    .line 155
    .local v1, blacklisted:Z
    :goto_d6
    if-eqz v1, :cond_e5

    const v12, 0x7f08041a

    :goto_db
    invoke-virtual {v5, v12}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setActionButtonLabel(I)V

    .line 157
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setActionButtonVisible(Z)V

    goto :goto_c7

    .line 153
    .end local v1           #blacklisted:Z
    :cond_e3
    const/4 v1, 0x0

    goto :goto_d6

    .line 155
    .restart local v1       #blacklisted:Z
    :cond_e5
    const v12, 0x7f080419

    goto :goto_db

    .line 163
    .end local v1           #blacklisted:Z
    .end local v3           #email:Ljava/lang/String;
    .end local v4           #gaiaId:Ljava/lang/String;
    .end local v5           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #packedCircleIds:Ljava/lang/String;
    :pswitch_e9
    const/16 v12, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 164
    .restart local v2       #count:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0007

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v2, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 166
    .restart local v10       #text:Ljava/lang/String;
    const v12, 0x1020014

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 167
    .restart local v11       #textView:Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 116
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_63
        :pswitch_e9
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .registers 5
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 74
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_12

    .line 83
    const/4 v1, 0x2

    :goto_f
    :pswitch_f
    return v1

    .line 79
    :pswitch_10
    const/4 v1, 0x1

    goto :goto_f

    .line 74
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x3

    return v0
.end method

.method public isInviteeBlacklisted(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "gaiaId"
    .parameter "email"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 196
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 198
    :cond_d
    const/4 v1, 0x0

    .line 199
    .local v1, aGaiaId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 201
    .local v0, aEmail:Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_19

    .line 202
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_19
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_23

    .line 206
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_23
    if-eqz v1, :cond_2b

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_2b
    if-eqz v0, :cond_3c

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 211
    :cond_33
    const/4 v4, 0x7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3b

    const/4 v3, 0x1

    .line 216
    .end local v0           #aEmail:Ljava/lang/String;
    .end local v1           #aGaiaId:Ljava/lang/String;
    :cond_3b
    :goto_3b
    return v3

    .line 213
    .restart local v0       #aEmail:Ljava/lang/String;
    .restart local v1       #aGaiaId:Ljava/lang/String;
    :cond_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_3b
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 108
    const/4 v1, 0x0

    :goto_9
    return-object v1

    .line 95
    :pswitch_a
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030038

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    .line 99
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :pswitch_16
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v1

    goto :goto_9

    .line 102
    :pswitch_1b
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030037

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    .line 93
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_a
        :pswitch_16
        :pswitch_1b
    .end packed-switch
.end method

.method public onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V
    .registers 6
    .parameter "view"
    .parameter "action"

    .prologue
    .line 179
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;

    if-eqz v2, :cond_1a

    .line 180
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, gaiaId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getWellFormedEmail()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, email:Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->isInviteeBlacklisted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 184
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;

    invoke-interface {v2, v1, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;->onReInviteInvitee(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #gaiaId:Ljava/lang/String;
    :cond_1a
    :goto_1a
    return-void

    .line 186
    .restart local v0       #email:Ljava/lang/String;
    .restart local v1       #gaiaId:Ljava/lang/String;
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;

    invoke-interface {v2, v1, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;->onRemoveInvitee(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public setEventOwnerId(Ljava/lang/String;)V
    .registers 2
    .parameter "ownerId"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mOwnerId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setOnActionListener(Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;

    .line 50
    return-void
.end method

.method public setViewerGaiaId(Ljava/lang/String;)V
    .registers 2
    .parameter "gaiaId"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->mViewerGaiaId:Ljava/lang/String;

    .line 58
    return-void
.end method
