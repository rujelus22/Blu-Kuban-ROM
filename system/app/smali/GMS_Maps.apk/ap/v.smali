.class public LaP/v;
.super Lcom/google/common/collect/dE;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cW;


# instance fields
.field private final a:LaP/d;

.field private final b:LaP/w;

.field private c:Z


# direct methods
.method public constructor <init>(LaP/d;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/google/common/collect/dE;-><init>()V

    .line 29
    iput-object p1, p0, LaP/v;->a:LaP/d;

    .line 30
    new-instance v0, LaP/w;

    invoke-direct {v0, v1, v1}, LaP/w;-><init>(II)V

    iput-object v0, p0, LaP/v;->b:LaP/w;

    .line 31
    iput-boolean v1, p0, LaP/v;->c:Z

    .line 32
    return-void
.end method

.method private a(II)LaP/t;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LaP/v;->a:LaP/d;

    invoke-virtual {v0, p1, p2}, LaP/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 71
    const/4 v0, 0x0

    .line 82
    :goto_9
    return-object v0

    .line 75
    :cond_a
    iget-object v0, p0, LaP/v;->a:LaP/d;

    invoke-virtual {v0, p2}, LaP/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 76
    add-int/lit8 p1, p1, -0x1

    .line 77
    iget-object v0, p0, LaP/v;->a:LaP/d;

    invoke-virtual {v0, p1}, LaP/d;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 82
    :goto_1c
    new-instance v1, LaP/t;

    invoke-direct {v1, p1, v0}, LaP/t;-><init>(II)V

    move-object v0, v1

    goto :goto_9

    .line 80
    :cond_23
    add-int/lit8 v0, p2, -0x1

    goto :goto_1c
.end method


# virtual methods
.method public a()LaP/t;
    .registers 4

    .prologue
    .line 99
    iget-boolean v0, p0, LaP/v;->c:Z

    if-nez v0, :cond_15

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, LaP/v;->c:Z

    .line 110
    :goto_7
    new-instance v0, LaP/t;

    iget-object v1, p0, LaP/v;->b:LaP/w;

    iget v1, v1, LaP/w;->a:I

    iget-object v2, p0, LaP/v;->b:LaP/w;

    iget v2, v2, LaP/w;->b:I

    invoke-direct {v0, v1, v2}, LaP/t;-><init>(II)V

    return-object v0

    .line 101
    :cond_15
    iget-object v0, p0, LaP/v;->a:LaP/d;

    iget-object v1, p0, LaP/v;->b:LaP/w;

    iget v1, v1, LaP/w;->a:I

    iget-object v2, p0, LaP/v;->b:LaP/w;

    iget v2, v2, LaP/w;->b:I

    invoke-virtual {v0, v1, v2}, LaP/d;->d(II)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 102
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iget v1, v0, LaP/w;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LaP/w;->b:I

    goto :goto_7

    .line 104
    :cond_2e
    iget-object v0, p0, LaP/v;->a:LaP/d;

    iget-object v1, p0, LaP/v;->b:LaP/w;

    iget v1, v1, LaP/w;->a:I

    invoke-virtual {v0, v1}, LaP/d;->e(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot increment from the last segment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_42
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iget v1, v0, LaP/w;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LaP/w;->a:I

    .line 108
    iget-object v0, p0, LaP/v;->b:LaP/w;

    const/4 v1, 0x0

    iput v1, v0, LaP/w;->b:I

    goto :goto_7
.end method

.method public a(LaP/t;)LaP/v;
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LaP/v;->a:LaP/d;

    invoke-virtual {v0, p1}, LaP/d;->b(LaP/t;)Z

    move-result v0

    const-string v1, "Index out of range."

    invoke-static {v0, v1}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 42
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iget v1, p1, LaP/t;->a:I

    iput v1, v0, LaP/w;->a:I

    .line 43
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iget v1, p1, LaP/t;->b:I

    iput v1, v0, LaP/w;->b:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, LaP/v;->c:Z

    .line 45
    return-object p0
.end method

.method public b()LaP/t;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, LaP/v;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 122
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 126
    :cond_d
    iget-boolean v1, p0, LaP/v;->c:Z

    if-nez v1, :cond_18

    move v1, v0

    .line 138
    :goto_12
    new-instance v2, LaP/t;

    invoke-direct {v2, v1, v0}, LaP/t;-><init>(II)V

    return-object v2

    .line 130
    :cond_18
    iget-object v1, p0, LaP/v;->a:LaP/d;

    iget-object v2, p0, LaP/v;->b:LaP/w;

    iget v2, v2, LaP/w;->a:I

    iget-object v3, p0, LaP/v;->b:LaP/w;

    iget v3, v3, LaP/w;->b:I

    invoke-virtual {v1, v2, v3}, LaP/d;->d(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 131
    iget-object v1, p0, LaP/v;->b:LaP/w;

    iget v1, v1, LaP/w;->a:I

    add-int/lit8 v1, v1, 0x1

    .line 132
    goto :goto_12

    .line 134
    :cond_2f
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iget v1, v0, LaP/w;->a:I

    .line 135
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iget v0, v0, LaP/w;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public b(LaP/t;)LaP/v;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, LaP/v;->a:LaP/d;

    invoke-virtual {v0, p1}, LaP/d;->b(LaP/t;)Z

    move-result v0

    const-string v1, "Index out of range."

    invoke-static {v0, v1}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 56
    iget-object v0, p0, LaP/v;->a:LaP/d;

    iget v1, p1, LaP/t;->a:I

    iget v2, p1, LaP/t;->b:I

    invoke-virtual {v0, v1, v2}, LaP/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 57
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iput v3, v0, LaP/w;->a:I

    .line 58
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iput v3, v0, LaP/w;->b:I

    .line 59
    iput-boolean v3, p0, LaP/v;->c:Z

    .line 62
    :goto_22
    return-object p0

    :cond_23
    iget v0, p1, LaP/t;->a:I

    iget v1, p1, LaP/t;->b:I

    invoke-direct {p0, v0, v1}, LaP/v;->a(II)LaP/t;

    move-result-object v0

    invoke-virtual {p0, v0}, LaP/v;->a(LaP/t;)LaP/v;

    move-result-object p0

    goto :goto_22
.end method

.method public c(LaP/t;)LaP/t;
    .registers 4
    .parameter

    .prologue
    .line 89
    iget v0, p1, LaP/t;->a:I

    iget v1, p1, LaP/t;->b:I

    invoke-direct {p0, v0, v1}, LaP/v;->a(II)LaP/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, LaP/v;->b()LaP/t;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, LaP/v;->b:LaP/w;

    iget v0, v0, LaP/w;->b:I

    iget-object v1, p0, LaP/v;->a:LaP/d;

    iget-object v2, p0, LaP/v;->b:LaP/w;

    iget v2, v2, LaP/w;->a:I

    invoke-virtual {v1, v2}, LaP/d;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasNext()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    iget-boolean v2, p0, LaP/v;->c:Z

    if-nez v2, :cond_11

    .line 144
    iget-object v2, p0, LaP/v;->a:LaP/d;

    invoke-virtual {v2}, LaP/d;->a()I

    move-result v2

    if-lez v2, :cond_f

    .line 146
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 144
    goto :goto_e

    .line 146
    :cond_11
    iget-object v2, p0, LaP/v;->a:LaP/d;

    iget-object v3, p0, LaP/v;->b:LaP/w;

    iget v3, v3, LaP/w;->a:I

    iget-object v4, p0, LaP/v;->b:LaP/w;

    iget v4, v4, LaP/w;->b:I

    invoke-virtual {v2, v3, v4}, LaP/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, LaP/v;->a()LaP/t;

    move-result-object v0

    return-object v0
.end method
