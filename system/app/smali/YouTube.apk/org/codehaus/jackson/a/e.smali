.class public abstract Lorg/codehaus/jackson/a/e;
.super Lorg/codehaus/jackson/a/f;
.source "SourceFile"


# instance fields
.field protected A:Lorg/codehaus/jackson/a/h;

.field protected B:Lorg/codehaus/jackson/JsonToken;

.field protected final C:Lorg/codehaus/jackson/util/c;

.field protected D:[C

.field protected E:Z

.field protected F:Lorg/codehaus/jackson/util/a;

.field protected G:[B

.field protected final q:Lorg/codehaus/jackson/b/c;

.field protected r:Z

.field protected s:I

.field protected t:I

.field protected u:J

.field protected v:I

.field protected w:I

.field protected x:J

.field protected y:I

.field protected z:I


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/b/c;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 179
    invoke-direct {p0}, Lorg/codehaus/jackson/a/f;-><init>()V

    .line 51
    iput v3, p0, Lorg/codehaus/jackson/a/e;->s:I

    .line 56
    iput v3, p0, Lorg/codehaus/jackson/a/e;->t:I

    .line 68
    iput-wide v1, p0, Lorg/codehaus/jackson/a/e;->u:J

    .line 74
    iput v0, p0, Lorg/codehaus/jackson/a/e;->v:I

    .line 82
    iput v3, p0, Lorg/codehaus/jackson/a/e;->w:I

    .line 98
    iput-wide v1, p0, Lorg/codehaus/jackson/a/e;->x:J

    .line 103
    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    .line 109
    iput v3, p0, Lorg/codehaus/jackson/a/e;->z:I

    .line 148
    iput-object v4, p0, Lorg/codehaus/jackson/a/e;->D:[C

    .line 155
    iput-boolean v3, p0, Lorg/codehaus/jackson/a/e;->E:Z

    .line 161
    iput-object v4, p0, Lorg/codehaus/jackson/a/e;->F:Lorg/codehaus/jackson/util/a;

    .line 180
    iput p2, p0, Lorg/codehaus/jackson/a/e;->a:I

    .line 181
    iput-object p1, p0, Lorg/codehaus/jackson/a/e;->q:Lorg/codehaus/jackson/b/c;

    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->d()Lorg/codehaus/jackson/util/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Lorg/codehaus/jackson/util/c;

    .line 183
    iget v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    iget v1, p0, Lorg/codehaus/jackson/a/e;->z:I

    new-instance v2, Lorg/codehaus/jackson/a/h;

    invoke-direct {v2, v4, v3, v0, v1}, Lorg/codehaus/jackson/a/h;-><init>(Lorg/codehaus/jackson/a/h;III)V

    iput-object v2, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    .line 184
    return-void
.end method


# virtual methods
.method protected final a(IC)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    iget-object v2, p0, Lorg/codehaus/jackson/a/e;->q:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v2}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/e;->r:Z

    if-nez v0, :cond_d

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/e;->r:Z

    .line 219
    :try_start_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->q()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 223
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->r()V

    .line 226
    :cond_d
    return-void

    .line 223
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->r()V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_17

    .line 207
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final e()Lorg/codehaus/jackson/JsonLocation;
    .registers 9

    .prologue
    .line 258
    iget v0, p0, Lorg/codehaus/jackson/a/e;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/e;->w:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 259
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->q:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/a/e;->u:J

    iget v4, p0, Lorg/codehaus/jackson/a/e;->s:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lorg/codehaus/jackson/a/e;->v:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final o()V
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->p()Z

    move-result v0

    if-nez v0, :cond_9

    .line 305
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->t()V

    .line 307
    :cond_9
    return-void
.end method

.method protected abstract p()Z
.end method

.method protected abstract q()V
.end method

.method protected r()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->a()V

    .line 338
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->D:[C

    .line 339
    if-eqz v0, :cond_11

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/e;->D:[C

    .line 341
    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->q:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->c([C)V

    .line 343
    :cond_11
    return-void
.end method

.method protected final s()V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->b()Z

    move-result v0

    if-nez v0, :cond_40

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->A:Lorg/codehaus/jackson/a/h;

    iget-object v2, p0, Lorg/codehaus/jackson/a/e;->q:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->c(Ljava/lang/String;)V

    .line 356
    :cond_40
    return-void
.end method
