.class public Lcom/google/android/maps/driveabout/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lo/I;

.field private b:I


# direct methods
.method public constructor <init>(Lo/j;)V
    .registers 3
    .parameter

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    .line 683
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    invoke-virtual {v0}, Lo/I;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    .line 684
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 699
    iget v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    .line 700
    :goto_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    invoke-virtual {v1}, Lo/I;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_24

    .line 701
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    invoke-virtual {v0}, Lo/I;->j()Lo/I;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    .line 702
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    goto :goto_6

    .line 704
    :cond_24
    return-void
.end method


# virtual methods
.method public a()Lo/j;
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    invoke-virtual {v0}, Lo/I;->v()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/j;

    .line 694
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/c;->b()V

    .line 695
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/maps/driveabout/app/c;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/c;->a:Lo/I;

    invoke-virtual {v1}, Lo/I;->v()Ljava/util/List;

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

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/c;->a()Lo/j;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 708
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
