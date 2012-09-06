.class Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "ParticipantListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ParticipantListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParticipantCursorAdapter"
.end annotation


# instance fields
.field mShowLetterSections:Z

.field final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/ParticipantListItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/AbsListView;)V
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "listView"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mViews:Ljava/util/List;

    .line 222
    new-instance v0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 232
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x2

    .line 265
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/ParticipantListItemView;

    .line 266
    .local v0, cliv:Lcom/google/android/apps/plus/views/ParticipantListItemView;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 267
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->clear()V

    .line 270
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, participantName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->setParticipantName(Ljava/lang/String;)V

    .line 272
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, participantId:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->setPersonId(Ljava/lang/String;)V

    .line 274
    invoke-static {v3}, Lcom/google/android/apps/plus/util/StringUtils;->firstLetter(Ljava/lang/String;)C

    move-result v1

    .line 275
    .local v1, firstLetter:C
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mShowLetterSections:Z

    if-eqz v6, :cond_50

    .line 276
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->showSectionHeader(C)V

    .line 278
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    :goto_37
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    return-void

    .line 280
    :cond_3b
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, previousName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/plus/util/StringUtils;->firstLetter(Ljava/lang/String;)C

    move-result v4

    .line 282
    .local v4, previousFirstLetter:C
    if-eq v4, v1, :cond_4c

    .line 283
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->showSectionHeader(C)V

    .line 287
    :goto_48
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_37

    .line 285
    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->hideSectionHeader()V

    goto :goto_48

    .line 290
    .end local v4           #previousFirstLetter:C
    .end local v5           #previousName:Ljava/lang/String;
    :cond_50
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->hideSectionHeader()V

    goto :goto_37
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 252
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 254
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03007f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ParticipantListItemView;

    .line 256
    .local v1, view:Lcom/google/android/apps/plus/views/ParticipantListItemView;
    return-object v1
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 5
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 239
    if-eqz p1, :cond_13

    .line 240
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mShowLetterSections:Z

    .line 244
    :goto_e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 242
    :cond_13
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mShowLetterSections:Z

    goto :goto_e
.end method
