.class final LaM/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput v0, p0, LaM/bv;->a:I

    .line 898
    iput v0, p0, LaM/bv;->b:I

    .line 899
    iput v0, p0, LaM/bv;->c:I

    return-void
.end method

.method synthetic constructor <init>(LaM/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 895
    invoke-direct {p0}, LaM/bv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 939
    iget v0, p0, LaM/bv;->a:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ai;)Ljava/lang/Iterable;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 903
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v2, v1

    .line 905
    :goto_6
    const/4 v0, 0x3

    if-gt v2, v0, :cond_2c

    .line 906
    invoke-virtual {p1, v2}, Lcom/google/googlenav/ai;->g(I)[Lcom/google/googlenav/aq;

    move-result-object v4

    .line 907
    if-nez v4, :cond_13

    .line 905
    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_13
    move v0, v1

    .line 911
    :goto_14
    array-length v5, v4

    if-ge v0, v5, :cond_f

    .line 912
    aget-object v5, v4, v0

    .line 913
    invoke-virtual {v5}, Lcom/google/googlenav/aq;->b()Ljava/lang/String;

    move-result-object v5

    .line 914
    if-eqz v5, :cond_29

    .line 915
    new-instance v6, Lcom/google/googlenav/ui/bx;

    sget v7, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v6, v5, v7}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 920
    :cond_2c
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->M()Lcom/google/googlenav/aq;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_56

    .line 922
    invoke-virtual {v0}, Lcom/google/googlenav/aq;->b()Ljava/lang/String;

    move-result-object v1

    .line 923
    if-eqz v1, :cond_42

    .line 924
    new-instance v2, Lcom/google/googlenav/ui/bx;

    sget v4, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v2, v1, v4}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_42
    invoke-virtual {v0}, Lcom/google/googlenav/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 928
    iget v0, p0, LaM/bv;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaM/bv;->a:I

    .line 935
    :goto_4e
    return-object v3

    .line 930
    :cond_4f
    iget v0, p0, LaM/bv;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaM/bv;->b:I

    goto :goto_4e

    .line 933
    :cond_56
    iget v0, p0, LaM/bv;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaM/bv;->c:I

    goto :goto_4e
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 895
    check-cast p1, Lcom/google/googlenav/ai;

    invoke-virtual {p0, p1}, LaM/bv;->a(Lcom/google/googlenav/ai;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 943
    iget v0, p0, LaM/bv;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 947
    iget v0, p0, LaM/bv;->c:I

    return v0
.end method
