.class public abstract Lcom/android/contacts/widget/IndexerListAdapter;
.super Lcom/android/contacts/widget/PinnedHeaderListAdapter;
.source "IndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    .line 59
    iput-object p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method protected abstract clearPinnedHeaderContactsCount(Landroid/view/View;)V
.end method

.method public configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V
    .registers 13
    .parameter "listView"

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 161
    invoke-super {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    .line 204
    :goto_b
    return-void

    .line 167
    :cond_c
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 168
    .local v0, index:I
    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v9, :cond_1c

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getCount()I

    move-result v9

    if-nez v9, :cond_20

    .line 169
    :cond_1c
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_b

    .line 171
    :cond_20
    invoke-virtual {p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v2

    .line 172
    .local v2, listPosition:I
    invoke-virtual {p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v7, v2, v9

    .line 174
    .local v7, position:I
    const/4 v8, -0x1

    .line 175
    .local v8, section:I
    invoke-virtual {p0, v7}, Lcom/android/contacts/widget/IndexerListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 176
    .local v5, partition:I
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    if-ne v5, v9, :cond_41

    .line 177
    invoke-virtual {p0, v7}, Lcom/android/contacts/widget/IndexerListAdapter;->getOffsetInPartition(I)I

    move-result v4

    .line 178
    .local v4, offset:I
    if-eq v4, v10, :cond_41

    .line 179
    invoke-virtual {p0, v4}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v8

    .line 183
    .end local v4           #offset:I
    :cond_41
    if-ne v8, v10, :cond_47

    .line 184
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_b

    .line 186
    :cond_47
    iget-object v10, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 187
    if-nez v8, :cond_7e

    .line 188
    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->setPinnedHeaderContactsCount(Landroid/view/View;)V

    .line 193
    :goto_5d
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForPartition(I)I

    move-result v6

    .line 194
    .local v6, partitionStart:I
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->hasHeader(I)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 199
    :cond_6d
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v9

    add-int v3, v6, v9

    .line 200
    .local v3, nextSectionPosition:I
    add-int/lit8 v9, v3, -0x1

    if-ne v7, v9, :cond_7a

    const/4 v1, 0x1

    .line 201
    .local v1, isLastInSection:Z
    :cond_7a
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto :goto_b

    .line 190
    .end local v1           #isLastInSection:Z
    .end local v3           #nextSectionPosition:I
    .end local v6           #partitionStart:I
    :cond_7e
    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_5d
.end method

.method protected abstract createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getIndexedPartition()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    #getter for: Lcom/android/contacts/widget/IndexerListAdapter$Placement;->position:I
    invoke-static {v1}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->access$000(Lcom/android/contacts/widget/IndexerListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_e

    .line 213
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    .line 233
    :goto_d
    return-object v1

    .line 216
    :cond_e
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    #setter for: Lcom/android/contacts/widget/IndexerListAdapter$Placement;->position:I
    invoke-static {v1, p1}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->access$002(Lcom/android/contacts/widget/IndexerListAdapter$Placement;I)I

    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 219
    .local v0, section:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_48

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_48

    .line 220
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 221
    iget-object v4, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 227
    :goto_36
    iget-object v4, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_51

    move v1, v2

    :goto_43
    iput-boolean v1, v4, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    .line 233
    .end local v0           #section:I
    :goto_45
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    goto :goto_d

    .line 223
    .restart local v0       #section:I
    :cond_48
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 224
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_36

    :cond_51
    move v1, v3

    .line 227
    goto :goto_43

    .line 229
    .end local v0           #section:I
    :cond_53
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 230
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    .line 231
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_45
.end method

.method public getPinnedHeaderCount()I
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 141
    invoke-super {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 143
    :goto_c
    return v0

    :cond_d
    invoke-super {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_c
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "viewIndex"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 150
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_1a

    .line 151
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/widget/IndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 153
    :cond_1a
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 155
    :goto_1c
    return-object v0

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1c
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_6

    .line 121
    const/4 v0, -0x1

    .line 124
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_6

    .line 132
    const/4 v0, -0x1

    .line 135
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_d

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 112
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .registers 2
    .parameter "partition"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    .line 97
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .registers 3
    .parameter "indexer"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 105
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->invalidate()V

    .line 106
    return-void
.end method

.method protected abstract setPinnedHeaderContactsCount(Landroid/view/View;)V
.end method

.method protected abstract setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 89
    return-void
.end method
