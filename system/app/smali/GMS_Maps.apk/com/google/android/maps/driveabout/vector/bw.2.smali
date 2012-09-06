.class public Lcom/google/android/maps/driveabout/vector/bW;
.super Lcom/google/android/maps/driveabout/vector/bY;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/maps/driveabout/vector/bY;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/Object;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0, p3}, Lcom/google/android/maps/driveabout/vector/bY;-><init>(Ljava/lang/String;Z)V

    .line 51
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/bY;

    .line 53
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Ljava/lang/Object;

    .line 54
    return-void

    .line 50
    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/bW;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x1

    .line 23
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bW;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/bW;-><init>(Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/Object;Z)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_5

    .line 72
    :cond_4
    :goto_4
    return v0

    .line 66
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 67
    goto :goto_4

    .line 71
    :cond_13
    check-cast p1, Lcom/google/android/maps/driveabout/vector/bW;

    .line 72
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/bY;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/vector/bY;->a(Lcom/google/android/maps/driveabout/vector/bY;Lcom/google/android/maps/driveabout/vector/bY;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/bW;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/bY;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 79
    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    return v0

    .line 78
    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v1, "[KeyedLabelSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/bY;

    if-eqz v1, :cond_18

    .line 88
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_18
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
