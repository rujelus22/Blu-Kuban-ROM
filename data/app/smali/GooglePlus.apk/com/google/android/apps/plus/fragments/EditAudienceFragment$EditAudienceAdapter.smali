.class Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "EditAudienceFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditAudienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditAudienceAdapter"
.end annotation


# instance fields
.field private mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    .line 115
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 116
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 19
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 190
    packed-switch p2, :pswitch_data_10c

    .line 252
    :goto_3
    return-void

    :pswitch_4
    move-object v1, p1

    .line 192
    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 193
    .local v1, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$000(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 194
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, personId:Ljava/lang/String;
    invoke-virtual {v1, v11}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 196
    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, gaiaId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 198
    invoke-virtual {v1, v8}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setGaiaId(Ljava/lang/String;)V

    .line 200
    :cond_2a
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 202
    .local v9, isChecked:Z
    invoke-virtual {v1, v9}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setChecked(Z)V

    .line 203
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    .line 204
    if-eqz v9, :cond_4e

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mIncomingAudienceIsReadOnly:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$200(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Z

    move-result v4

    if-nez v4, :cond_53

    :cond_4e
    const/4 v4, 0x1

    :goto_4f
    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setEnabled(Z)V

    goto :goto_3

    :cond_53
    const/4 v4, 0x0

    goto :goto_4f

    .end local v1           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    .end local v8           #gaiaId:Ljava/lang/String;
    .end local v9           #isChecked:Z
    .end local v11           #personId:Ljava/lang/String;
    :pswitch_55
    move-object v1, p1

    .line 209
    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 210
    .restart local v1       #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$000(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 211
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 212
    .restart local v11       #personId:Ljava/lang/String;
    invoke-virtual {v1, v11}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 213
    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setGaiaId(Ljava/lang/String;)V

    .line 214
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v1, v10}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 216
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIds(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 218
    .restart local v9       #isChecked:Z
    invoke-virtual {v1, v9}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setChecked(Z)V

    .line 219
    if-eqz v9, :cond_a0

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mIncomingAudienceIsReadOnly:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$200(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Z

    move-result v4

    if-nez v4, :cond_b6

    :cond_a0
    const/4 v4, 0x1

    :goto_a1
    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setEnabled(Z)V

    .line 221
    invoke-static {v10}, Lcom/google/android/apps/plus/util/StringUtils;->firstLetter(Ljava/lang/String;)C

    move-result v7

    .line 222
    .local v7, firstLetter:C
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-nez v4, :cond_b8

    .line 223
    invoke-virtual {v1, v7}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeader(C)V

    .line 233
    :goto_b1
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_3

    .line 219
    .end local v7           #firstLetter:C
    :cond_b6
    const/4 v4, 0x0

    goto :goto_a1

    .line 225
    .restart local v7       #firstLetter:C
    :cond_b8
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 226
    .local v13, previousName:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/plus/util/StringUtils;->firstLetter(Ljava/lang/String;)C

    move-result v12

    .line 227
    .local v12, previousFirstLetter:C
    if-eq v12, v7, :cond_c9

    .line 228
    invoke-virtual {v1, v7}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeader(C)V

    goto :goto_b1

    .line 230
    :cond_c9
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeaderVisible(Z)V

    goto :goto_b1

    .end local v1           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    .end local v7           #firstLetter:C
    .end local v9           #isChecked:Z
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #personId:Ljava/lang/String;
    .end local v12           #previousFirstLetter:C
    .end local v13           #previousName:Ljava/lang/String;
    :pswitch_ce
    move-object v1, p1

    .line 238
    check-cast v1, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 239
    .local v1, item:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, circleId:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 241
    .local v3, type:I
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$300(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/android/apps/plus/util/AccountsUtil;->isRestrictedCircleForAccount(Lcom/google/android/apps/plus/content/EsAccount;I)Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCircle(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 246
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$400(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/CircleListItemView;->setChecked(Z)V

    .line 247
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->updateContentDescription()V

    goto/16 :goto_3

    .line 190
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_ce
        :pswitch_55
    .end packed-switch
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .registers 5
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 133
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    if-eqz p2, :cond_d

    .line 134
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;-><init>(Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    .line 137
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 138
    return-void
.end method

.method protected getItemViewType(II)I
    .registers 3
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 125
    return p1
.end method

.method public getItemViewTypeCount()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x3

    return v0
.end method

.method public getPositionForSection(I)I
    .registers 5
    .parameter "section"

    .prologue
    .line 259
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    if-nez v0, :cond_8

    .line 260
    :cond_6
    const/4 v0, 0x0

    .line 263
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->getPositionForPartition(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_7
.end method

.method public getSectionForPosition(I)I
    .registers 5
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    if-nez v2, :cond_6

    .line 281
    :cond_5
    :goto_5
    return v1

    .line 276
    :cond_6
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 277
    .local v0, start:I
    if-lt p1, v0, :cond_5

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;->getSectionForPosition(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 289
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    if-nez v2, :cond_7

    .line 290
    const/4 v0, 0x0

    .line 298
    :goto_6
    return-object v0

    .line 294
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, sections:[Ljava/lang/Object;
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 296
    .local v0, extendedSections:[Ljava/lang/Object;
    const-string v2, "\u25ef"

    aput-object v2, v0, v4

    .line 297
    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 148
    .local v0, header:Lcom/google/android/apps/plus/views/SectionHeaderView;
    packed-switch p2, :pswitch_data_20

    .line 156
    :goto_11
    return-object v0

    .line 150
    :pswitch_12
    const v1, 0x7f0802d2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(I)V

    goto :goto_11

    .line 153
    :pswitch_19
    const v1, 0x7f0802d1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(I)V

    goto :goto_11

    .line 148
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_12
        :pswitch_19
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
    const/4 v2, 0x1

    .line 165
    packed-switch p2, :pswitch_data_2e

    .line 182
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 168
    :pswitch_6
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v0

    .line 169
    .local v0, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnItemCheckedChangeListener(Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;)V

    .line 170
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCheckBoxVisible(Z)V

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$000(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    goto :goto_5

    .line 175
    .end local v0           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    :pswitch_1c
    new-instance v0, Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, item:Lcom/google/android/apps/plus/views/CircleListItemView;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setOnItemCheckedChangeListener(Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCheckBoxVisible(Z)V

    .line 178
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->updateContentDescription()V

    goto :goto_5

    .line 165
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1c
        :pswitch_6
    .end packed-switch
.end method
