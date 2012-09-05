.class public abstract Lcom/google/android/maps/driveabout/vector/n;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/U;

.field protected b:Z

.field protected c:I

.field private d:Lcom/google/android/maps/driveabout/vector/o;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/U;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/n;->a:Lcom/google/android/maps/driveabout/vector/U;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/n;->c:I

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/n;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/n;->d:Lcom/google/android/maps/driveabout/vector/o;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/n;->d:Lcom/google/android/maps/driveabout/vector/o;

    invoke-interface {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/o;->a(Lcom/google/android/maps/driveabout/vector/n;Lcom/google/android/maps/driveabout/vector/m;)V

    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/n;->d:Lcom/google/android/maps/driveabout/vector/o;

    return-void
.end method

.method public abstract a(Ljava/util/List;FFLt/L;Lcom/google/android/maps/driveabout/vector/t;I)V
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/n;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/n;->c:I

    add-int/2addr v0, v1

    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/n;->b:Z

    return v0
.end method
