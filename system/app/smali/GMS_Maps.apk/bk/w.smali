.class Lbk/w;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbk/s;

.field private b:Lbk/u;

.field private c:Lbk/m;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lbk/s;)V
    .registers 2
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lbk/w;->a:Lbk/s;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 793
    invoke-direct {p0}, Lbk/w;->a()V

    .line 794
    return-void
.end method

.method private a([BII)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    move v1, p3

    move v0, p2

    .line 828
    :goto_2
    if-lez v1, :cond_29

    .line 829
    invoke-direct {p0}, Lbk/w;->b()V

    .line 830
    iget-object v2, p0, Lbk/w;->c:Lbk/m;

    if-nez v2, :cond_f

    .line 831
    if-ne v1, p3, :cond_29

    .line 833
    const/4 v0, -0x1

    .line 849
    :goto_e
    return v0

    .line 838
    :cond_f
    iget v2, p0, Lbk/w;->d:I

    iget v3, p0, Lbk/w;->e:I

    sub-int/2addr v2, v3

    .line 839
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 840
    if-eqz p1, :cond_22

    .line 841
    iget-object v3, p0, Lbk/w;->c:Lbk/m;

    iget v4, p0, Lbk/w;->e:I

    invoke-virtual {v3, p1, v4, v0, v2}, Lbk/m;->a([BIII)V

    .line 842
    add-int/2addr v0, v2

    .line 844
    :cond_22
    iget v3, p0, Lbk/w;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lbk/w;->e:I

    .line 845
    sub-int/2addr v1, v2

    .line 846
    goto :goto_2

    .line 849
    :cond_29
    sub-int v0, p3, v1

    goto :goto_e
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 888
    new-instance v0, Lbk/u;

    iget-object v1, p0, Lbk/w;->a:Lbk/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbk/u;-><init>(Lbk/d;Lbk/t;)V

    iput-object v0, p0, Lbk/w;->b:Lbk/u;

    .line 889
    iget-object v0, p0, Lbk/w;->b:Lbk/u;

    invoke-virtual {v0}, Lbk/u;->a()Lbk/m;

    move-result-object v0

    iput-object v0, p0, Lbk/w;->c:Lbk/m;

    .line 890
    iget-object v0, p0, Lbk/w;->c:Lbk/m;

    invoke-virtual {v0}, Lbk/m;->b()I

    move-result v0

    iput v0, p0, Lbk/w;->d:I

    .line 891
    iput v3, p0, Lbk/w;->e:I

    .line 892
    iput v3, p0, Lbk/w;->f:I

    .line 893
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 901
    iget-object v0, p0, Lbk/w;->c:Lbk/m;

    if-eqz v0, :cond_2c

    iget v0, p0, Lbk/w;->e:I

    iget v1, p0, Lbk/w;->d:I

    if-ne v0, v1, :cond_2c

    .line 904
    iget v0, p0, Lbk/w;->f:I

    iget v1, p0, Lbk/w;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lbk/w;->f:I

    .line 905
    iput v2, p0, Lbk/w;->e:I

    .line 906
    iget-object v0, p0, Lbk/w;->b:Lbk/u;

    invoke-virtual {v0}, Lbk/u;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 907
    iget-object v0, p0, Lbk/w;->b:Lbk/u;

    invoke-virtual {v0}, Lbk/u;->a()Lbk/m;

    move-result-object v0

    iput-object v0, p0, Lbk/w;->c:Lbk/m;

    .line 908
    iget-object v0, p0, Lbk/w;->c:Lbk/m;

    invoke-virtual {v0}, Lbk/m;->b()I

    move-result v0

    iput v0, p0, Lbk/w;->d:I

    .line 914
    :cond_2c
    :goto_2c
    return-void

    .line 910
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lbk/w;->c:Lbk/m;

    .line 911
    iput v2, p0, Lbk/w;->d:I

    goto :goto_2c
.end method


# virtual methods
.method public available()I
    .registers 3

    .prologue
    .line 864
    iget v0, p0, Lbk/w;->f:I

    iget v1, p0, Lbk/w;->e:I

    add-int/2addr v0, v1

    .line 865
    iget-object v1, p0, Lbk/w;->a:Lbk/s;

    invoke-virtual {v1}, Lbk/s;->b()I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method public mark(I)V
    .registers 4
    .parameter

    .prologue
    .line 876
    iget v0, p0, Lbk/w;->f:I

    iget v1, p0, Lbk/w;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lbk/w;->g:I

    .line 877
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 870
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    .line 854
    invoke-direct {p0}, Lbk/w;->b()V

    .line 855
    iget-object v0, p0, Lbk/w;->c:Lbk/m;

    if-nez v0, :cond_9

    .line 856
    const/4 v0, -0x1

    .line 858
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lbk/w;->c:Lbk/m;

    iget v1, p0, Lbk/w;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbk/w;->e:I

    invoke-virtual {v0, v1}, Lbk/m;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_8
.end method

.method public read([BII)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    if-nez p1, :cond_8

    .line 799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 800
    :cond_8
    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_16

    .line 801
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 803
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lbk/w;->a([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 4

    .prologue
    .line 882
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lbk/w;->a()V

    .line 883
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lbk/w;->g:I

    invoke-direct {p0, v0, v1, v2}, Lbk/w;->a([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 884
    monitor-exit p0

    return-void

    .line 882
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 7
    .parameter

    .prologue
    const-wide/32 v0, 0x7fffffff

    .line 808
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_f

    .line 809
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 810
    :cond_f
    cmp-long v2, p1, v0

    if-lez v2, :cond_14

    move-wide p1, v0

    .line 813
    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-direct {p0, v0, v1, v2}, Lbk/w;->a([BII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
