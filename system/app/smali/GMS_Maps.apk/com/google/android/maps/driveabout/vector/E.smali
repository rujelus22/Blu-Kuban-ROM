.class public abstract Lcom/google/android/maps/driveabout/vector/e;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/S;

.field protected b:Z

.field protected c:I

.field private d:Lcom/google/android/maps/driveabout/vector/f;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/S;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/e;->a:Lcom/google/android/maps/driveabout/vector/S;

    .line 48
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/e;->g()V

    .line 68
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/e;->d:Lcom/google/android/maps/driveabout/vector/f;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/e;->d:Lcom/google/android/maps/driveabout/vector/f;

    invoke-interface {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/f;->a(Lcom/google/android/maps/driveabout/vector/e;Lcom/google/android/maps/driveabout/vector/d;)V

    .line 71
    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/f;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/e;->d:Lcom/google/android/maps/driveabout/vector/f;

    .line 52
    return-void
.end method

.method public abstract a(Ljava/util/List;FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;I)V
.end method

.method public b_(I)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/e;->c:I

    .line 96
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .registers 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/e;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 105
    :goto_7
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/e;->c:I

    add-int/2addr v0, v1

    return v0

    .line 104
    :cond_b
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/e;->b:Z

    return v0
.end method
