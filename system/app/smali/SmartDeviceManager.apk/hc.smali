.class public abstract Lhc;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Lhb;


# direct methods
.method public constructor <init>(Lhb;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lhc;->a:Lhb;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lhb;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lhc;->a:Lhb;

    return-object v0
.end method

.method public abstract a(Lfd;Lfg;Ljava/lang/String;)Lhg;
.end method

.method public abstract a(Ljava/lang/Class;)Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhg;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/Exception;)Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Exception;",
            ")",
            "Lhg;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;)Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lhg;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lhg;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/String;)Lhg;
.end method

.method public abstract a(Lnd;Ljava/lang/String;)Lhg;
.end method

.method public abstract a(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract a(Lmh;)V
.end method

.method public abstract a(Lfd;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method

.method public final a(Lhb$a;)Z
    .registers 3
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lhc;->a:Lhb;

    invoke-virtual {v0, p1}, Lhb;->a(Lhb$a;)Z

    move-result v0

    return v0
.end method

.method public b()Lhe;
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;Ljava/lang/String;)Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lhg;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Class;Ljava/lang/String;)Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lhg;"
        }
    .end annotation
.end method

.method public final c()Lmt;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lhc;->a:Lhb;

    invoke-virtual {v0}, Lhb;->i()Lmt;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lmh;
.end method

.method public abstract e()Lmd;
.end method
