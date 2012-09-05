.class public Lcom/google/android/maps/driveabout/app/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lu/I;

.field private b:I


# direct methods
.method public constructor <init>(Lu/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    invoke-virtual {v0}, Lu/I;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    return-void
.end method

.method private b()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    :goto_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    invoke-virtual {v1}, Lu/I;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    invoke-virtual {v0}, Lu/I;->j()Lu/I;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    goto :goto_6

    :cond_24
    return-void
.end method


# virtual methods
.method public a()Lu/j;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    invoke-virtual {v0}, Lu/I;->v()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/j;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/c;->b()V

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lu/I;

    invoke-virtual {v1}, Lu/I;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/c;->a()Lu/j;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
