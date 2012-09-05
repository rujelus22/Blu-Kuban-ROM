.class public final Lja$c;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 999
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/math/BigDecimal;
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
    .line 1005
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 1006
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_c

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_11

    .line 1007
    :cond_c
    invoke-virtual {p1}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1016
    :goto_10
    return-object v0

    .line 1010
    :cond_11
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_36

    .line 1011
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 1013
    const/4 v0, 0x0

    goto :goto_10

    .line 1016
    :cond_25
    :try_start_25
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2a} :catch_2c

    move-object v0, v1

    goto :goto_10

    .line 1018
    :catch_2c
    move-exception v0

    iget-object v0, p0, Lja$c;->m:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 1022
    :cond_36
    iget-object v0, p0, Lja$c;->m:Ljava/lang/Class;

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
    .line 995
    invoke-direct {p0, p1, p2}, Lja$c;->b(Lfd;Lhc;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method
