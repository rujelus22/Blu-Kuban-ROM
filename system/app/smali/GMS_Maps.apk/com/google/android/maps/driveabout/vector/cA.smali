.class public Lcom/google/android/maps/driveabout/vector/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/l;

.field private final b:Lcom/google/android/maps/driveabout/vector/bY;


# direct methods
.method public constructor <init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:Ln/l;

    .line 35
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/bY;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ln/l;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:Ln/l;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:Ln/l;

    invoke-interface {v0}, Ln/l;->i()I

    move-result v0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/bY;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/bY;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:Ln/l;

    invoke-interface {v0}, Ln/l;->m()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p0, p1, :cond_5

    .line 80
    :cond_4
    :goto_4
    return v0

    .line 75
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 76
    goto :goto_4

    .line 79
    :cond_13
    check-cast p1, Lcom/google/android/maps/driveabout/vector/ca;

    .line 80
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:Ln/l;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/ca;->a:Ln/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/bY;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/vector/bY;->a(Lcom/google/android/maps/driveabout/vector/bY;Lcom/google/android/maps/driveabout/vector/bY;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:Ln/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/bY;

    if-eqz v1, :cond_13

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_13
    return v0
.end method
