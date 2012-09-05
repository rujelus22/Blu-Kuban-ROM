.class public final Lja$n;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 852
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/lang/Number;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 859
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_1a

    .line 860
    sget-object v0, Lhb$a;->USE_BIG_INTEGER_FOR_INTS:Lhb$a;

    invoke-virtual {p2, v0}, Lhc;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 861
    invoke-virtual {p1}, Lfd;->s()Ljava/math/BigInteger;

    move-result-object v0

    .line 895
    :goto_14
    return-object v0

    .line 863
    :cond_15
    invoke-virtual {p1}, Lfd;->m()Ljava/lang/Number;

    move-result-object v0

    goto :goto_14

    .line 864
    :cond_1a
    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_34

    .line 868
    sget-object v0, Lhb$a;->USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

    invoke-virtual {p2, v0}, Lhc;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 869
    invoke-virtual {p1}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_14

    .line 871
    :cond_2b
    invoke-virtual {p1}, Lfd;->u()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_14

    .line 877
    :cond_34
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_94

    .line 878
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 880
    const/16 v1, 0x2e

    :try_start_42
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5e

    .line 882
    sget-object v1, Lhb$a;->USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

    invoke-virtual {p2, v1}, Lhc;->a(Lhb$a;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 883
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_14

    .line 885
    :cond_57
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_14

    .line 888
    :cond_5e
    sget-object v1, Lhb$a;->USE_BIG_INTEGER_FOR_INTS:Lhb$a;

    invoke-virtual {p2, v1}, Lhc;->a(Lhb$a;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 889
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_14

    .line 891
    :cond_6d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 892
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_85

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_85

    .line 893
    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_14

    .line 895
    :cond_85
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_88} :catch_8a

    move-result-object v0

    goto :goto_14

    .line 897
    :catch_8a
    move-exception v0

    iget-object v0, p0, Lja$n;->m:Ljava/lang/Class;

    const-string v1, "not a valid number"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 901
    :cond_94
    iget-object v0, p0, Lja$n;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 848
    invoke-direct {p0, p1, p2}, Lja$n;->b(Lfd;Lhc;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
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
    .line 915
    sget-object v0, Lja$1;->a:[I

    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v1

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 922
    invoke-virtual {p3, p1, p2}, Lht;->c(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    return-object v0

    .line 920
    :pswitch_14
    invoke-direct {p0, p1, p2}, Lja$n;->b(Lfd;Lhc;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_13

    .line 915
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method
