.class public final Lem;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lem;->a:Ljava/lang/String;

    .line 14
    iput p2, p0, Lem;->b:I

    .line 15
    iput-object p3, p0, Lem;->c:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lek;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldn;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lem;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 20
    :try_start_28
    new-instance v0, Lek;

    invoke-direct {v0, p1}, Lek;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Leq; {:try_start_28 .. :try_end_2d} :catch_3b

    .line 26
    invoke-virtual {v0}, Lek;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lem;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    move-object v0, v3

    .line 41
    :cond_3a
    :goto_3a
    return-object v0

    .line 24
    :catch_3b
    move-exception v0

    move-object v0, v3

    goto :goto_3a

    .line 29
    :cond_3e
    invoke-virtual {v0}, Lek;->f()I

    move-result v1

    iget v2, p0, Lem;->b:I

    if-eq v1, v2, :cond_48

    move-object v0, v3

    .line 30
    goto :goto_3a

    .line 33
    :cond_48
    :try_start_48
    iget-object v1, p0, Lem;->c:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lek;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 34
    new-instance v0, Ldn;

    const-string v1, "SMS Control Msg: bad signature"

    invoke-direct {v0, v1}, Ldn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5c
    .catch Leq; {:try_start_48 .. :try_end_5c} :catch_5c

    .line 37
    :catch_5c
    move-exception v0

    new-instance v0, Ldn;

    const-string v1, "SMS Control MSG: corrupt signature"

    invoke-direct {v0, v1}, Ldn;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    move-object v0, v3

    .line 41
    goto :goto_3a
.end method
