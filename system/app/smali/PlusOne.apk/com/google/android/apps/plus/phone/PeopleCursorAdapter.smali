.class public final Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "PeopleCursorAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlwaysHideLetterSections:Z

.field protected mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private final mGaiaIdColumnIndex:I

.field private mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

.field private final mNameColumnIndex:I

.field private mOnActionButtonClickListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

.field private final mPackedCircleIdsColumnIndex:I

.field private final mPersonIdColumnIndex:I

.field private mShowAddButtonIfNeeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILcom/google/android/apps/plus/fragments/CircleNameResolver;)V
    .registers 9
    .parameter "context"
    .parameter "personIdColumnIndex"
    .parameter "gaiaIdColumnIndex"
    .parameter "nameColumnIndex"
    .parameter "packedCircleIdsColumnIndex"
    .parameter "circleNameResolver"

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 41
    iput p2, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mPersonIdColumnIndex:I

    .line 42
    iput p3, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mGaiaIdColumnIndex:I

    .line 43
    iput p4, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mNameColumnIndex:I

    .line 44
    iput p5, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mPackedCircleIdsColumnIndex:I

    .line 45
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mAlwaysHideLetterSections:Z

    .line 46
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mShowAddButtonIfNeeded:Z

    .line 47
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 48
    return-void
.end method

.method private shouldShowLetterSections(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mAlwaysHideLetterSections:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 87
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 88
    .local v1, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1, v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 89
    iget v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mPersonIdColumnIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 90
    iget v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mGaiaIdColumnIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactId(J)V

    .line 91
    iget v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mNameColumnIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 93
    iget v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mPackedCircleIdsColumnIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, packedCircleIds:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIds(Ljava/lang/String;)V

    .line 95
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mShowAddButtonIfNeeded:Z

    if-eqz v6, :cond_41

    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 97
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mOnActionButtonClickListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    if-eqz v6, :cond_41

    .line 98
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mOnActionButtonClickListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    invoke-virtual {v1, v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 102
    :cond_41
    invoke-direct {p0, p3}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->shouldShowLetterSections(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 103
    invoke-static {v2}, Lcom/google/android/apps/plus/util/StringUtils;->firstLetter(Ljava/lang/String;)C

    move-result v0

    .line 104
    .local v0, firstLetter:C
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 105
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeader(C)V

    .line 115
    :goto_54
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 119
    .end local v0           #firstLetter:C
    :goto_57
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    .line 120
    return-void

    .line 107
    .restart local v0       #firstLetter:C
    :cond_5b
    iget v6, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mNameColumnIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, previousName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/plus/util/StringUtils;->firstLetter(Ljava/lang/String;)C

    move-result v4

    .line 109
    .local v4, previousFirstLetter:C
    if-eq v4, v0, :cond_6b

    .line 110
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeader(C)V

    goto :goto_54

    .line 112
    :cond_6b
    invoke-virtual {v1, v8}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeaderVisible(Z)V

    goto :goto_54

    .line 117
    .end local v0           #firstLetter:C
    .end local v4           #previousFirstLetter:C
    .end local v5           #previousName:Ljava/lang/String;
    :cond_6f
    invoke-virtual {v1, v8}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeaderVisible(Z)V

    goto :goto_57
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 162
    iget v0, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mNameColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "section"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 79
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v0

    return-object v0
.end method

.method public setAlwaysHideLetterSections(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mAlwaysHideLetterSections:Z

    .line 61
    return-void
.end method

.method public setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V
    .registers 2
    .parameter "onActionButtonClickListener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mOnActionButtonClickListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    .line 57
    return-void
.end method

.method public setShowAddButtonIfNeeded(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mShowAddButtonIfNeeded:Z

    .line 52
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 68
    if-eqz p1, :cond_b

    .line 69
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    iget v1, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mNameColumnIndex:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;-><init>(Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->mIndexer:Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;

    .line 71
    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
