.class Lr/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I


# direct methods
.method constructor <init>(JIIIIIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2791
    iput-wide p1, p0, Lr/D;->a:J

    .line 2792
    iput p3, p0, Lr/D;->b:I

    .line 2793
    iput p6, p0, Lr/D;->c:I

    .line 2794
    iput p4, p0, Lr/D;->d:I

    .line 2795
    iput p5, p0, Lr/D;->e:I

    .line 2796
    iput p7, p0, Lr/D;->f:I

    .line 2797
    iput p8, p0, Lr/D;->g:I

    .line 2798
    iput p9, p0, Lr/D;->h:I

    .line 2799
    return-void
.end method

.method private static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 2826
    ushr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method static a([BIII)Lr/D;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2856
    invoke-static {p0, p1}, Lr/w;->c([BI)J

    move-result-wide v1

    add-int/lit8 v0, p1, 0x8

    .line 2857
    invoke-static {p0, v0}, Lr/w;->a([BI)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    .line 2858
    invoke-static {p0, v0}, Lr/w;->a([BI)I

    move-result v5

    add-int/lit8 v0, v0, 0x4

    .line 2859
    invoke-static {p0, v0}, Lr/w;->a([BI)I

    move-result v7

    .line 2860
    invoke-static {v4}, Lr/D;->a(I)I

    move-result v3

    .line 2861
    invoke-static {v4}, Lr/D;->b(I)I

    move-result v6

    .line 2862
    invoke-static {v5}, Lr/D;->c(I)I

    move-result v4

    .line 2863
    invoke-static {v5}, Lr/D;->d(I)I

    move-result v5

    .line 2864
    new-instance v0, Lr/D;

    move v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lr/D;-><init>(JIIIIIII)V

    return-object v0
.end method

.method private static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 2830
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static b([BI)J
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2869
    invoke-static {p0, p1}, Lr/w;->c([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(I)I
    .registers 2
    .parameter

    .prologue
    .line 2834
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method static c([BI)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2873
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lr/w;->a([BI)I

    move-result v0

    .line 2874
    invoke-static {v0}, Lr/D;->c(I)I

    move-result v0

    return v0
.end method

.method private static d(I)I
    .registers 2
    .parameter

    .prologue
    .line 2838
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method static d([BI)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2878
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lr/w;->a([BI)I

    move-result v0

    .line 2879
    invoke-static {v0}, Lr/D;->d(I)I

    move-result v0

    return v0
.end method

.method static e([BI)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2883
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lr/w;->a([BI)I

    move-result v0

    .line 2884
    invoke-static {v0}, Lr/D;->b(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method a([BI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2842
    iget-wide v0, p0, Lr/D;->a:J

    invoke-static {p1, p2, v0, v1}, Lr/w;->a([BIJ)V

    add-int/lit8 v0, p2, 0x8

    .line 2843
    iget v1, p0, Lr/D;->b:I

    shl-int/lit8 v1, v1, 0x5

    iget v2, p0, Lr/D;->c:I

    or-int/2addr v1, v2

    .line 2844
    invoke-static {v1}, Lr/D;->a(I)I

    move-result v2

    iget v3, p0, Lr/D;->b:I

    if-eq v2, v3, :cond_31

    .line 2845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not pack data offset of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lr/D;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2847
    :cond_31
    invoke-static {v1}, Lr/D;->b(I)I

    move-result v2

    iget v3, p0, Lr/D;->c:I

    if-eq v2, v3, :cond_54

    .line 2848
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not pack refCount of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lr/D;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2850
    :cond_54
    invoke-static {p1, v0, v1}, Lr/w;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 2851
    iget v1, p0, Lr/D;->d:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lr/D;->e:I

    or-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lr/w;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 2852
    iget v1, p0, Lr/D;->f:I

    invoke-static {p1, v0, v1}, Lr/w;->a([BII)V

    .line 2853
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2803
    if-ne p0, p1, :cond_5

    .line 2813
    :cond_4
    :goto_4
    return v0

    .line 2807
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 2808
    goto :goto_4

    .line 2811
    :cond_13
    check-cast p1, Lr/D;

    .line 2813
    iget v2, p0, Lr/D;->g:I

    iget v3, p1, Lr/D;->g:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lr/D;->h:I

    iget v3, p1, Lr/D;->h:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2820
    iget v0, p0, Lr/D;->g:I

    .line 2821
    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lr/D;->h:I

    add-int/2addr v0, v1

    .line 2822
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lr/D;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Off:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/D;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KeyLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/D;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/D;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/D;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/D;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ShardIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/D;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
