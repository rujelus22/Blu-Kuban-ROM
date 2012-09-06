.class Lcom/google/android/maps/driveabout/vector/cU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/maps/driveabout/vector/cT;

.field private final c:Ln/ak;

.field private final d:F

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cU;->a:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cT;

    .line 76
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    .line 77
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/cU;->d:F

    .line 78
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/cU;->e:I

    .line 79
    iput p6, p0, Lcom/google/android/maps/driveabout/vector/cU;->f:I

    .line 80
    iput p7, p0, Lcom/google/android/maps/driveabout/vector/cU;->g:I

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p1, p0, :cond_5

    .line 112
    :cond_4
    :goto_4
    return v0

    .line 101
    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/driveabout/vector/cU;

    if-eqz v2, :cond_4b

    .line 102
    check-cast p1, Lcom/google/android/maps/driveabout/vector/cU;

    .line 103
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->d:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_49

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->e:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->e:I

    if-ne v2, v3, :cond_49

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->f:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->f:I

    if-ne v2, v3, :cond_49

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->g:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->g:I

    if-ne v2, v3, :cond_49

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cT;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cT;

    if-ne v2, v3, :cond_49

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    if-eq v2, v3, :cond_3f

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    if-eqz v2, :cond_49

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    invoke-virtual {v2, v3}, Ln/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_3f
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cU;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cU;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_49
    move v0, v1

    goto :goto_4

    :cond_4b
    move v0, v1

    .line 112
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cU;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cT;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    if-eqz v1, :cond_1e

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cU;->c:Ln/ak;

    invoke-virtual {v1}, Ln/ak;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_1e
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cU;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cU;->e:I

    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cU;->f:I

    add-int/2addr v0, v1

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cU;->g:I

    add-int/2addr v0, v1

    .line 95
    return v0
.end method
