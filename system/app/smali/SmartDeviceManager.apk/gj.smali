.class public abstract Lgj;
.super Lgk;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgj$1;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:Lgl;

.field protected C:Lfg;

.field protected D:Z

.field protected final E:Lnl;

.field protected F:[C

.field protected G:Z

.field protected H:Lnf;

.field protected I:[B

.field protected final r:Lgt;

.field protected s:Z

.field protected t:I

.field protected u:I

.field protected v:J

.field protected w:I

.field protected x:I

.field protected y:J

.field protected z:I


# direct methods
.method protected constructor <init>(Lgt;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p2}, Lgk;-><init>(I)V

    .line 51
    iput v0, p0, Lgj;->t:I

    .line 56
    iput v0, p0, Lgj;->u:I

    .line 68
    iput-wide v3, p0, Lgj;->v:J

    .line 74
    iput v1, p0, Lgj;->w:I

    .line 82
    iput v0, p0, Lgj;->x:I

    .line 98
    iput-wide v3, p0, Lgj;->y:J

    .line 103
    iput v1, p0, Lgj;->z:I

    .line 109
    iput v0, p0, Lgj;->A:I

    .line 135
    iput-boolean v0, p0, Lgj;->D:Z

    .line 155
    iput-object v2, p0, Lgj;->F:[C

    .line 162
    iput-boolean v0, p0, Lgj;->G:Z

    .line 168
    iput-object v2, p0, Lgj;->H:Lnf;

    .line 187
    iput-object p1, p0, Lgj;->r:Lgt;

    .line 188
    invoke-virtual {p1}, Lgt;->c()Lnl;

    move-result-object v0

    iput-object v0, p0, Lgj;->E:Lnl;

    .line 189
    iget v0, p0, Lgj;->z:I

    iget v1, p0, Lgj;->A:I

    invoke-static {v0, v1}, Lgl;->a(II)Lgl;

    move-result-object v0

    iput-object v0, p0, Lgj;->B:Lgl;

    .line 190
    return-void
.end method


# virtual methods
.method protected abstract A()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected B()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lgj;->E:Lnl;

    invoke-virtual {v0}, Lnl;->a()V

    .line 481
    iget-object v0, p0, Lgj;->F:[C

    .line 482
    if-eqz v0, :cond_11

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Lgj;->F:[C

    .line 484
    iget-object v1, p0, Lgj;->r:Lgt;

    invoke-virtual {v1, v0}, Lgt;->c([C)V

    .line 486
    :cond_11
    return-void
.end method

.method protected final C()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfc;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lgj;->B:Lgl;

    invoke-virtual {v0}, Lgl;->b()Z

    move-result v0

    if-nez v0, :cond_40

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgj;->B:Lgl;

    invoke-virtual {v1}, Lgl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgj;->B:Lgl;

    iget-object v2, p0, Lgj;->r:Lgt;

    invoke-virtual {v2}, Lgt;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgl;->a(Ljava/lang/Object;)Lfa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgj;->c(Ljava/lang/String;)V

    .line 499
    :cond_40
    return-void
.end method

.method public final D()Lnf;
    .registers 3

    .prologue
    .line 522
    iget-object v0, p0, Lgj;->H:Lnf;

    if-nez v0, :cond_f

    .line 523
    new-instance v0, Lnf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnf;-><init>(B)V

    iput-object v0, p0, Lgj;->H:Lnf;

    .line 527
    :goto_c
    iget-object v0, p0, Lgj;->H:Lnf;

    return-object v0

    .line 525
    :cond_f
    iget-object v0, p0, Lgj;->H:Lnf;

    invoke-virtual {v0}, Lnf;->a()V

    goto :goto_c
.end method

.method protected final a(IC)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfc;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgj;->B:Lgl;

    iget-object v2, p0, Lgj;->r:Lgt;

    invoke-virtual {v2}, Lgt;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgl;->a(Ljava/lang/Object;)Lfa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
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

    iget-object v2, p0, Lgj;->B:Lgl;

    invoke-virtual {v2}, Lgl;->d()Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lgj;->d(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public final a(Lev;)[B
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lgj;->b:Lfg;

    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lgj;->b:Lfg;

    sget-object v1, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lgj;->I:[B

    if-nez v0, :cond_2e

    .line 409
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgj;->b:Lfg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgj;->d(Ljava/lang/String;)V

    .line 414
    :cond_2e
    iget-boolean v0, p0, Lgj;->D:Z

    if-eqz v0, :cond_3b

    .line 416
    :try_start_32
    invoke-virtual {p0, p1}, Lgj;->b(Lev;)[B

    move-result-object v0

    iput-object v0, p0, Lgj;->I:[B
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_38} :catch_3e

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgj;->D:Z

    .line 425
    :cond_3b
    iget-object v0, p0, Lgj;->I:[B

    return-object v0

    .line 417
    :catch_3e
    move-exception v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgj;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0
.end method

.method protected abstract b(Lev;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lgj;->s:Z

    if-nez v0, :cond_d

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgj;->s:Z

    .line 220
    :try_start_7
    invoke-virtual {p0}, Lgj;->A()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 224
    invoke-virtual {p0}, Lgj;->B()V

    .line 227
    :cond_d
    return-void

    .line 224
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lgj;->B()V

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lgj;->B:Lgl;

    invoke-virtual {v0}, Lgl;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lfa;
    .registers 8

    .prologue
    .line 246
    new-instance v0, Lfa;

    iget-object v1, p0, Lgj;->r:Lgt;

    invoke-virtual {v1}, Lgt;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lgj;->y:J

    iget v4, p0, Lgj;->z:I

    iget v5, p0, Lgj;->A:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lfa;-><init>(Ljava/lang/Object;JIIB)V

    return-object v0
.end method

.method public final h()Lfa;
    .registers 9

    .prologue
    .line 259
    iget v0, p0, Lgj;->t:I

    iget v1, p0, Lgj;->x:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 260
    new-instance v0, Lfa;

    iget-object v1, p0, Lgj;->r:Lgt;

    invoke-virtual {v1}, Lgt;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lgj;->v:J

    iget v4, p0, Lgj;->t:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lgj;->w:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lfa;-><init>(Ljava/lang/Object;JIIB)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lgj;->b:Lfg;

    if-eqz v0, :cond_30

    .line 282
    sget-object v0, Lgj$1;->a:[I

    iget-object v1, p0, Lgj;->b:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 297
    iget-object v0, p0, Lgj;->b:Lfg;

    invoke-virtual {v0}, Lfg;->asString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_17
    return-object v0

    .line 284
    :pswitch_18
    iget-object v0, p0, Lgj;->B:Lgl;

    invoke-virtual {v0}, Lgl;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 287
    :pswitch_1f
    iget-boolean v0, p0, Lgj;->D:Z

    if-eqz v0, :cond_29

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgj;->D:Z

    .line 289
    invoke-virtual {p0}, Lgj;->z()V

    .line 294
    :cond_29
    :pswitch_29
    iget-object v0, p0, Lgj;->E:Lnl;

    invoke-virtual {v0}, Lnl;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 300
    :cond_30
    const/4 v0, 0x0

    goto :goto_17

    .line 282
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1f
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public final j()[C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lgj;->b:Lfg;

    if-eqz v0, :cond_58

    .line 308
    sget-object v0, Lgj$1;->a:[I

    iget-object v1, p0, Lgj;->b:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 335
    iget-object v0, p0, Lgj;->b:Lfg;

    invoke-virtual {v0}, Lfg;->asCharArray()[C

    move-result-object v0

    .line 338
    :goto_18
    return-object v0

    .line 311
    :pswitch_19
    iget-boolean v0, p0, Lgj;->G:Z

    if-nez v0, :cond_3b

    .line 312
    iget-object v0, p0, Lgj;->B:Lgl;

    invoke-virtual {v0}, Lgl;->g()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 314
    iget-object v2, p0, Lgj;->F:[C

    if-nez v2, :cond_3e

    .line 315
    iget-object v2, p0, Lgj;->r:Lgt;

    invoke-virtual {v2, v1}, Lgt;->a(I)[C

    move-result-object v2

    iput-object v2, p0, Lgj;->F:[C

    .line 319
    :cond_33
    :goto_33
    iget-object v2, p0, Lgj;->F:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgj;->G:Z

    .line 322
    :cond_3b
    iget-object v0, p0, Lgj;->F:[C

    goto :goto_18

    .line 316
    :cond_3e
    iget-object v2, p0, Lgj;->F:[C

    array-length v2, v2

    if-ge v2, v1, :cond_33

    .line 317
    new-array v2, v1, [C

    iput-object v2, p0, Lgj;->F:[C

    goto :goto_33

    .line 325
    :pswitch_48
    iget-boolean v0, p0, Lgj;->D:Z

    if-eqz v0, :cond_51

    .line 326
    iput-boolean v3, p0, Lgj;->D:Z

    .line 327
    invoke-virtual {p0}, Lgj;->z()V

    .line 332
    :cond_51
    :pswitch_51
    iget-object v0, p0, Lgj;->E:Lnl;

    invoke-virtual {v0}, Lnl;->d()[C

    move-result-object v0

    goto :goto_18

    .line 338
    :cond_58
    const/4 v0, 0x0

    goto :goto_18

    .line 308
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_48
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method public final k()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lgj;->b:Lfg;

    if-eqz v0, :cond_35

    .line 360
    sget-object v0, Lgj$1;->a:[I

    iget-object v1, p0, Lgj;->b:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 375
    iget-object v0, p0, Lgj;->b:Lfg;

    invoke-virtual {v0}, Lfg;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 378
    :goto_19
    return v0

    .line 363
    :pswitch_1a
    iget-object v0, p0, Lgj;->B:Lgl;

    invoke-virtual {v0}, Lgl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_19

    .line 365
    :pswitch_25
    iget-boolean v0, p0, Lgj;->D:Z

    if-eqz v0, :cond_2e

    .line 366
    iput-boolean v2, p0, Lgj;->D:Z

    .line 367
    invoke-virtual {p0}, Lgj;->z()V

    .line 372
    :cond_2e
    :pswitch_2e
    iget-object v0, p0, Lgj;->E:Lnl;

    invoke-virtual {v0}, Lnl;->b()I

    move-result v0

    goto :goto_19

    :cond_35
    move v0, v2

    .line 378
    goto :goto_19

    .line 360
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_25
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public final l()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lgj;->b:Lfg;

    if-eqz v0, :cond_12

    .line 386
    sget-object v0, Lgj$1;->a:[I

    iget-object v1, p0, Lgj;->b:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    :cond_12
    move v0, v2

    .line 400
    :goto_13
    return v0

    :pswitch_14
    move v0, v2

    .line 388
    goto :goto_13

    .line 390
    :pswitch_16
    iget-boolean v0, p0, Lgj;->D:Z

    if-eqz v0, :cond_1f

    .line 391
    iput-boolean v2, p0, Lgj;->D:Z

    .line 392
    invoke-virtual {p0}, Lgj;->z()V

    .line 397
    :cond_1f
    :pswitch_1f
    iget-object v0, p0, Lgj;->E:Lnl;

    invoke-virtual {v0}, Lnl;->c()I

    move-result v0

    goto :goto_13

    .line 386
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_14
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method protected final x()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lgj;->y()Z

    move-result v0

    if-nez v0, :cond_9

    .line 448
    invoke-virtual {p0}, Lgj;->E()V

    .line 450
    :cond_9
    return-void
.end method

.method protected abstract y()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract z()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method
