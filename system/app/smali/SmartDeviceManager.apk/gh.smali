.class public abstract Lgh;
.super Lez;
.source "a"


# instance fields
.field protected b:Lfh;

.field protected c:I

.field protected d:Z

.field protected e:Lgm;

.field protected f:Z


# direct methods
.method protected constructor <init>(ILfh;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lez;-><init>()V

    .line 73
    iput p1, p0, Lgh;->c:I

    .line 74
    new-instance v0, Lgr;

    invoke-direct {v0}, Lgr;-><init>()V

    iput-object v0, p0, Lgh;->e:Lgm;

    .line 75
    iput-object p2, p0, Lgh;->b:Lfh;

    .line 76
    sget-object v0, Lez$a;->WRITE_NUMBERS_AS_STRINGS:Lez$a;

    invoke-virtual {p0, v0}, Lgh;->a(Lez$a;)Z

    move-result v0

    iput-boolean v0, p0, Lgh;->d:Z

    .line 77
    return-void
.end method

.method protected static f(Ljava/lang/String;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ley;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Ley;

    invoke-direct {v0, p0}, Ley;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lez;
    .registers 2

    .prologue
    .line 118
    new-instance v0, Lnh;

    invoke-direct {v0}, Lnh;-><init>()V

    invoke-virtual {p0, v0}, Lgh;->a(Lfi;)Lez;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 322
    if-nez p1, :cond_6

    .line 324
    invoke-virtual {p0}, Lgh;->f()V

    .line 335
    :goto_5
    return-void

    .line 331
    :cond_6
    iget-object v1, p0, Lgh;->b:Lfh;

    if-eqz v1, :cond_10

    .line 332
    iget-object v1, p0, Lgh;->b:Lfh;

    invoke-virtual {v1, p0, p1}, Lfh;->a(Lez;Ljava/lang/Object;)V

    goto :goto_5

    .line 335
    :cond_10
    if-nez p1, :cond_16

    invoke-virtual {p0}, Lgh;->f()V

    goto :goto_5

    :cond_16
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_20

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgh;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_20
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_a2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lgh;->a(I)V

    goto :goto_5

    :cond_34
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_40

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lgh;->a(J)V

    goto :goto_5

    :cond_40
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lgh;->a(D)V

    goto :goto_5

    :cond_4c
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_58

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lgh;->a(F)V

    goto :goto_5

    :cond_58
    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_64

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lgh;->a(I)V

    goto :goto_5

    :cond_64
    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_70

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lgh;->a(I)V

    goto :goto_5

    :cond_70
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_7a

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lgh;->a(Ljava/math/BigInteger;)V

    goto :goto_5

    :cond_7a
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_84

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Lgh;->a(Ljava/math/BigDecimal;)V

    goto :goto_5

    :cond_84
    instance-of v2, v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_93

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lgh;->a(I)V

    goto/16 :goto_5

    :cond_93
    instance-of v2, v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_cb

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lgh;->a(J)V

    goto/16 :goto_5

    :cond_a2
    instance-of v1, p1, [B

    if-eqz v1, :cond_ad

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lgh;->a([B)V

    goto/16 :goto_5

    :cond_ad
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_bc

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lgh;->a(Z)V

    goto/16 :goto_5

    :cond_bc
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_cb

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lgh;->a(Z)V

    goto/16 :goto_5

    :cond_cb
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lgh;->e:Lgm;

    invoke-virtual {v0, p1}, Lgm;->a(Ljava/lang/String;)I

    move-result v0

    .line 217
    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 218
    const-string v1, "Can not write a field name, expecting a value"

    invoke-static {v1}, Lgh;->f(Ljava/lang/String;)V

    .line 220
    :cond_f
    if-ne v0, v2, :cond_16

    move v0, v2

    :goto_12
    invoke-virtual {p0, p1, v0}, Lgh;->a(Ljava/lang/String;Z)V

    .line 221
    return-void

    .line 220
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected abstract a(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method

.method public final a(Lez$a;)Z
    .registers 4
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lgh;->c:I

    invoke-virtual {p1}, Lez$a;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lgh;->e(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lgh;->e:Lgm;

    invoke-virtual {v0}, Lgm;->h()Lgm;

    move-result-object v0

    iput-object v0, p0, Lgh;->e:Lgm;

    .line 154
    iget-object v0, p0, Lgh;->a:Lfi;

    if-eqz v0, :cond_17

    .line 155
    iget-object v0, p0, Lgh;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->e(Lez;)V

    .line 159
    :goto_16
    return-void

    .line 157
    :cond_17
    invoke-virtual {p0}, Lgh;->i()V

    goto :goto_16
.end method

.method public final c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lgh;->e:Lgm;

    invoke-virtual {v0}, Lgm;->a()Z

    move-result v0

    if-nez v0, :cond_24

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgh;->e:Lgm;

    invoke-virtual {v1}, Lgm;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgh;->f(Ljava/lang/String;)V

    .line 169
    :cond_24
    iget-object v0, p0, Lgh;->a:Lfi;

    if-eqz v0, :cond_3c

    .line 170
    iget-object v0, p0, Lgh;->a:Lfi;

    iget-object v1, p0, Lgh;->e:Lgm;

    invoke-virtual {v1}, Lgm;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lfi;->b(Lez;I)V

    .line 174
    :goto_33
    iget-object v0, p0, Lgh;->e:Lgm;

    invoke-virtual {v0}, Lgm;->j()Lgm;

    move-result-object v0

    iput-object v0, p0, Lgh;->e:Lgm;

    .line 175
    return-void

    .line 172
    :cond_3c
    invoke-virtual {p0}, Lgh;->j()V

    goto :goto_33
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgh;->f:Z

    .line 367
    return-void
.end method

.method public final d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 183
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lgh;->e(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lgh;->e:Lgm;

    invoke-virtual {v0}, Lgm;->i()Lgm;

    move-result-object v0

    iput-object v0, p0, Lgh;->e:Lgm;

    .line 185
    iget-object v0, p0, Lgh;->a:Lfi;

    if-eqz v0, :cond_17

    .line 186
    iget-object v0, p0, Lgh;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->b(Lez;)V

    .line 190
    :goto_16
    return-void

    .line 188
    :cond_17
    invoke-virtual {p0}, Lgh;->k()V

    goto :goto_16
.end method

.method public final e()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lgh;->e:Lgm;

    invoke-virtual {v0}, Lgm;->c()Z

    move-result v0

    if-nez v0, :cond_24

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgh;->e:Lgm;

    invoke-virtual {v1}, Lgm;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgh;->f(Ljava/lang/String;)V

    .line 201
    :cond_24
    iget-object v0, p0, Lgh;->e:Lgm;

    invoke-virtual {v0}, Lgm;->j()Lgm;

    move-result-object v0

    iput-object v0, p0, Lgh;->e:Lgm;

    .line 202
    iget-object v0, p0, Lgh;->a:Lfi;

    if-eqz v0, :cond_3c

    .line 203
    iget-object v0, p0, Lgh;->a:Lfi;

    iget-object v1, p0, Lgh;->e:Lgm;

    invoke-virtual {v1}, Lgm;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lfi;->a(Lez;I)V

    .line 207
    :goto_3b
    return-void

    .line 205
    :cond_3c
    invoke-virtual {p0}, Lgh;->l()V

    goto :goto_3b
.end method

.method protected abstract e(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method

.method public final h()Lgm;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lgh;->e:Lgm;

    return-object v0
.end method

.method protected abstract i()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method

.method protected abstract j()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method

.method protected abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method

.method protected abstract l()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method
