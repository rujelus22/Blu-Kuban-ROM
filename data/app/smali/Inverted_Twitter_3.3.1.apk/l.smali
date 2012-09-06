.class public abstract Ll;
.super Lm;


# instance fields
.field protected A:Lo;

.field protected B:Lorg/codehaus/jackson/JsonToken;

.field protected final C:Lorg/codehaus/jackson/util/c;

.field protected D:[C

.field protected E:Z

.field protected F:Lorg/codehaus/jackson/util/a;

.field protected G:[B

.field protected final q:Lz;

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
.method protected constructor <init>(Lz;I)V
    .registers 8

    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lm;-><init>()V

    iput v3, p0, Ll;->s:I

    iput v3, p0, Ll;->t:I

    iput-wide v1, p0, Ll;->u:J

    iput v0, p0, Ll;->v:I

    iput v3, p0, Ll;->w:I

    iput-wide v1, p0, Ll;->x:J

    iput v0, p0, Ll;->y:I

    iput v3, p0, Ll;->z:I

    iput-object v4, p0, Ll;->D:[C

    iput-boolean v3, p0, Ll;->E:Z

    iput-object v4, p0, Ll;->F:Lorg/codehaus/jackson/util/a;

    iput p2, p0, Ll;->a:I

    iput-object p1, p0, Ll;->q:Lz;

    invoke-virtual {p1}, Lz;->d()Lorg/codehaus/jackson/util/c;

    move-result-object v0

    iput-object v0, p0, Ll;->C:Lorg/codehaus/jackson/util/c;

    iget v0, p0, Ll;->y:I

    iget v1, p0, Ll;->z:I

    new-instance v2, Lo;

    invoke-direct {v2, v4, v3, v0, v1}, Lo;-><init>(Lo;III)V

    iput-object v2, p0, Ll;->A:Lo;

    return-void
.end method


# virtual methods
.method protected final a(IC)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll;->A:Lo;

    iget-object v2, p0, Ll;->q:Lz;

    invoke-virtual {v2}, Lz;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    iget-object v2, p0, Ll;->A:Lo;

    invoke-virtual {v2}, Lo;->d()Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Ll;->d(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Ll;->r:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll;->r:Z

    :try_start_7
    invoke-virtual {p0}, Ll;->m()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    invoke-virtual {p0}, Ll;->n()V

    :cond_d
    return-void

    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Ll;->n()V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ll;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Ll;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_17

    :cond_c
    iget-object v0, p0, Ll;->A:Lo;

    invoke-virtual {v0}, Lo;->h()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->g()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Ll;->A:Lo;

    invoke-virtual {v0}, Lo;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final e()Lorg/codehaus/jackson/JsonLocation;
    .registers 9

    iget v0, p0, Ll;->s:I

    iget v1, p0, Ll;->w:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Ll;->q:Lz;

    invoke-virtual {v1}, Lz;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Ll;->u:J

    iget v4, p0, Ll;->s:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Ll;->v:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final k()V
    .registers 2

    invoke-virtual {p0}, Ll;->l()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ll;->p()V

    :cond_9
    return-void
.end method

.method protected abstract l()Z
.end method

.method protected abstract m()V
.end method

.method protected n()V
    .registers 3

    iget-object v0, p0, Ll;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->a()V

    iget-object v0, p0, Ll;->D:[C

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    iput-object v1, p0, Ll;->D:[C

    iget-object v1, p0, Ll;->q:Lz;

    invoke-virtual {v1, v0}, Lz;->c([C)V

    :cond_11
    return-void
.end method

.method protected final o()V
    .registers 4

    iget-object v0, p0, Ll;->A:Lo;

    invoke-virtual {v0}, Lo;->b()Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll;->A:Lo;

    invoke-virtual {v1}, Lo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll;->A:Lo;

    iget-object v2, p0, Ll;->q:Lz;

    invoke-virtual {v2}, Lz;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll;->c(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method
