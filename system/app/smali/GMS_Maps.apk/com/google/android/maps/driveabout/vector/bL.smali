.class final Lcom/google/android/maps/driveabout/vector/bL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    :goto_e
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:I

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    goto :goto_e

    :cond_25
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/af;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    :goto_e
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:I

    if-ge v1, v2, :cond_25

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    goto :goto_e

    :cond_25
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bL;->a()Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
