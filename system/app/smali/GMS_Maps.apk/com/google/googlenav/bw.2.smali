.class public Lcom/google/googlenav/bW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/bO;

.field private final b:Ljava/lang/String;

.field private final c:[I

.field private final d:I

.field private final e:Lcom/google/googlenav/cp;

.field private f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bO;Ljava/lang/String;Lcom/google/googlenav/cp;[III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 811
    iput-object p1, p0, Lcom/google/googlenav/bW;->a:Lcom/google/googlenav/bO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput v0, p0, Lcom/google/googlenav/bW;->f:I

    .line 814
    iput-object p2, p0, Lcom/google/googlenav/bW;->b:Ljava/lang/String;

    .line 815
    iput-object p3, p0, Lcom/google/googlenav/bW;->e:Lcom/google/googlenav/cp;

    .line 816
    iput-object p4, p0, Lcom/google/googlenav/bW;->c:[I

    .line 817
    iput p6, p0, Lcom/google/googlenav/bW;->d:I

    .line 818
    iput p5, p0, Lcom/google/googlenav/bW;->g:I

    .line 819
    if-eq p5, v0, :cond_1e

    .line 820
    const/4 v0, 0x0

    :goto_15
    array-length v1, p4

    if-ge v0, v1, :cond_1e

    .line 821
    aget v1, p4, v0

    if-ne v1, p5, :cond_1f

    .line 822
    iput v0, p0, Lcom/google/googlenav/bW;->f:I

    .line 827
    :cond_1e
    return-void

    .line 820
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method static synthetic a(Lcom/google/googlenav/bW;)[I
    .registers 2
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/googlenav/bW;->c:[I

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/googlenav/bW;->c:[I

    array-length v0, v0

    return v0
.end method

.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 837
    iget-object v0, p0, Lcom/google/googlenav/bW;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public b(I)Lcom/google/googlenav/ca;
    .registers 4
    .parameter

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/googlenav/bW;->a:Lcom/google/googlenav/bO;

    invoke-static {v0}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bO;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bW;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cq;

    invoke-virtual {v0}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/googlenav/bW;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 849
    iget v0, p0, Lcom/google/googlenav/bW;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 861
    iget v0, p0, Lcom/google/googlenav/bW;->f:I

    return v0
.end method
