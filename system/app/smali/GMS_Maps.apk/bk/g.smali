.class public final Lbk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lbk/g;->d:Ljava/io/OutputStream;

    .line 51
    iput-object p1, p0, Lbk/g;->a:[B

    .line 52
    iput p2, p0, Lbk/g;->c:I

    .line 53
    add-int v0, p2, p3

    iput v0, p0, Lbk/g;->b:I

    .line 54
    return-void
.end method

.method public static a([B)Lbk/g;
    .registers 3
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lbk/g;->a([BII)Lbk/g;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lbk/g;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lbk/g;

    invoke-direct {v0, p0, p1, p2}, Lbk/g;-><init>([BII)V

    return-object v0
.end method

.method public static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 971
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbk/y;->a(II)I

    move-result v0

    invoke-static {v0}, Lbk/g;->d(I)I

    move-result v0

    return v0
.end method

.method public static b(IJ)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-static {p0}, Lbk/g;->b(I)I

    move-result v0

    invoke-static {p1, p2}, Lbk/g;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILbk/d;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 511
    invoke-static {p0}, Lbk/g;->b(I)I

    move-result v0

    invoke-static {p1}, Lbk/g;->b(Lbk/d;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILbk/p;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 502
    invoke-static {p0}, Lbk/g;->b(I)I

    move-result v0

    invoke-static {p1}, Lbk/g;->b(Lbk/p;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(J)I
    .registers 3
    .parameter

    .prologue
    .line 641
    invoke-static {p0, p1}, Lbk/g;->d(J)I

    move-result v0

    return v0
.end method

.method public static b(Lbk/d;)I
    .registers 3
    .parameter

    .prologue
    .line 739
    invoke-virtual {p0}, Lbk/d;->b()I

    move-result v0

    invoke-static {v0}, Lbk/g;->d(I)I

    move-result v0

    invoke-virtual {p0}, Lbk/d;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Lbk/p;)I
    .registers 3
    .parameter

    .prologue
    .line 721
    invoke-interface {p0}, Lbk/p;->g()I

    move-result v0

    .line 722
    invoke-static {v0}, Lbk/g;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 798
    iget-object v0, p0, Lbk/g;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_b

    .line 800
    new-instance v0, Lbk/h;

    invoke-direct {v0}, Lbk/h;-><init>()V

    throw v0

    .line 805
    :cond_b
    iget-object v0, p0, Lbk/g;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lbk/g;->a:[B

    iget v2, p0, Lbk/g;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 806
    iput v3, p0, Lbk/g;->c:I

    .line 807
    return-void
.end method

.method public static d(I)I
    .registers 2
    .parameter

    .prologue
    .line 996
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1000
    :goto_5
    return v0

    .line 997
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    .line 998
    :cond_c
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    .line 999
    :cond_13
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    .line 1000
    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method

.method public static d(J)I
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1018
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 1027
    :goto_a
    return v0

    .line 1019
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_a

    .line 1020
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_a

    .line 1021
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_a

    .line 1022
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    goto :goto_a

    .line 1023
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    goto :goto_a

    .line 1024
    :cond_40
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    goto :goto_a

    .line 1025
    :cond_49
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    goto :goto_a

    .line 1026
    :cond_53
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    goto :goto_a

    .line 1027
    :cond_5d
    const/16 v0, 0xa

    goto :goto_a
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 824
    iget-object v0, p0, Lbk/g;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    .line 825
    iget v0, p0, Lbk/g;->b:I

    iget v1, p0, Lbk/g;->c:I

    sub-int/2addr v0, v1

    return v0

    .line 827
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(B)V
    .registers 5
    .parameter

    .prologue
    .line 863
    iget v0, p0, Lbk/g;->c:I

    iget v1, p0, Lbk/g;->b:I

    if-ne v0, v1, :cond_9

    .line 864
    invoke-direct {p0}, Lbk/g;->c()V

    .line 867
    :cond_9
    iget-object v0, p0, Lbk/g;->a:[B

    iget v1, p0, Lbk/g;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbk/g;->c:I

    aput-byte p1, v0, v1

    .line 868
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 872
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lbk/g;->a(B)V

    .line 873
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 966
    invoke-static {p1, p2}, Lbk/y;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lbk/g;->c(I)V

    .line 967
    return-void
.end method

.method public a(IJ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbk/g;->a(II)V

    .line 131
    invoke-virtual {p0, p2, p3}, Lbk/g;->a(J)V

    .line 132
    return-void
.end method

.method public a(ILbk/d;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lbk/g;->a(II)V

    .line 201
    invoke-virtual {p0, p2}, Lbk/g;->a(Lbk/d;)V

    .line 202
    return-void
.end method

.method public a(ILbk/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lbk/g;->a(II)V

    .line 194
    invoke-virtual {p0, p2}, Lbk/g;->a(Lbk/p;)V

    .line 195
    return-void
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0, p1, p2}, Lbk/g;->c(J)V

    .line 295
    return-void
.end method

.method public a(Lbk/d;)V
    .registers 3
    .parameter

    .prologue
    .line 357
    invoke-virtual {p1}, Lbk/d;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lbk/g;->c(I)V

    .line 358
    invoke-virtual {p0, p1}, Lbk/g;->c(Lbk/d;)V

    .line 359
    return-void
.end method

.method public a(Lbk/d;II)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 919
    iget v0, p0, Lbk/g;->b:I

    iget v1, p0, Lbk/g;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_15

    .line 921
    iget-object v0, p0, Lbk/g;->a:[B

    iget v1, p0, Lbk/g;->c:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lbk/d;->a([BIII)V

    .line 922
    iget v0, p0, Lbk/g;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lbk/g;->c:I

    .line 961
    :cond_14
    :goto_14
    return-void

    .line 926
    :cond_15
    iget v0, p0, Lbk/g;->b:I

    iget v1, p0, Lbk/g;->c:I

    sub-int/2addr v0, v1

    .line 927
    iget-object v1, p0, Lbk/g;->a:[B

    iget v2, p0, Lbk/g;->c:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lbk/d;->a([BIII)V

    .line 928
    add-int v1, p2, v0

    .line 929
    sub-int v0, p3, v0

    .line 930
    iget v2, p0, Lbk/g;->b:I

    iput v2, p0, Lbk/g;->c:I

    .line 931
    invoke-direct {p0}, Lbk/g;->c()V

    .line 936
    iget v2, p0, Lbk/g;->b:I

    if-gt v0, v2, :cond_38

    .line 938
    iget-object v2, p0, Lbk/g;->a:[B

    invoke-virtual {p1, v2, v1, v7, v0}, Lbk/d;->a([BIII)V

    .line 939
    iput v0, p0, Lbk/g;->c:I

    goto :goto_14

    .line 945
    :cond_38
    invoke-virtual {p1}, Lbk/d;->d()Ljava/io/InputStream;

    move-result-object v2

    .line 946
    int-to-long v3, v1

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_56

    .line 947
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_4e
    iget-object v1, p0, Lbk/g;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Lbk/g;->a:[B

    invoke-virtual {v1, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 957
    sub-int/2addr v0, v3

    .line 950
    :cond_56
    if-lez v0, :cond_14

    .line 951
    iget v1, p0, Lbk/g;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 952
    iget-object v3, p0, Lbk/g;->a:[B

    invoke-virtual {v2, v3, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 953
    if-eq v3, v1, :cond_4e

    .line 954
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lbk/p;)V
    .registers 3
    .parameter

    .prologue
    .line 351
    invoke-interface {p1}, Lbk/p;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lbk/g;->c(I)V

    .line 352
    invoke-interface {p1, p0}, Lbk/p;->a(Lbk/g;)V

    .line 353
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 841
    invoke-virtual {p0}, Lbk/g;->a()I

    move-result v0

    if-eqz v0, :cond_e

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_e
    return-void
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 980
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 981
    invoke-virtual {p0, p1}, Lbk/g;->a(I)V

    .line 982
    return-void

    .line 984
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lbk/g;->a(I)V

    .line 985
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public c(J)V
    .registers 7
    .parameter

    .prologue
    .line 1006
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 1007
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lbk/g;->a(I)V

    .line 1008
    return-void

    .line 1010
    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lbk/g;->a(I)V

    .line 1011
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public c(Lbk/d;)V
    .registers 4
    .parameter

    .prologue
    .line 877
    const/4 v0, 0x0

    invoke-virtual {p1}, Lbk/d;->b()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lbk/g;->a(Lbk/d;II)V

    .line 878
    return-void
.end method
