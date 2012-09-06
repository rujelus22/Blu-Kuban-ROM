.class LadW;
.super LadQ;
.source "GsonParser.java"


# instance fields
.field private a:LadT;

.field private final a:LadU;

.field private final a:LamW;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LadU;LamW;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, LadQ;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LadW;->a:Ljava/util/List;

    .line 50
    iput-object p1, p0, LadW;->a:LadU;

    .line 51
    iput-object p2, p0, LadW;->a:LamW;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LamW;->a(Z)V

    .line 54
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, LadW;->a:LadT;

    sget-object v1, LadT;->g:LadT;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, LadW;->a:LadT;

    sget-object v1, LadT;->h:LadT;

    if-ne v0, v1, :cond_11

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, LafQ;->a(Z)V

    .line 140
    return-void

    .line 138
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()B
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, LadW;->b()V

    .line 79
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public a()D
    .registers 3

    .prologue
    .line 127
    invoke-direct {p0}, LadW;->b()V

    .line 128
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public a()F
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, LadW;->b()V

    .line 98
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, LadW;->b()V

    .line 92
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 133
    invoke-direct {p0}, LadW;->b()V

    .line 134
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()LadN;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, LadW;->a:LadU;

    return-object v0
.end method

.method public a()LadQ;
    .registers 3

    .prologue
    .line 227
    sget-object v0, LadX;->a:[I

    iget-object v1, p0, LadW;->a:LadT;

    invoke-virtual {v1}, LadT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 239
    :goto_d
    return-object p0

    .line 229
    :pswitch_e
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->f()V

    .line 230
    const-string v0, "]"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 231
    sget-object v0, LadT;->b:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    goto :goto_d

    .line 234
    :pswitch_1c
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->f()V

    .line 235
    const-string v0, "}"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 236
    sget-object v0, LadT;->d:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    goto :goto_d

    .line 227
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_1c
    .end packed-switch
.end method

.method public a()LadT;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, LadW;->a:LadT;

    if-eqz v0, :cond_12

    .line 150
    sget-object v0, LadX;->a:[I

    iget-object v1, p0, LadW;->a:LadT;

    invoke-virtual {v1}, LadT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_fc

    .line 165
    :cond_12
    :goto_12
    :try_start_12
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->a()Lana;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_17} :catch_40

    move-result-object v0

    .line 169
    :goto_18
    sget-object v1, LadX;->b:[I

    invoke-virtual {v0}, Lana;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_104

    .line 219
    iput-object v2, p0, LadW;->a:Ljava/lang/String;

    .line 220
    iput-object v2, p0, LadW;->a:LadT;

    .line 222
    :goto_27
    iget-object v0, p0, LadW;->a:LadT;

    return-object v0

    .line 152
    :pswitch_2a
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->a()V

    .line 153
    iget-object v0, p0, LadW;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 156
    :pswitch_35
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->c()V

    .line 157
    iget-object v0, p0, LadW;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 166
    :catch_40
    move-exception v0

    .line 167
    sget-object v0, Lana;->j:Lana;

    goto :goto_18

    .line 171
    :pswitch_44
    const-string v0, "["

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 172
    sget-object v0, LadT;->a:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    goto :goto_27

    .line 175
    :pswitch_4d
    const-string v0, "]"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 176
    sget-object v0, LadT;->b:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    .line 177
    iget-object v0, p0, LadW;->a:Ljava/util/List;

    iget-object v1, p0, LadW;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->b()V

    goto :goto_27

    .line 181
    :pswitch_68
    const-string v0, "{"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 182
    sget-object v0, LadT;->c:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    goto :goto_27

    .line 185
    :pswitch_71
    const-string v0, "}"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 186
    sget-object v0, LadT;->d:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    .line 187
    iget-object v0, p0, LadW;->a:Ljava/util/List;

    iget-object v1, p0, LadW;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->d()V

    goto :goto_27

    .line 191
    :pswitch_8c
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->c()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 192
    const-string v0, "true"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 193
    sget-object v0, LadT;->i:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    goto :goto_27

    .line 195
    :cond_9d
    const-string v0, "false"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 196
    sget-object v0, LadT;->j:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    goto :goto_27

    .line 200
    :pswitch_a6
    const-string v0, "null"

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 201
    sget-object v0, LadT;->k:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    .line 202
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->e()V

    goto/16 :goto_27

    .line 205
    :pswitch_b5
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 206
    sget-object v0, LadT;->f:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    goto/16 :goto_27

    .line 209
    :pswitch_c3
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 210
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_dc

    sget-object v0, LadT;->g:LadT;

    :goto_d8
    iput-object v0, p0, LadW;->a:LadT;

    goto/16 :goto_27

    :cond_dc
    sget-object v0, LadT;->h:LadT;

    goto :goto_d8

    .line 214
    :pswitch_df
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LadW;->a:Ljava/lang/String;

    .line 215
    sget-object v0, LadT;->e:LadT;

    iput-object v0, p0, LadW;->a:LadT;

    .line 216
    iget-object v0, p0, LadW;->a:Ljava/util/List;

    iget-object v1, p0, LadW;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, LadW;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 150
    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_35
    .end packed-switch

    .line 169
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_44
        :pswitch_4d
        :pswitch_68
        :pswitch_71
        :pswitch_8c
        :pswitch_a6
        :pswitch_b5
        :pswitch_c3
        :pswitch_df
    .end packed-switch
.end method

.method public a()LalC;
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, LadW;->b()V

    .line 110
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, LalC;->a(Ljava/lang/String;)LalC;

    move-result-object v0

    return-object v0
.end method

.method public a()LalE;
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, LadW;->b()V

    .line 116
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, LalE;->a(Ljava/lang/String;)LalE;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, LadW;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, LadW;->a:Ljava/util/List;

    iget-object v1, p0, LadW;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method public a()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 121
    invoke-direct {p0}, LadW;->b()V

    .line 122
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, LadW;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 103
    invoke-direct {p0}, LadW;->b()V

    .line 104
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, LadW;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()S
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, LadW;->b()V

    .line 85
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, LadW;->a:LamW;

    invoke-virtual {v0}, LamW;->close()V

    .line 59
    return-void
.end method

.method public b()LadT;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, LadW;->a:LadT;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, LadW;->a:Ljava/lang/String;

    return-object v0
.end method
