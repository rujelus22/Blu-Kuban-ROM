.class public Lcom/google/android/maps/driveabout/app/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lo/I;

.field private b:J

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 141
    const v0, 0x30d40

    div-int v0, p0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(Lo/x;Lo/I;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dj;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/dj;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 150
    invoke-virtual {p2}, Lo/I;->a()Ln/Q;

    move-result-object v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {p1}, Lo/x;->d()I

    move-result v3

    if-eqz v3, :cond_27

    .line 153
    const-string v3, "|M="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lo/x;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :cond_27
    const-string v3, "|T="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lo/I;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v3, "|L="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ln/Q;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/dj;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ln/Q;->c()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dj;->a(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "|m="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lo/I;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "|a="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v0, "|p="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lo/I;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, "|t="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Lo/x;->G()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 163
    const-string v0, "|R=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_90
    const/16 v0, 0x7c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "c"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method static a(Lo/I;Lo/I;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    if-ne p0, p1, :cond_5

    .line 133
    :cond_4
    :goto_4
    return v0

    .line 130
    :cond_5
    if-nez p0, :cond_9

    if-nez p1, :cond_d

    :cond_9
    if-nez p1, :cond_f

    if-eqz p0, :cond_f

    :cond_d
    move v0, v1

    .line 131
    goto :goto_4

    .line 133
    :cond_f
    invoke-virtual {p0}, Lo/I;->a()Ln/Q;

    move-result-object v2

    invoke-virtual {p1}, Lo/I;->a()Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lo/I;->f()I

    move-result v2

    invoke-virtual {p1}, Lo/I;->f()I

    move-result v3

    if-ne v2, v3, :cond_31

    invoke-virtual {p0}, Lo/I;->e()I

    move-result v2

    invoke-virtual {p1}, Lo/I;->e()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method private static b(Lo/x;Lo/I;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-virtual {p1}, Lo/I;->k()Lo/I;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lo/I;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/x;->b(I)D

    move-result-wide v0

    .line 174
    invoke-virtual {p1}, Lo/I;->y()I

    move-result v2

    invoke-virtual {p0, v2}, Lo/x;->b(I)D

    move-result-wide v2

    .line 175
    invoke-virtual {p0, v0, v1}, Lo/x;->b(D)I

    move-result v0

    .line 176
    invoke-virtual {p0, v2, v3}, Lo/x;->b(D)I

    move-result v1

    .line 177
    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method a()J
    .registers 3

    .prologue
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public a(Lo/x;Lo/I;Lo/I;Lm/b;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide v8, 0x408f400000000000L

    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    if-eqz p3, :cond_2b

    if-eqz p4, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dj;->a:Lo/I;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/dj;->a(Lo/I;Lo/I;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p3}, Lo/I;->k()Lo/I;

    move-result-object v0

    if-ne v0, p2, :cond_2b

    invoke-virtual {p3}, Lo/I;->y()I

    move-result v0

    invoke-virtual {p1}, Lo/x;->n()Ln/U;

    move-result-object v3

    invoke-virtual {v3}, Ln/U;->b()I

    move-result v3

    if-lt v0, v3, :cond_30

    .line 95
    :cond_2b
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/dj;->d:Z

    .line 96
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dj;->a:Lo/I;

    .line 124
    :cond_2f
    :goto_2f
    return-void

    .line 100
    :cond_30
    invoke-virtual {p2}, Lo/I;->a()Ln/Q;

    move-result-object v0

    invoke-virtual {p4, v0}, Lm/b;->a(Ln/Q;)F

    move-result v0

    const/high16 v3, 0x42c8

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_83

    move v0, v1

    .line 104
    :goto_3f
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/app/dj;->d:Z

    if-eqz v3, :cond_48

    if-eqz v0, :cond_48

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dj;->a(Lo/x;Lo/I;)V

    .line 109
    :cond_48
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dj;->a:Lo/I;

    .line 110
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/dj;->d:Z

    .line 111
    if-eqz v0, :cond_2f

    invoke-virtual {p3}, Lo/I;->e()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2f

    .line 113
    invoke-virtual {p2}, Lo/I;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/x;->c(I)D

    move-result-wide v2

    .line 115
    invoke-virtual {p1}, Lo/x;->p()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {p3}, Lo/I;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/x;->c(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 117
    cmpl-double v0, v2, v8

    if-lez v0, :cond_2f

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2f

    .line 119
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/dj;->d:Z

    .line 120
    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/app/dj;->b(Lo/x;Lo/I;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dj;->c:I

    .line 121
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dj;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/dj;->b:J

    goto :goto_2f

    :cond_83
    move v0, v2

    .line 100
    goto :goto_3f
.end method
