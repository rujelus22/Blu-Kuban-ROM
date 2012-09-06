.class public final Lcom/a/c/b;
.super Ljava/util/LinkedHashMap;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(III)V
    .registers 7

    const/16 v0, 0x8

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lcom/a/c/b;->a:I

    iput p2, p0, Lcom/a/c/b;->b:I

    iput p3, p0, Lcom/a/c/b;->c:I

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/a/c/b;->d:I

    invoke-static {v0}, Lcom/a/c/b;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/a/c/b;->d:I

    :cond_11
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 2

    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/c/b;->d:I

    return-void
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/a/c/b;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    iget v2, p0, Lcom/a/c/b;->b:I

    if-gt v1, v2, :cond_23

    iget v0, p0, Lcom/a/c/b;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/c/b;->d:I

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    iget v1, p0, Lcom/a/c/b;->d:I

    invoke-static {v0}, Lcom/a/c/b;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/a/c/b;->d:I

    :cond_23
    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/c/b;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 5

    iget v0, p0, Lcom/a/c/b;->d:I

    iget v1, p0, Lcom/a/c/b;->c:I

    if-gt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/a/c/b;->size()I

    move-result v0

    iget v1, p0, Lcom/a/c/b;->a:I

    if-le v0, v1, :cond_15

    :cond_e
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/c/b;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    :cond_15
    iget v0, p0, Lcom/a/c/b;->d:I

    iget v1, p0, Lcom/a/c/b;->c:I

    if-le v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/a/c/b;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2b

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget v1, p0, Lcom/a/c/b;->d:I

    iget v2, p0, Lcom/a/c/b;->c:I

    if-le v1, v2, :cond_29

    goto :goto_23
.end method
