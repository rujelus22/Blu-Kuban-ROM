.class public abstract LBJ;
.super Ljava/lang/Object;
.source "OffsetTreeNode.java"

# interfaces
.implements LBI;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainerType:",
        "Ljava/lang/Object;",
        "NodeType:",
        "LBJ",
        "<TContainerType;TNodeType;>;>",
        "Ljava/lang/Object;",
        "LBI;",
        "Ljava/lang/Iterable",
        "<TNodeType;>;"
    }
.end annotation


# instance fields
.field protected final a:LFr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFr",
            "<TContainerType;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TNodeType;>;"
        }
    .end annotation
.end field

.field protected final b:LFr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFr",
            "<TContainerType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LFr;LFr;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<TContainerType;>;",
            "LFr",
            "<TContainerType;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LBJ;->a:Ljava/util/List;

    .line 34
    iput-object p1, p0, LBJ;->a:LFr;

    .line 35
    iput-object p2, p0, LBJ;->b:LFr;

    .line 36
    return-void
.end method

.method private a(I)I
    .registers 5
    .parameter

    .prologue
    .line 213
    new-instance v0, LBM;

    invoke-direct {v0, p0, p1}, LBM;-><init>(LBJ;I)V

    .line 223
    iget-object v1, p0, LBJ;->a:Ljava/util/List;

    new-instance v2, LBN;

    invoke-direct {v2, p0}, LBN;-><init>(LBJ;)V

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 239
    if-ltz v0, :cond_13

    .line 242
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method private a(LFr;)LBJ;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<TContainerType;>;)TNodeType;"
        }
    .end annotation

    .prologue
    .line 100
    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, LFr;->a(Ljava/lang/Object;I)LFr;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0, p1}, LBJ;->a(LFr;LFr;)LBJ;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LBJ;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    return-object v0
.end method

.method private b(II)Ljava/lang/Iterable;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/Iterable",
            "<TNodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    if-ltz p1, :cond_19

    move v0, v1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 174
    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1b

    :goto_10
    invoke-static {v1}, LafQ;->a(Z)V

    .line 175
    new-instance v0, LBK;

    invoke-direct {v0, p0, p1, p2}, LBK;-><init>(LBJ;II)V

    return-object v0

    :cond_19
    move v0, v2

    .line 173
    goto :goto_5

    :cond_1b
    move v1, v2

    .line 174
    goto :goto_10
.end method


# virtual methods
.method public final a()LBJ;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TNodeType;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, LBJ;->b:LFr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LFr;->a(Ljava/lang/Object;I)LFr;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, LBJ;->a(LFr;)LBJ;

    move-result-object v0

    .line 119
    iget-object v1, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method public final a(I)LBJ;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TNodeType;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, LBJ;->a(I)I

    move-result v0

    .line 252
    if-ltz v0, :cond_f

    .line 253
    iget-object v1, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBJ;

    .line 255
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a(LBJ;)LBJ;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNodeType;)TNodeType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 129
    if-ltz v2, :cond_1e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, LafQ;->a(Z)V

    .line 131
    iget-object v0, p1, LBJ;->a:LFr;

    .line 132
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, LFr;->a(Ljava/lang/Object;I)LFr;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, LBJ;->a(LFr;)LBJ;

    move-result-object v0

    .line 134
    iget-object v1, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 135
    return-object v0

    :cond_1e
    move v0, v1

    .line 129
    goto :goto_a
.end method

.method protected abstract a(LFr;LFr;)LBJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<TContainerType;>;",
            "LFr",
            "<TContainerType;>;)TNodeType;"
        }
    .end annotation
.end method

.method public a(II)Ljava/lang/Iterable;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/Iterable",
            "<TNodeType;>;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, LBJ;->f()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    invoke-virtual {p0}, LBJ;->g()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 161
    if-gt v1, v0, :cond_19

    .line 162
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, LBJ;->b(II)Ljava/lang/Iterable;

    move-result-object v0

    .line 165
    :goto_18
    return-object v0

    :cond_19
    invoke-direct {p0, v0}, LBJ;->a(I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, LBJ;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, LBJ;->b(II)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_18
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, LBJ;->a:LFr;

    invoke-interface {v0}, LFr;->a()V

    .line 43
    iget-object v0, p0, LBJ;->b:LFr;

    invoke-interface {v0}, LFr;->a()V

    .line 44
    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBJ;

    .line 47
    invoke-virtual {v0}, LBJ;->a()V

    goto :goto_10

    .line 49
    :cond_20
    return-void
.end method

.method public final a(LBJ;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNodeType;)Z"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    if-eqz v0, :cond_b

    .line 147
    invoke-virtual {p1}, LBJ;->a()V

    .line 149
    :cond_b
    return v0
.end method

.method public b()LBJ;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TNodeType;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBJ;

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, LBJ;->a:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, LBJ;->b:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v0

    iget-object v1, p0, LBJ;->b:LFr;

    invoke-interface {v1}, LFr;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .registers 3

    .prologue
    .line 75
    invoke-virtual {p0}, LBJ;->d()I

    move-result v0

    invoke-virtual {p0}, LBJ;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, LBJ;->a:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v0

    iget-object v1, p0, LBJ;->a:LFr;

    invoke-interface {v1}, LFr;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, LBJ;->b:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TNodeType;>;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, LBJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
