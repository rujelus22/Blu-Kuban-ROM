.class public final Lkj;
.super Lkp;
.source "a"


# direct methods
.method public constructor <init>(Lnd;Lkd;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lkp;-><init>(Lnd;Lkd;)V

    .line 25
    return-void
.end method

.method private final e(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 78
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-eq v0, v1, :cond_26

    .line 79
    sget-object v0, Lfg;->START_OBJECT:Lfg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON Object to contain As.WRAPPER_OBJECT type information for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lhc;->a(Lfd;Lfg;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 83
    :cond_26
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-eq v0, v1, :cond_52

    .line 84
    sget-object v0, Lfg;->FIELD_NAME:Lfg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON String that contains type id (for subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lhc;->a(Lfd;Lfg;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 87
    :cond_52
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lkj;->a(Lhc;Ljava/lang/String;)Lhf;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 89
    invoke-virtual {v0, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v1

    sget-object v2, Lfg;->END_OBJECT:Lfg;

    if-eq v1, v2, :cond_72

    .line 92
    sget-object v0, Lfg;->END_OBJECT:Lfg;

    const-string v1, "expected closing END_OBJECT after type information and deserialized value"

    invoke-virtual {p2, p1, v0, v1}, Lhc;->a(Lfd;Lfg;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 95
    :cond_72
    return-object v0
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 39
    invoke-direct {p0, p1, p2}, Lkj;->e(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 46
    invoke-direct {p0, p1, p2}, Lkj;->e(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 53
    invoke-direct {p0, p1, p2}, Lkj;->e(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 60
    invoke-direct {p0, p1, p2}, Lkj;->e(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
