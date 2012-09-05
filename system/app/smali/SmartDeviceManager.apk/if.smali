.class abstract Lif;
.super Lja;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lfb;",
        ">",
        "Lja",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lja;-><init>(Ljava/lang/Class;)V

    .line 122
    return-void
.end method


# virtual methods
.method public a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p3, p1, p2}, Lht;->d(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lfd;Lhc;)Lmx;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p2}, Lhc;->c()Lmt;

    move-result-object v0

    invoke-virtual {v0}, Lmt;->c()Lmx;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v1

    .line 179
    sget-object v2, Lfg;->START_OBJECT:Lfg;

    if-ne v1, v2, :cond_14

    .line 180
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v1

    .line 182
    :cond_14
    :goto_14
    sget-object v2, Lfg;->FIELD_NAME:Lfg;

    if-ne v1, v2, :cond_31

    .line 183
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 185
    invoke-virtual {p0, p1, p2}, Lif;->d(Lfd;Lhc;)Lfb;

    move-result-object v2

    .line 186
    if-nez v2, :cond_29

    invoke-static {}, Lmt;->a()Lmv;

    move-result-object v2

    :cond_29
    invoke-virtual {v0, v1, v2}, Lmx;->a(Ljava/lang/String;Lfb;)Lfb;

    .line 187
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v1

    goto :goto_14

    .line 191
    :cond_31
    return-object v0
.end method

.method protected final c(Lfd;Lhc;)Lml;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p2}, Lhc;->c()Lmt;

    move-result-object v0

    invoke-virtual {v0}, Lmt;->b()Lml;

    move-result-object v0

    .line 198
    :goto_8
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v1

    sget-object v2, Lfg;->END_ARRAY:Lfg;

    if-eq v1, v2, :cond_1e

    .line 199
    invoke-virtual {p0, p1, p2}, Lif;->d(Lfd;Lhc;)Lfb;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-static {}, Lmt;->a()Lmv;

    move-result-object v1

    :cond_1a
    invoke-virtual {v0, v1}, Lml;->a(Lfb;)V

    goto :goto_8

    .line 201
    :cond_1e
    return-object v0
.end method

.method protected final d(Lfd;Lhc;)Lfb;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v0, Lif$1;->a:[I

    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v1

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8e

    .line 257
    invoke-virtual {p0}, Lif;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 211
    :pswitch_18
    invoke-virtual {p0, p1, p2}, Lif;->b(Lfd;Lhc;)Lmx;

    move-result-object v0

    .line 249
    :goto_1c
    return-object v0

    .line 214
    :pswitch_1d
    invoke-virtual {p0, p1, p2}, Lif;->c(Lfd;Lhc;)Lml;

    move-result-object v0

    goto :goto_1c

    .line 217
    :pswitch_22
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt;->a(Ljava/lang/String;)Lmy;

    move-result-object v0

    goto :goto_1c

    .line 221
    :pswitch_2b
    invoke-virtual {p1}, Lfd;->n()Lfd$b;

    move-result-object v0

    .line 222
    sget-object v1, Lfd$b;->BIG_INTEGER:Lfd$b;

    if-eq v0, v1, :cond_3b

    sget-object v1, Lhb$a;->USE_BIG_INTEGER_FOR_INTS:Lhb$a;

    invoke-virtual {p2, v1}, Lhc;->a(Lhb$a;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 224
    :cond_3b
    invoke-virtual {p1}, Lfd;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lmt;->a(Ljava/math/BigInteger;)Lmw;

    move-result-object v0

    goto :goto_1c

    .line 226
    :cond_44
    sget-object v1, Lfd$b;->INT:Lfd$b;

    if-ne v0, v1, :cond_51

    .line 227
    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    invoke-static {v0}, Lmt;->a(I)Lmw;

    move-result-object v0

    goto :goto_1c

    .line 229
    :cond_51
    invoke-virtual {p1}, Lfd;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmt;->a(J)Lmw;

    move-result-object v0

    goto :goto_1c

    .line 234
    :pswitch_5a
    invoke-virtual {p1}, Lfd;->n()Lfd$b;

    move-result-object v0

    .line 235
    sget-object v1, Lfd$b;->BIG_DECIMAL:Lfd$b;

    if-eq v0, v1, :cond_6a

    sget-object v0, Lhb$a;->USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

    invoke-virtual {p2, v0}, Lhc;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 237
    :cond_6a
    invoke-virtual {p1}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lmt;->a(Ljava/math/BigDecimal;)Lmw;

    move-result-object v0

    goto :goto_1c

    .line 239
    :cond_73
    invoke-virtual {p1}, Lfd;->u()D

    move-result-wide v0

    invoke-static {v0, v1}, Lmt;->a(D)Lmw;

    move-result-object v0

    goto :goto_1c

    .line 243
    :pswitch_7c
    const/4 v0, 0x1

    invoke-static {v0}, Lmt;->a(Z)Lmo;

    move-result-object v0

    goto :goto_1c

    .line 246
    :pswitch_82
    const/4 v0, 0x0

    invoke-static {v0}, Lmt;->a(Z)Lmo;

    move-result-object v0

    goto :goto_1c

    .line 249
    :pswitch_88
    invoke-static {}, Lmt;->a()Lmv;

    move-result-object v0

    goto :goto_1c

    .line 207
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_1d
        :pswitch_22
        :pswitch_2b
        :pswitch_5a
        :pswitch_7c
        :pswitch_82
        :pswitch_88
    .end packed-switch
.end method
