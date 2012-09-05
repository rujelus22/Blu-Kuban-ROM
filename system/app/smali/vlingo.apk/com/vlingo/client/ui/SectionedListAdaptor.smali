.class public abstract Lcom/vlingo/client/ui/SectionedListAdaptor;
.super Landroid/widget/BaseAdapter;
.source "SectionedListAdaptor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;
    }
.end annotation


# static fields
.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field protected collapsableSectionHeadersSupport:Z

.field protected listView:Landroid/widget/ListView;

.field private sectionCollapseState:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/vlingo/client/ui/SectionedListAdaptor;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->listView:Landroid/widget/ListView;

    .line 271
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 6

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionCount()I

    move-result v2

    .line 107
    .local v2, sections:I
    const/4 v0, 0x0

    .line 108
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, section:I
    :goto_6
    if-ge v1, v2, :cond_34

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    iget-boolean v3, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_31

    .line 111
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getCountForSection(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 108
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 114
    :cond_34
    return v0
.end method

.method public abstract getCountForSection(I)I
.end method

.method public getHeaderItemForSection(I)Ljava/lang/Object;
    .registers 3
    .parameter "section"

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderItemIdForSection(I)J
    .registers 4
    .parameter "section"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getHeaderViewForSection(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 118
    invoke-virtual {p0, p1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionAndIndexForPosition(I)[I

    move-result-object v0

    .line 119
    .local v0, sectionAndIndex:[I
    aget v1, v0, v3

    if-ne v1, v2, :cond_17

    aget v1, v0, v4

    if-ne v1, v2, :cond_17

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "section and index are both null for item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_17
    aget v1, v0, v4

    if-ne v1, v2, :cond_22

    .line 122
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getHeaderItemForSection(I)Ljava/lang/Object;

    move-result-object v1

    .line 124
    :goto_21
    return-object v1

    :cond_22
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getItemInSection(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_21
.end method

.method public getItemId(I)J
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 128
    invoke-virtual {p0, p1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionAndIndexForPosition(I)[I

    move-result-object v0

    .line 129
    .local v0, sectionAndIndex:[I
    aget v1, v0, v3

    if-ne v1, v2, :cond_17

    aget v1, v0, v4

    if-ne v1, v2, :cond_17

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "section and index are both null for item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_17
    aget v1, v0, v4

    if-ne v1, v2, :cond_22

    .line 132
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getHeaderItemIdForSection(I)J

    move-result-wide v1

    .line 134
    :goto_21
    return-wide v1

    :cond_22
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getItemIdInSection(II)J

    move-result-wide v1

    goto :goto_21
.end method

.method public getItemIdInSection(II)J
    .registers 5
    .parameter "section"
    .parameter "index"

    .prologue
    .line 50
    add-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemInSection(II)Ljava/lang/Object;
    .registers 4
    .parameter "section"
    .parameter "index"

    .prologue
    .line 47
    add-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemViewInSection(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected getSectionAndIndexForPosition(I)[I
    .registers 8
    .parameter "position"

    .prologue
    .line 79
    const/4 v4, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_46

    .line 80
    .local v2, sectionAndIndex:[I
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionCount()I

    move-result v3

    .line 81
    .local v3, sections:I
    const/4 v1, 0x0

    .local v1, section:I
    :goto_b
    if-ge v1, v3, :cond_12

    .line 82
    const/4 v4, 0x0

    aput v1, v2, v4

    .line 83
    if-nez p1, :cond_13

    .line 97
    :cond_12
    :goto_12
    return-object v2

    .line 86
    :cond_13
    add-int/lit8 p1, p1, -0x1

    .line 87
    iget-boolean v4, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_42

    .line 89
    :cond_37
    invoke-virtual {p0, v1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getCountForSection(I)I

    move-result v0

    .line 90
    .local v0, countInSection:I
    if-ge p1, v0, :cond_41

    .line 91
    const/4 v4, 0x1

    aput p1, v2, v4

    goto :goto_12

    .line 94
    :cond_41
    sub-int/2addr p1, v0

    .line 81
    .end local v0           #countInSection:I
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 79
    nop

    :array_46
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public abstract getSectionCount()I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 138
    invoke-virtual {p0, p1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionAndIndexForPosition(I)[I

    move-result-object v0

    .line 139
    .local v0, sectionAndIndex:[I
    aget v1, v0, v3

    if-ne v1, v2, :cond_17

    aget v1, v0, v4

    if-ne v1, v2, :cond_17

    .line 140
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "section and index are both null for item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_17
    aget v1, v0, v4

    if-ne v1, v2, :cond_22

    .line 142
    aget v1, v0, v3

    invoke-virtual {p0, v1, p2, p3}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getHeaderViewForSection(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 144
    :goto_21
    return-object v1

    :cond_22
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getItemViewInSection(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_21
.end method

.method public isSectionCollapsable(I)Z
    .registers 4
    .parameter "section"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSectionCollapsed(I)Z
    .registers 4
    .parameter "section"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected isSectionHeader(I)Z
    .registers 7
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionAndIndexForPosition(I)[I

    move-result-object v0

    .line 66
    .local v0, sectionAndIndex:[I
    aget v3, v0, v2

    if-ne v3, v4, :cond_17

    aget v3, v0, v1

    if-ne v3, v4, :cond_17

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "section and index are both null for item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_17
    aget v3, v0, v1

    if-ne v3, v4, :cond_1c

    .line 71
    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    goto :goto_1b
.end method

.method protected isSectionItem(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/vlingo/client/ui/SectionedListAdaptor;->isSectionHeader(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 244
    sget-object v0, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClicked-1: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, p3}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionAndIndexForPosition(I)[I

    move-result-object v7

    .line 246
    .local v7, sectionAndIndex:[I
    aget v0, v7, v4

    if-ne v0, v3, :cond_2f

    aget v0, v7, v5

    if-ne v0, v3, :cond_2f

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "section and index are both null for item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2f
    aget v0, v7, v5

    if-ne v0, v3, :cond_3d

    .line 249
    aget v3, v7, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/ui/SectionedListAdaptor;->onSectionHeaderClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 252
    :goto_3c
    return-void

    .line 251
    :cond_3d
    aget v3, v7, v4

    aget v4, v7, v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/ui/SectionedListAdaptor;->onListItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V

    goto :goto_3c
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 255
    sget-object v0, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClicked-1: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, p3}, Lcom/vlingo/client/ui/SectionedListAdaptor;->getSectionAndIndexForPosition(I)[I

    move-result-object v7

    .line 257
    .local v7, sectionAndIndex:[I
    aget v0, v7, v8

    if-ne v0, v3, :cond_2f

    aget v0, v7, v4

    if-ne v0, v3, :cond_2f

    .line 258
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "section and index are both null for item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2f
    aget v0, v7, v4

    if-ne v0, v3, :cond_3d

    .line 260
    aget v3, v7, v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/ui/SectionedListAdaptor;->onSectionHeaderLongClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 263
    :goto_3c
    return v8

    .line 262
    :cond_3d
    aget v3, v7, v8

    aget v4, v7, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/ui/SectionedListAdaptor;->onListItemLongClicked(Landroid/widget/AdapterView;Landroid/view/View;IIJ)Z

    goto :goto_3c
.end method

.method public onListItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "section"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IIJ)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClicked-2: section "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onListItemLongClicked(Landroid/widget/AdapterView;Landroid/view/View;IIJ)Z
    .registers 10
    .parameter
    .parameter "view"
    .parameter "section"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IIJ)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClicked-2: section "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onSectionHeaderClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "section"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    sget-object v1, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSectionHeaderClicked: section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 210
    iget-boolean v1, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    if-eqz v1, :cond_5a

    .line 211
    instance-of v1, p2, Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;

    if-eqz v1, :cond_5a

    move-object v0, p2

    .line 212
    check-cast v0, Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;

    .line 213
    .local v0, header:Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;
    invoke-interface {v0}, Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;->isCollapsable()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 214
    invoke-interface {v0}, Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 215
    invoke-interface {v0, v4}, Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;->setCollpased(Z)V

    .line 216
    iget-object v1, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_57
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SectionedListAdaptor;->notifyDataSetChanged()V

    .line 226
    .end local v0           #header:Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;
    :cond_5a
    return-void

    .line 219
    .restart local v0       #header:Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;
    :cond_5b
    invoke-interface {v0, v5}, Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;->setCollpased(Z)V

    .line 220
    iget-object v1, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57
.end method

.method public onSectionHeaderLongClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter "view"
    .parameter "section"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSectionHeaderLongClicked-2: section "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public setListView(Landroid/widget/ListView;Z)V
    .registers 6
    .parameter "listView"
    .parameter "registerClickListener"

    .prologue
    .line 190
    sget-object v0, Lcom/vlingo/client/ui/SectionedListAdaptor;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->listView:Landroid/widget/ListView;

    .line 193
    if-eqz p2, :cond_2c

    .line 194
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 197
    :cond_2c
    return-void
.end method

.method public setSectionCollapsable(IZ)V
    .registers 6
    .parameter "section"
    .parameter "collapsable"

    .prologue
    .line 164
    if-nez p2, :cond_1b

    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 165
    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SectionedListAdaptor;->notifyDataSetChanged()V

    .line 172
    :cond_1a
    :goto_1a
    return-void

    .line 168
    :cond_1b
    if-eqz p2, :cond_1a

    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 169
    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SectionedListAdaptor;->notifyDataSetChanged()V

    goto :goto_1a
.end method

.method public setSectionCollapsed(IZ)V
    .registers 6
    .parameter "section"
    .parameter "collapsed"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 176
    iget-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SectionedListAdaptor;->notifyDataSetChanged()V

    .line 179
    :cond_1c
    return-void
.end method

.method public setSupportsCollapsableSectionHeaders(Z)V
    .registers 3
    .parameter "yes"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    .line 158
    iget-boolean v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    if-eqz v0, :cond_d

    .line 159
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->sectionCollapseState:Ljava/util/Hashtable;

    .line 161
    :cond_d
    return-void
.end method

.method public supportsCollapsableSectionHeaders()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/vlingo/client/ui/SectionedListAdaptor;->collapsableSectionHeadersSupport:Z

    return v0
.end method
