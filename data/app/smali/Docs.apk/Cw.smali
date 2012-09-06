.class LCw;
.super Ljava/lang/Object;
.source "PackedObjectVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, LCw;->a:I

    .line 34
    invoke-static {v2}, LBZ;->c(I)I

    move-result v0

    iget v1, p0, LCw;->a:I

    div-int/2addr v0, v1

    iput v0, p0, LCw;->b:I

    .line 36
    iput v2, p0, LCw;->c:I

    .line 37
    iget v0, p0, LCw;->b:I

    iput v0, p0, LCw;->d:I

    .line 39
    iget v0, p0, LCw;->b:I

    iget v1, p0, LCw;->a:I

    mul-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, LCw;->a:[Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-virtual {p0}, LCw;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 112
    iget v1, p0, LCw;->a:I

    mul-int/2addr v0, v1

    invoke-static {v0}, LBZ;->c(I)I

    move-result v0

    iget v1, p0, LCw;->a:I

    div-int/2addr v0, v1

    .line 113
    iget v1, p0, LCw;->a:I

    mul-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    iget v2, p0, LCw;->b:I

    iget v3, p0, LCw;->c:I

    iget v4, p0, LCw;->d:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 117
    iget-object v3, p0, LCw;->a:[Ljava/lang/Object;

    iget v4, p0, LCw;->a:I

    iget v5, p0, LCw;->c:I

    mul-int/2addr v4, v5

    invoke-static {v3, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v3, p0, LCw;->a:[Ljava/lang/Object;

    iget v4, p0, LCw;->b:I

    sub-int/2addr v4, v2

    iget v5, p0, LCw;->a:I

    mul-int/2addr v4, v5

    sub-int v5, v0, v2

    iget v6, p0, LCw;->a:I

    mul-int/2addr v5, v6

    iget v6, p0, LCw;->a:I

    mul-int/2addr v2, v6

    invoke-static {v3, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget v2, p0, LCw;->d:I

    iget v3, p0, LCw;->b:I

    sub-int v3, v0, v3

    add-int/2addr v2, v3

    iput v2, p0, LCw;->d:I

    .line 121
    iput v0, p0, LCw;->b:I

    .line 122
    iput-object v1, p0, LCw;->a:[Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private a(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 128
    iget v0, p0, LCw;->c:I

    if-ne p1, v0, :cond_6

    .line 165
    :goto_5
    return-void

    .line 131
    :cond_6
    iget v0, p0, LCw;->c:I

    if-le p1, v0, :cond_46

    .line 133
    iget v0, p0, LCw;->d:I

    add-int/2addr v0, p1

    iget v1, p0, LCw;->c:I

    iget v3, p0, LCw;->d:I

    add-int/2addr v1, v3

    sub-int v3, v0, v1

    .line 135
    iget v0, p0, LCw;->c:I

    iget v1, p0, LCw;->d:I

    add-int/2addr v0, v1

    :goto_19
    iget v1, p0, LCw;->c:I

    iget v4, p0, LCw;->d:I

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_77

    .line 137
    iget v1, p0, LCw;->c:I

    iget v4, p0, LCw;->d:I

    add-int/2addr v1, v4

    sub-int v1, v0, v1

    iget v4, p0, LCw;->c:I

    add-int/2addr v4, v1

    move v1, v2

    .line 139
    :goto_2c
    iget v5, p0, LCw;->a:I

    if-ge v1, v5, :cond_43

    .line 141
    iget-object v5, p0, LCw;->a:[Ljava/lang/Object;

    iget v6, p0, LCw;->a:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    aget-object v5, v5, v6

    .line 143
    iget-object v6, p0, LCw;->a:[Ljava/lang/Object;

    iget v7, p0, LCw;->a:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v1

    aput-object v5, v6, v7

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 135
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 149
    :cond_46
    iget v0, p0, LCw;->c:I

    sub-int v3, v0, p1

    .line 151
    add-int v0, p1, v3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4f
    if-lt v1, p1, :cond_77

    .line 153
    sub-int v0, v1, p1

    iget v4, p0, LCw;->c:I

    add-int/2addr v0, v4

    iget v4, p0, LCw;->d:I

    add-int/2addr v0, v4

    sub-int v4, v0, v3

    move v0, v2

    .line 155
    :goto_5c
    iget v5, p0, LCw;->a:I

    if-ge v0, v5, :cond_73

    .line 157
    iget-object v5, p0, LCw;->a:[Ljava/lang/Object;

    iget v6, p0, LCw;->a:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v0

    aget-object v5, v5, v6

    .line 159
    iget-object v6, p0, LCw;->a:[Ljava/lang/Object;

    iget v7, p0, LCw;->a:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v0

    aput-object v5, v6, v7

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 151
    :cond_73
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4f

    .line 164
    :cond_77
    iput p1, p0, LCw;->c:I

    goto :goto_5
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 99
    iget v0, p0, LCw;->b:I

    iget v1, p0, LCw;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(II)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    .prologue
    .line 45
    iget v0, p0, LCw;->c:I

    if-lt p1, v0, :cond_7

    .line 46
    iget v0, p0, LCw;->d:I

    add-int/2addr p1, v0

    .line 48
    :cond_7
    iget-object v0, p0, LCw;->a:[Ljava/lang/Object;

    iget v1, p0, LCw;->a:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 50
    return-object v0
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 84
    add-int v0, p1, p2

    invoke-direct {p0, v0}, LCw;->a(I)V

    .line 86
    iget v0, p0, LCw;->c:I

    sub-int/2addr v0, p2

    iput v0, p0, LCw;->c:I

    .line 87
    iget v0, p0, LCw;->d:I

    add-int/2addr v0, p2

    iput v0, p0, LCw;->d:I

    .line 89
    iget v0, p0, LCw;->d:I

    invoke-virtual {p0}, LCw;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_19

    .line 94
    :cond_19
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget v0, p0, LCw;->c:I

    if-lt p1, v0, :cond_7

    .line 57
    iget v0, p0, LCw;->d:I

    add-int/2addr p1, v0

    .line 59
    :cond_7
    iget-object v0, p0, LCw;->a:[Ljava/lang/Object;

    iget v1, p0, LCw;->a:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-object p3, v0, v1

    .line 60
    return-void
.end method

.method public a(I[Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, LCw;->a(I)V

    .line 67
    iget v1, p0, LCw;->d:I

    if-nez v1, :cond_b

    .line 68
    invoke-direct {p0}, LCw;->a()V

    .line 70
    :cond_b
    iget v1, p0, LCw;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LCw;->c:I

    .line 71
    iget v1, p0, LCw;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LCw;->d:I

    .line 73
    if-nez p2, :cond_24

    .line 74
    :goto_19
    iget v1, p0, LCw;->a:I

    if-ge v0, v1, :cond_30

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LCw;->a(IILjava/lang/Object;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 77
    :cond_24
    :goto_24
    iget v1, p0, LCw;->a:I

    if-ge v0, v1, :cond_30

    .line 78
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, LCw;->a(IILjava/lang/Object;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 79
    :cond_30
    return-void
.end method
