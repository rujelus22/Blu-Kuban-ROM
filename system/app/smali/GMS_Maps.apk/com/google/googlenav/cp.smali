.class public Lcom/google/googlenav/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Lcom/google/googlenav/cd;

.field private final c:Z

.field private d:Lcom/google/googlenav/cn;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cn;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 816
    new-array v2, v3, [Lcom/google/googlenav/cd;

    iput-object v2, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    move v2, v0

    .line 817
    :goto_10
    if-ge v2, v3, :cond_2d

    .line 818
    iget-object v4, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    new-instance v5, Lcom/google/googlenav/cd;

    invoke-virtual {p1, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/googlenav/cd;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v5, v4, v2

    .line 820
    iget-object v4, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/googlenav/cd;->a(Lcom/google/googlenav/cd;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v0, v1

    .line 817
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 824
    :cond_2d
    iput-boolean v0, p0, Lcom/google/googlenav/cp;->c:Z

    .line 825
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/cp;->a:Ljava/lang/String;

    .line 826
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    iput-object v0, p0, Lcom/google/googlenav/cp;->e:Ljava/lang/String;

    .line 828
    iput-object p2, p0, Lcom/google/googlenav/cp;->d:Lcom/google/googlenav/cn;

    .line 829
    return-void

    .line 826
    :cond_44
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/googlenav/cd;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-object p1, p0, Lcom/google/googlenav/cp;->a:Ljava/lang/String;

    .line 840
    iput-object p2, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    .line 841
    iput-boolean p3, p0, Lcom/google/googlenav/cp;->c:Z

    .line 842
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/cp;)Z
    .registers 2
    .parameter

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/google/googlenav/cp;->c:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/cd;
    .registers 9

    .prologue
    .line 846
    iget-object v2, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    .line 847
    invoke-virtual {v0}, Lcom/google/googlenav/cd;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_14

    .line 851
    :goto_13
    return-object v0

    .line 846
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 851
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a(I)Lcom/google/googlenav/cd;
    .registers 3
    .parameter

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Lcom/google/googlenav/cd;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 865
    iget-boolean v1, p0, Lcom/google/googlenav/cp;->c:Z

    if-nez v1, :cond_6

    .line 873
    :cond_5
    :goto_5
    return-object v0

    .line 868
    :cond_6
    iget-object v3, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v4, :cond_5

    aget-object v1, v3, v2

    .line 869
    invoke-virtual {v1}, Lcom/google/googlenav/cd;->b()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v1}, Lcom/google/googlenav/cd;->a()Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v0, v1

    .line 870
    goto :goto_5

    .line 868
    :cond_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/googlenav/cp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/googlenav/cp;->b:[Lcom/google/googlenav/cd;

    array-length v0, v0

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/google/googlenav/cp;->c:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/googlenav/cp;->e:Ljava/lang/String;

    return-object v0
.end method
