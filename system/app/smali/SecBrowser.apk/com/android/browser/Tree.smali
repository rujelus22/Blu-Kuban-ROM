.class public Lcom/android/browser/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private head:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private leafs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/Tree",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private locate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Lcom/android/browser/Tree",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/android/browser/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/browser/Tree",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    .local p1, head:Ljava/lang/Object;,"TT;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/Tree;->leafs:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tree;->parent:Lcom/android/browser/Tree;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/Tree;->locate:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/android/browser/Tree;->locate:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private printTree(I)Ljava/lang/String;
    .registers 9
    .parameter "increment"

    .prologue
    .line 120
    .local p0, this:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    const-string v4, ""

    .line 121
    .local v4, s:Ljava/lang/String;
    const-string v3, ""

    .line 122
    .local v3, inc:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, p1, :cond_1d

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 125
    :cond_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    check-cast v5, Lcom/android/browser/FolderItem;

    invoke-virtual {v5}, Lcom/android/browser/FolderItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v5, p0, Lcom/android/browser/Tree;->leafs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tree;

    .line 127
    .local v0, child:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x2

    invoke-direct {v0, v6}, Lcom/android/browser/Tree;->printTree(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    .line 129
    .end local v0           #child:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    :cond_66
    return-object v4
.end method


# virtual methods
.method public addLeaf(Ljava/lang/Object;)Lcom/android/browser/Tree;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/browser/Tree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    .local p1, leaf:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/android/browser/Tree;

    invoke-direct {v0, p1}, Lcom/android/browser/Tree;-><init>(Ljava/lang/Object;)V

    .line 59
    .local v0, t:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    iget-object v1, p0, Lcom/android/browser/Tree;->leafs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iput-object p0, v0, Lcom/android/browser/Tree;->parent:Lcom/android/browser/Tree;

    .line 61
    iget-object v1, p0, Lcom/android/browser/Tree;->locate:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/android/browser/Tree;->locate:Ljava/util/HashMap;

    .line 62
    iget-object v1, p0, Lcom/android/browser/Tree;->locate:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v0
.end method

.method public addLeaf(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    .local p1, root:Ljava/lang/Object;,"TT;"
    .local p2, leaf:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/android/browser/Tree;->locate:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    iget-object v0, p0, Lcom/android/browser/Tree;->locate:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tree;

    invoke-virtual {v0, p2}, Lcom/android/browser/Tree;->addLeaf(Ljava/lang/Object;)Lcom/android/browser/Tree;

    .line 55
    :goto_13
    return-void

    .line 53
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/browser/Tree;->addLeaf(Ljava/lang/Object;)Lcom/android/browser/Tree;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/browser/Tree;->addLeaf(Ljava/lang/Object;)Lcom/android/browser/Tree;

    goto :goto_13
.end method

.method public getViews(I)Ljava/util/ArrayList;
    .registers 12
    .parameter "increment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v4, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 138
    .local v3, inc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, p1, :cond_10

    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 142
    :cond_10
    iget-object v5, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    check-cast v5, Lcom/android/browser/FolderItem;

    iget-object v6, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    check-cast v6, Lcom/android/browser/FolderItem;

    invoke-virtual {v6}, Lcom/android/browser/FolderItem;->getPaddingLeft()I

    move-result v6

    add-int v7, v6, v3

    iget-object v6, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    check-cast v6, Lcom/android/browser/FolderItem;

    invoke-virtual {v6}, Lcom/android/browser/FolderItem;->getPaddingTop()I

    move-result v6

    add-int/lit8 v8, v6, -0xa

    iget-object v6, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    check-cast v6, Lcom/android/browser/FolderItem;

    invoke-virtual {v6}, Lcom/android/browser/FolderItem;->getPaddingRight()I

    move-result v9

    iget-object v6, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    check-cast v6, Lcom/android/browser/FolderItem;

    invoke-virtual {v6}, Lcom/android/browser/FolderItem;->getPaddingBottom()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v5, v7, v8, v9, v6}, Lcom/android/browser/FolderItem;->setPadding(IIII)V

    .line 146
    iget-object v5, p0, Lcom/android/browser/Tree;->head:Ljava/lang/Object;

    check-cast v5, Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v5, p0, Lcom/android/browser/Tree;->leafs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tree;

    .line 149
    .local v0, child:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    add-int/lit8 v5, p1, 0x12

    invoke-virtual {v0, v5}, Lcom/android/browser/Tree;->getViews(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4a

    .line 151
    .end local v0           #child:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    :cond_60
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    .local p0, this:Lcom/android/browser/Tree;,"Lcom/android/browser/Tree<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/Tree;->printTree(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
