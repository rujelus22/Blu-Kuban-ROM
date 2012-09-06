.class public Lyh;
.super Ljava/lang/Object;
.source "ModelCacheImpl.java"

# interfaces
.implements Lyg;


# instance fields
.field private a:I

.field private final a:Lwb;

.field private final a:Z

.field private a:[I

.field private b:I

.field private final b:Z

.field private b:[I

.field private final c:Z


# direct methods
.method public constructor <init>(Lwb;)V
    .registers 3
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lyh;->a:Lwb;

    .line 39
    invoke-interface {p1}, Lwb;->e()Z

    move-result v0

    iput-boolean v0, p0, Lyh;->a:Z

    .line 40
    invoke-interface {p1}, Lwb;->f()Z

    move-result v0

    iput-boolean v0, p0, Lyh;->b:Z

    .line 41
    invoke-interface {p1}, Lwb;->g()Z

    move-result v0

    iput-boolean v0, p0, Lyh;->c:Z

    .line 43
    invoke-virtual {p0}, Lyh;->a()V

    .line 44
    return-void
.end method

.method static synthetic a(Lyh;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lyh;->b:I

    return v0
.end method

.method private a()[I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lyh;->b:[I

    if-nez v0, :cond_c

    .line 92
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0}, Lwb;->b()[I

    move-result-object v0

    iput-object v0, p0, Lyh;->b:[I

    .line 94
    :cond_c
    iget-object v0, p0, Lyh;->b:[I

    return-object v0
.end method

.method private a(II)[I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lyh;->a:Z

    if-eqz v0, :cond_b

    .line 73
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1, p2}, Lwb;->c(II)[I

    move-result-object v0

    .line 78
    :goto_a
    return-object v0

    .line 75
    :cond_b
    iget-object v0, p0, Lyh;->a:[I

    if-nez v0, :cond_17

    .line 76
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0}, Lwb;->a()[I

    move-result-object v0

    iput-object v0, p0, Lyh;->a:[I

    .line 78
    :cond_17
    iget-object v0, p0, Lyh;->a:[I

    goto :goto_a
.end method


# virtual methods
.method public a(I)I
    .registers 5
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lyh;->b:Z

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)I

    move-result v0

    .line 116
    :cond_a
    :goto_a
    return v0

    .line 102
    :cond_b
    invoke-direct {p0}, Lyh;->a()[I

    move-result-object v1

    .line 103
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 104
    if-gez v0, :cond_18

    .line 105
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 108
    :cond_18
    array-length v2, v1

    if-lt v0, v2, :cond_2b

    .line 109
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0}, Lwb;->a()I

    move-result v0

    .line 110
    if-lt p1, v0, :cond_a

    .line 111
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Requested paragraph index past model end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2b
    aget v0, v1, v0

    goto :goto_a
.end method

.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)LvB;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 136
    if-ltz p1, :cond_14

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 139
    iget v0, p0, Lyh;->a:I

    if-lt p1, v0, :cond_16

    iget v0, p0, Lyh;->b:I

    if-gt p1, v0, :cond_16

    .line 141
    new-instance v0, Lyi;

    invoke-direct {v0, p0}, Lyi;-><init>(Lyh;)V

    .line 186
    :cond_13
    :goto_13
    return-object v0

    .line 136
    :cond_14
    const/4 v0, 0x0

    goto :goto_3

    .line 174
    :cond_16
    iget-boolean v0, p0, Lyh;->c:Z

    if-eqz v0, :cond_21

    .line 175
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1, p2}, Lwb;->a(II)LvB;

    move-result-object v0

    goto :goto_13

    .line 179
    :cond_21
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)LvB;

    move-result-object v0

    .line 180
    invoke-interface {v0}, LvB;->a()I

    move-result v1

    invoke-static {v1}, LwT;->a(I)LwT;

    move-result-object v1

    sget-object v2, LwT;->a:LwT;

    if-ne v1, v2, :cond_13

    .line 182
    iput p1, p0, Lyh;->a:I

    .line 183
    invoke-interface {v0}, LvB;->b()I

    move-result v1

    iput v1, p0, Lyh;->b:I

    goto :goto_13
.end method

.method public a()Lvo;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0}, Lwb;->a()Lvo;

    move-result-object v0

    return-object v0
.end method

.method public a(II)LwJ;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lyh;->a(II)[I

    move-result-object v4

    .line 57
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0}, Lwb;->a()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lyh;->a:Lwb;

    add-int v1, p1, p2

    invoke-interface {v0, p1, v1}, Lwb;->a(II)[I

    move-result-object v5

    .line 60
    :goto_19
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0}, Lwb;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lyh;->a:Lwb;

    add-int v1, p1, p2

    invoke-interface {v0, p1, v1}, Lwb;->b(II)[I

    move-result-object v6

    .line 63
    :goto_29
    new-instance v0, LwK;

    iget-object v1, p0, Lyh;->a:Lwb;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, LwK;-><init>(Lwb;II[I[I[I)V

    return-object v0

    .line 57
    :cond_33
    new-array v5, v2, [I

    goto :goto_19

    .line 60
    :cond_36
    new-array v6, v2, [I

    goto :goto_29
.end method

.method public a(I)Lwi;
    .registers 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)Lwi;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lwk;
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)Lwk;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 48
    iput-object v1, p0, Lyh;->a:[I

    .line 49
    iput-object v1, p0, Lyh;->b:[I

    .line 50
    iput v0, p0, Lyh;->a:I

    .line 51
    iput v0, p0, Lyh;->b:I

    .line 52
    return-void
.end method

.method public a(I)[LvD;
    .registers 3
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)[LvD;

    move-result-object v0

    return-object v0
.end method

.method public b(I)I
    .registers 3
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->b(I)I

    move-result v0

    return v0
.end method

.method public b(I)Lwk;
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lyh;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->b(I)Lwk;

    move-result-object v0

    return-object v0
.end method
