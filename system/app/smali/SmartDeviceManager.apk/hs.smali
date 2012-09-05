.class public abstract Lhs;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Lhq;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhq;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lhs;->a:Lhq;

    .line 32
    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lhs;->b:Ljava/lang/Class;

    .line 33
    return-void

    .line 32
    :cond_b
    iget-object v0, p0, Lhs;->a:Lhq;

    invoke-virtual {v0}, Lhq;->f()Ljava/lang/Class;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation
.end method

.method public abstract a(Lnd;)Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation
.end method

.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lhs;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract a(JLez;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method

.method public abstract a(Lhq;Lez;Ljava/lang/Object;Lhr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Date;Lez;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method

.method public final a(Lhq$a;)Z
    .registers 3
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lhs;->a:Lhq;

    invoke-virtual {v0, p1}, Lhq;->a(Lhq$a;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;)Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation
.end method

.method public abstract b(Lnd;)Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation
.end method

.method public abstract c()Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
