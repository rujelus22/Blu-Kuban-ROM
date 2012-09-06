.class public Lcom/google/googlenav/ui/wizard/gB;
.super Le/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final j:Lah/s;

.field private final k:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/wizard/gz;Lah/s;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Le/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 40
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gB;->j:Lah/s;

    .line 43
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->k:Ljava/util/Set;

    .line 44
    new-instance v0, Lcom/google/googlenav/ui/wizard/gD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/gD;-><init>(Lcom/google/googlenav/ui/wizard/gB;Lcom/google/googlenav/ui/wizard/gC;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/gB;->a(Landroid/widget/FilterQueryProvider;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gB;)Lcom/google/googlenav/ui/wizard/gz;
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->d()Lcom/google/googlenav/ui/wizard/gz;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/google/googlenav/ui/wizard/gz;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gB;->a()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gz;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/google/googlenav/ui/friend/CircleListItem;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/friend/CircleListItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/gB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gz;

    .line 100
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->c()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    .line 101
    if-eqz p2, :cond_12

    .line 102
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->k:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_11
    return-void

    .line 104
    :cond_12
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->k:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    instance-of v0, p1, Lcom/google/googlenav/ui/wizard/gz;

    if-nez v0, :cond_c

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cursor must be a PlusoneAudienceCursor!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_c
    invoke-super {p0, p1}, Le/a;->a(Landroid/database/Cursor;)V

    .line 53
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    check-cast p3, Lcom/google/googlenav/ui/wizard/gz;

    .line 90
    check-cast p1, Lcom/google/googlenav/ui/friend/CircleListItem;

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->j:Lah/s;

    invoke-virtual {p3}, Lcom/google/googlenav/ui/wizard/gz;->c()Lcom/google/googlenav/friend/aF;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/ui/friend/CircleListItem;->setPostTarget(Lah/s;Lcom/google/googlenav/friend/aF;)V

    .line 92
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 113
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/aF;)Z
    .registers 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .parameter

    .prologue
    .line 57
    instance-of v0, p1, Lcom/google/googlenav/ui/wizard/gz;

    if-nez v0, :cond_c

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cursor must be a PlusoneAudienceCursor!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_c
    invoke-super {p0, p1}, Le/a;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->k:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 128
    return-object v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->d()Lcom/google/googlenav/ui/wizard/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gz;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->d()Lcom/google/googlenav/ui/wizard/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gz;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->d()Lcom/google/googlenav/ui/wizard/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
