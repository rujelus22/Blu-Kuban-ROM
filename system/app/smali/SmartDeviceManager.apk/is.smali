.class public abstract Lis;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis$b;,
        Lis$a;,
        Lis$c;,
        Lis$d;,
        Lis$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljf",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljf;-><init>(Ljava/lang/Class;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_1d

    .line 31
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_c
    invoke-virtual {p0, v0}, Lis;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_13

    move-result-object v0

    .line 34
    if-eqz v0, :cond_14

    .line 35
    return-object v0

    .line 37
    :catch_13
    move-exception v0

    .line 40
    :cond_14
    iget-object v0, p0, Lis;->m:Ljava/lang/Class;

    const-string v1, "not a valid textual representation"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 42
    :cond_1d
    iget-object v0, p0, Lis;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method
