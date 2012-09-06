.class public Lcom/google/googlenav/bU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/bO;

.field private final b:[Lcom/google/googlenav/bW;

.field private final c:[Ljava/lang/String;

.field private d:I

.field private e:I

.field private final f:I

.field private g:I

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bO;[Lcom/google/googlenav/bW;Ljava/util/List;Ljava/util/List;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p2, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    .line 663
    iput-object p3, p0, Lcom/google/googlenav/bU;->h:Ljava/util/List;

    .line 664
    iput-object p4, p0, Lcom/google/googlenav/bU;->i:Ljava/util/List;

    .line 665
    iput p5, p0, Lcom/google/googlenav/bU;->f:I

    .line 667
    iget-object v0, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bU;->c:[Ljava/lang/String;

    .line 668
    const/4 v0, 0x0

    :goto_15
    iget-object v1, p0, Lcom/google/googlenav/bU;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 669
    iget-object v1, p0, Lcom/google/googlenav/bU;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/bW;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 671
    :cond_29
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bU;)I
    .registers 2
    .parameter

    .prologue
    .line 622
    iget v0, p0, Lcom/google/googlenav/bU;->g:I

    return v0
.end method

.method private e(I)I
    .registers 3
    .parameter

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->c()I

    move-result v0

    return v0
.end method

.method private k()Lcom/google/googlenav/bW;
    .registers 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/E;
    .registers 4

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bO;

    invoke-static {v0}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bO;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    iget v2, p0, Lcom/google/googlenav/bU;->e:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/google/googlenav/bU;->d:I

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bW;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/E;

    return-object v0
.end method

.method public a(I)Lcom/google/googlenav/E;
    .registers 5
    .parameter

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bO;

    invoke-static {v0}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bO;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    iget v2, p0, Lcom/google/googlenav/bU;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bW;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/E;

    return-object v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    iget v1, p0, Lcom/google/googlenav/bU;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->a()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 692
    iput p1, p0, Lcom/google/googlenav/bU;->d:I

    .line 693
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 696
    iget v0, p0, Lcom/google/googlenav/bU;->d:I

    return v0
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 700
    iput p1, p0, Lcom/google/googlenav/bU;->e:I

    .line 701
    invoke-direct {p0, p1}, Lcom/google/googlenav/bU;->e(I)I

    move-result v0

    .line 702
    if-gez v0, :cond_9

    .line 703
    const/4 v0, 0x0

    .line 705
    :cond_9
    iput v0, p0, Lcom/google/googlenav/bU;->d:I

    .line 706
    return-void
.end method

.method public d()Lcom/google/googlenav/bW;
    .registers 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/googlenav/bU;->b:[Lcom/google/googlenav/bW;

    iget v1, p0, Lcom/google/googlenav/bU;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d(I)V
    .registers 2
    .parameter

    .prologue
    .line 746
    iput p1, p0, Lcom/google/googlenav/bU;->g:I

    .line 747
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/google/googlenav/bU;->k()Lcom/google/googlenav/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 742
    iget v0, p0, Lcom/google/googlenav/bU;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/google/googlenav/bU;->k()Lcom/google/googlenav/bW;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bW;->b(I)Lcom/google/googlenav/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/googlenav/bU;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/googlenav/bU;->i:Ljava/util/List;

    return-object v0
.end method

.method public j()[I
    .registers 2

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/google/googlenav/bU;->k()Lcom/google/googlenav/bW;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bW;->a(Lcom/google/googlenav/bW;)[I

    move-result-object v0

    return-object v0
.end method
