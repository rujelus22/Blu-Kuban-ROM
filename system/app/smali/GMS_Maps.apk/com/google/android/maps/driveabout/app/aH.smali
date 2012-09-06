.class Lcom/google/android/maps/driveabout/app/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ln/s;

.field final b:Lo/Q;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/P;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Lo/P;->c()Ln/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ah;->a:Ln/s;

    .line 90
    invoke-virtual {p1}, Lo/P;->d()Lo/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lo/Q;

    .line 91
    invoke-virtual {p1}, Lo/P;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/ah;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 140
    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 148
    :cond_9
    :goto_9
    return v0

    .line 143
    :cond_a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ah;->a:Ln/s;

    invoke-static {v1}, Ln/Q;->a(Ln/s;)Ln/Q;

    move-result-object v1

    .line 147
    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ah;->a:Ln/s;

    invoke-static {v2}, Ln/Q;->a(Ln/s;)Ln/Q;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1}, Ln/Q;->e()D

    move-result-wide v4

    div-double v1, v2, v4

    const-wide/high16 v3, 0x4069

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p0, p1, :cond_5

    .line 129
    :cond_4
    :goto_4
    return v0

    .line 108
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 109
    goto :goto_4

    .line 111
    :cond_13
    check-cast p1, Lcom/google/android/maps/driveabout/app/ah;

    .line 112
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->a:Ln/s;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/ah;->a:Ln/s;

    invoke-virtual {v2, v3}, Ln/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    .line 113
    goto :goto_4

    .line 115
    :cond_21
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lo/Q;

    if-nez v2, :cond_2b

    .line 116
    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ah;->b:Lo/Q;

    if-eqz v2, :cond_37

    move v0, v1

    .line 117
    goto :goto_4

    .line 119
    :cond_2b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lo/Q;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/ah;->b:Lo/Q;

    invoke-virtual {v2, v3}, Lo/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    .line 120
    goto :goto_4

    .line 122
    :cond_37
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    if-nez v2, :cond_41

    .line 123
    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 124
    goto :goto_4

    .line 126
    :cond_41
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 127
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ah;->a:Ln/s;

    invoke-virtual {v0}, Ln/s;->hashCode()I

    move-result v0

    .line 98
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lo/Q;

    if-nez v0, :cond_17

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    if-nez v2, :cond_1e

    :goto_15
    add-int/2addr v0, v1

    .line 100
    return v0

    .line 98
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lo/Q;

    invoke-virtual {v0}, Lo/Q;->hashCode()I

    move-result v0

    goto :goto_e

    .line 99
    :cond_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_15
.end method
