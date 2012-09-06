.class public Lcom/estrongs/android/widget/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/an;


# instance fields
.field i:I

.field j:[Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/ab;->i:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/estrongs/android/widget/ab;->i:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ab;->c()I

    move-result v1

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ab;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/widget/ab;->i:I

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    iget v1, p0, Lcom/estrongs/android/widget/ab;->i:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/widget/ab;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a([Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/widget/ab;->i:I

    return-void
.end method

.method public b(Ljava/io/File;)V
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    array-length v2, v2

    if-lt v0, v2, :cond_d

    :cond_7
    iget-object v2, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    array-length v2, v2

    if-ne v0, v2, :cond_16

    :goto_c
    return-void

    :cond_d
    iget-object v2, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    iget-object v2, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/io/File;

    :goto_1d
    if-lt v1, v0, :cond_29

    add-int/lit8 v0, v0, 0x1

    :goto_21
    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    array-length v1, v1

    if-lt v0, v1, :cond_32

    iput-object v2, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    goto :goto_c

    :cond_29
    iget-object v3, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    add-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    array-length v0, v0

    goto :goto_5
.end method

.method public c(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public d()[Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->j:[Ljava/io/File;

    return-object v0
.end method
