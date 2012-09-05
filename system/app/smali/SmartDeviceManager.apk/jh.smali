.class public final Ljh;
.super Lja;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljh$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lja",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lja;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/util/Map;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 172
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 173
    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_d

    .line 174
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    .line 177
    :cond_d
    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-eq v0, v1, :cond_17

    .line 179
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 207
    :goto_16
    return-object v0

    .line 181
    :cond_17
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 183
    invoke-virtual {p0, p1, p2}, Ljh;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v2

    sget-object v3, Lfg;->FIELD_NAME:Lfg;

    if-eq v2, v3, :cond_34

    .line 185
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 186
    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 187
    goto :goto_16

    .line 189
    :cond_34
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 191
    invoke-virtual {p0, p1, p2}, Ljh;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v3

    .line 192
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v4

    sget-object v5, Lfg;->FIELD_NAME:Lfg;

    if-eq v4, v5, :cond_54

    .line 193
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 194
    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    .line 196
    goto :goto_16

    .line 199
    :cond_54
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 200
    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_5f
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 205
    invoke-virtual {p0, p1, p2}, Ljh;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->END_OBJECT:Lfg;

    if-ne v0, v1, :cond_5f

    move-object v0, v4

    .line 207
    goto :goto_16
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 36
    sget-object v0, Ljh$1;->a:[I

    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v1

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    .line 85
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 40
    :pswitch_17
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_1b
    return-object v0

    .line 46
    :pswitch_1c
    sget-object v0, Lhb$a;->USE_BIG_INTEGER_FOR_INTS:Lhb$a;

    invoke-virtual {p2, v0}, Lhc;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 47
    invoke-virtual {p1}, Lfd;->s()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1b

    .line 49
    :cond_29
    invoke-virtual {p1}, Lfd;->m()Ljava/lang/Number;

    move-result-object v0

    goto :goto_1b

    .line 55
    :pswitch_2e
    sget-object v0, Lhb$a;->USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

    invoke-virtual {p2, v0}, Lhc;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 56
    invoke-virtual {p1}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1b

    .line 58
    :cond_3b
    invoke-virtual {p1}, Lfd;->u()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1b

    .line 61
    :pswitch_44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1b

    .line 63
    :pswitch_47
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1b

    .line 65
    :pswitch_4a
    invoke-virtual {p1}, Lfd;->w()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b

    .line 68
    :pswitch_4f
    const/4 v0, 0x0

    goto :goto_1b

    .line 73
    :pswitch_51
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->END_ARRAY:Lfg;

    if-ne v0, v1, :cond_60

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1b

    :cond_60
    invoke-virtual {p2}, Lhc;->d()Lmh;

    move-result-object v0

    invoke-virtual {v0}, Lmh;->a()[Ljava/lang/Object;

    move-result-object v1

    move v2, v6

    move-object v3, v1

    move v1, v6

    :goto_6b
    invoke-virtual {p0, p1, p2}, Ljh;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    array-length v5, v3

    if-lt v2, v5, :cond_7a

    invoke-virtual {v0, v3}, Lmh;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    move v2, v6

    :cond_7a
    add-int/lit8 v5, v2, 0x1

    aput-object v4, v3, v2

    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v2

    sget-object v4, Lfg;->END_ARRAY:Lfg;

    if-ne v2, v4, :cond_9a

    new-instance v2, Ljava/util/ArrayList;

    shr-int/lit8 v4, v1, 0x3

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v3, v5, v2}, Lmh;->a([Ljava/lang/Object;ILjava/util/List;)V

    move-object v0, v2

    goto :goto_1b

    .line 77
    :pswitch_95
    invoke-direct {p0, p1, p2}, Ljh;->b(Lfd;Lhc;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1b

    :cond_9a
    move v2, v5

    goto :goto_6b

    .line 36
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1c
        :pswitch_2e
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4f
        :pswitch_51
        :pswitch_95
        :pswitch_95
    .end packed-switch
.end method

.method public final a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 6
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
    .line 93
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 94
    sget-object v1, Ljh$1;->a:[I

    invoke-virtual {v0}, Lfg;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_5a

    .line 134
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 102
    :pswitch_16
    invoke-virtual {p3, p1, p2}, Lht;->d(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    :goto_1a
    return-object v0

    .line 108
    :pswitch_1b
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 112
    :pswitch_20
    sget-object v0, Lhb$a;->USE_BIG_INTEGER_FOR_INTS:Lhb$a;

    invoke-virtual {p2, v0}, Lhc;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 113
    invoke-virtual {p1}, Lfd;->s()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1a

    .line 115
    :cond_2d
    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1a

    .line 119
    :pswitch_36
    sget-object v0, Lhb$a;->USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

    invoke-virtual {p2, v0}, Lhc;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 120
    invoke-virtual {p1}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1a

    .line 122
    :cond_43
    invoke-virtual {p1}, Lfd;->u()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1a

    .line 125
    :pswitch_4c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a

    .line 127
    :pswitch_4f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1a

    .line 129
    :pswitch_52
    invoke-virtual {p1}, Lfd;->w()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 132
    :pswitch_57
    const/4 v0, 0x0

    goto :goto_1a

    .line 94
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_20
        :pswitch_36
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_57
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method
