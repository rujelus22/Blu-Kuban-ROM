.class public Lcom/estrongs/android/util/j;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[Lcom/estrongs/android/util/z;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/util/j;->a:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/estrongs/android/util/z;

    iput-object v1, p0, Lcom/estrongs/android/util/j;->b:[Lcom/estrongs/android/util/z;

    move v1, v0

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_16

    return-void

    :cond_16
    iget-object v2, p0, Lcom/estrongs/android/util/j;->b:[Lcom/estrongs/android/util/z;

    new-instance v3, Lcom/estrongs/android/util/z;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/estrongs/android/util/z;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method


# virtual methods
.method public a()Lcom/estrongs/android/util/k;
    .registers 3

    :goto_0
    iget v0, p0, Lcom/estrongs/android/util/j;->a:I

    iget-object v1, p0, Lcom/estrongs/android/util/j;->b:[Lcom/estrongs/android/util/z;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    :cond_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/util/j;->b:[Lcom/estrongs/android/util/z;

    iget v1, p0, Lcom/estrongs/android/util/j;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/util/z;->a()Lcom/estrongs/android/util/k;

    move-result-object v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/estrongs/android/util/j;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/util/j;->a:I

    goto :goto_0
.end method
