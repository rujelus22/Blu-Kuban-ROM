.class public final Lio;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lhv;
.end annotation


# instance fields
.field final a:Liq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liq;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liq",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    .line 33
    iput-object p1, p0, Lio;->a:Liq;

    .line 34
    return-void
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
    .line 20
    invoke-virtual {p0, p1, p2}, Lio;->b(Lfd;Lhc;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lfd;Lhc;)Ljava/lang/Enum;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 71
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_21

    .line 72
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lio;->a:Liq;

    invoke-virtual {v1, v0}, Liq;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 74
    if-nez v0, :cond_66

    .line 75
    iget-object v0, p0, Lio;->a:Liq;

    invoke-virtual {v0}, Liq;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "value not one of declared Enum instance names"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 80
    :cond_21
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_5b

    .line 81
    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    .line 82
    iget-object v1, p0, Lio;->a:Liq;

    invoke-virtual {v1, v0}, Liq;->a(I)Ljava/lang/Enum;

    move-result-object v0

    .line 83
    if-nez v0, :cond_66

    .line 84
    iget-object v0, p0, Lio;->a:Liq;

    invoke-virtual {v0}, Liq;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index value outside legal index range [0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio;->a:Liq;

    invoke-virtual {v2}, Liq;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lhc;->c(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 88
    :cond_5b
    iget-object v0, p0, Lio;->a:Liq;

    invoke-virtual {v0}, Liq;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 86
    :cond_66
    return-object v0
.end method
