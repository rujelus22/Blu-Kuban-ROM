.class public Lo/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lo/x;

.field private final b:I

.field private final c:Lo/I;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:Z

.field private final k:Lo/x;


# direct methods
.method constructor <init>([Lo/x;ILo/I;IIIIZIZLo/x;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lo/q;->a:[Lo/x;

    .line 84
    iput p2, p0, Lo/q;->b:I

    .line 85
    iput-object p3, p0, Lo/q;->c:Lo/I;

    .line 86
    iput p4, p0, Lo/q;->d:I

    .line 87
    iput p5, p0, Lo/q;->e:I

    .line 88
    iput p6, p0, Lo/q;->f:I

    .line 89
    iput p7, p0, Lo/q;->g:I

    .line 90
    iput-boolean p8, p0, Lo/q;->h:Z

    .line 91
    iput p9, p0, Lo/q;->i:I

    .line 92
    iput-boolean p10, p0, Lo/q;->j:Z

    .line 93
    iput-object p11, p0, Lo/q;->k:Lo/x;

    .line 94
    return-void
.end method

.method public static a()Lo/q;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    .line 100
    new-instance v0, Lo/q;

    move-object v3, v1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v9, v8

    move v10, v8

    move-object v11, v1

    invoke-direct/range {v0 .. v11}, Lo/q;-><init>([Lo/x;ILo/I;IIIIZIZLo/x;)V

    return-object v0
.end method

.method private n()Z
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lo/q;->a:[Lo/x;

    if-eqz v0, :cond_a

    iget v0, p0, Lo/q;->b:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(F)Ln/ai;
    .registers 11
    .parameter

    .prologue
    .line 175
    iget v0, p0, Lo/q;->d:I

    if-ltz v0, :cond_8

    iget-object v0, p0, Lo/q;->a:[Lo/x;

    if-nez v0, :cond_a

    .line 176
    :cond_8
    const/4 v0, 0x0

    .line 189
    :goto_9
    return-object v0

    .line 178
    :cond_a
    invoke-virtual {p0}, Lo/q;->g()Lo/x;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lo/x;->n()Ln/U;

    move-result-object v1

    .line 180
    iget v2, p0, Lo/q;->d:I

    add-int/lit8 v2, v2, 0x1

    .line 181
    invoke-virtual {v0, v2}, Lo/x;->b(I)D

    move-result-wide v3

    .line 182
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3a

    .line 183
    invoke-virtual {v1, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v5

    invoke-virtual {v5}, Ln/Q;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, Ln/Q;->a(D)D

    move-result-wide v5

    .line 185
    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 186
    invoke-virtual {v0, v3, v4}, Lo/x;->a(D)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 187
    new-instance v0, Ln/ai;

    invoke-direct {v0, v1, v2, v3}, Ln/ai;-><init>(Ln/U;II)V

    goto :goto_9

    .line 189
    :cond_3a
    new-instance v0, Ln/ai;

    invoke-direct {v0, v1, v2}, Ln/ai;-><init>(Ln/U;I)V

    goto :goto_9
.end method

.method public b()I
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lo/q;->e:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public c()I
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lo/q;->g:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public d()I
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lo/q;->f:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public e()I
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lo/q;->d:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public f()[Lo/x;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lo/q;->a:[Lo/x;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/q;->a:[Lo/x;

    invoke-virtual {v0}, [Lo/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/x;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public g()Lo/x;
    .registers 3

    .prologue
    .line 149
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/q;->a:[Lo/x;

    iget v1, p0, Lo/q;->b:I

    aget-object v0, v0, v1

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public h()Lo/I;
    .registers 2

    .prologue
    .line 157
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/q;->c:Lo/I;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public i()Lo/x;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lo/q;->k:Lo/x;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 197
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lo/q;->h:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public k()I
    .registers 2

    .prologue
    .line 204
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lo/q;->i:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0}, Lo/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lo/q;->j:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method m()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lo/q;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[numRoutes:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lo/q;->a:[Lo/x;

    if-nez v0, :cond_8e

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, " curRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/q;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, " curStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lo/q;->c:Lo/I;

    if-nez v0, :cond_93

    const/4 v0, -0x1

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v0, " curSegment:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/q;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, " metersToNextStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/q;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, " metersRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/q;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v0, " secondsRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/q;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, " areAlternatesStale:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lo/q;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, " trafficStatus:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/q;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, " onRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lo/q;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    const-string v0, " hasPathfinderRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lo/q;->k:Lo/x;

    if-nez v0, :cond_9a

    const-string v0, "false"

    :goto_81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :cond_8e
    iget-object v0, p0, Lo/q;->a:[Lo/x;

    array-length v0, v0

    goto/16 :goto_c

    .line 225
    :cond_93
    iget-object v0, p0, Lo/q;->c:Lo/I;

    invoke-virtual {v0}, Lo/I;->i()I

    move-result v0

    goto :goto_25

    .line 234
    :cond_9a
    const-string v0, "true"

    goto :goto_81
.end method
