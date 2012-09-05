.class public final Lja$d;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1034
    const-class v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/math/BigInteger;
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
    .line 1040
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 1043
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_30

    .line 1044
    sget-object v0, Lja$1;->b:[I

    invoke-virtual {p1}, Lfd;->n()Lfd$b;

    move-result-object v1

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 1058
    :cond_17
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_48

    .line 1060
    const/4 v0, 0x0

    .line 1063
    :goto_26
    return-object v0

    .line 1047
    :pswitch_27
    invoke-virtual {p1}, Lfd;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_26

    .line 1049
    :cond_30
    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_3d

    .line 1053
    invoke-virtual {p1}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_26

    .line 1054
    :cond_3d
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-eq v0, v1, :cond_17

    .line 1056
    iget-object v0, p0, Lja$d;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 1063
    :cond_48
    :try_start_48
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4d} :catch_4f

    move-object v0, v1

    goto :goto_26

    .line 1065
    :catch_4f
    move-exception v0

    iget-object v0, p0, Lja$d;->m:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 1044
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
    .end packed-switch
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
    .line 1030
    invoke-direct {p0, p1, p2}, Lja$d;->b(Lfd;Lhc;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
