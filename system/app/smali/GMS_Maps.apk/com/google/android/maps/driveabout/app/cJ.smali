.class Lcom/google/android/maps/driveabout/app/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Z

.field c:I


# direct methods
.method public constructor <init>(IZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/google/android/maps/driveabout/app/cj;->a:I

    .line 104
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/app/cj;->b:Z

    .line 105
    iput p3, p0, Lcom/google/android/maps/driveabout/app/cj;->c:I

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-ne p0, p1, :cond_5

    .line 139
    :cond_4
    :goto_4
    return v0

    .line 123
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 124
    goto :goto_4

    .line 126
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 127
    goto :goto_4

    .line 129
    :cond_15
    check-cast p1, Lcom/google/android/maps/driveabout/app/cj;

    .line 130
    iget v2, p0, Lcom/google/android/maps/driveabout/app/cj;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/app/cj;->a:I

    if-eq v2, v3, :cond_1f

    move v0, v1

    .line 131
    goto :goto_4

    .line 133
    :cond_1f
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cj;->b:Z

    iget-boolean v3, p1, Lcom/google/android/maps/driveabout/app/cj;->b:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    .line 134
    goto :goto_4

    .line 136
    :cond_27
    iget v2, p0, Lcom/google/android/maps/driveabout/app/cj;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/app/cj;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 137
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 110
    .line 112
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cj;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cj;->b:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x4cf

    :goto_c
    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cj;->c:I

    add-int/2addr v0, v1

    .line 115
    return v0

    .line 113
    :cond_13
    const/16 v0, 0x4d5

    goto :goto_c
.end method
