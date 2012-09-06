.class LOl;
.super Ljava/lang/Object;
.source "CachedAsyncSearchHandler.java"

# interfaces
.implements LOj;


# instance fields
.field final synthetic a:LOk;

.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic a:LkG;

.field final synthetic a:LkK;


# direct methods
.method constructor <init>(LOk;LkG;LkK;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LOl;->a:LOk;

    iput-object p2, p0, LOl;->a:LkG;

    iput-object p3, p0, LOl;->a:LkK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LOl;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public a(LSs;)V
    .registers 5
    .parameter

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, LOl;->a:Ljava/util/Set;

    invoke-virtual {p1}, LSs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, LOl;->a:LOk;

    invoke-static {v0}, LOk;->a(LOk;)LTF;

    move-result-object v0

    iget-object v1, p0, LOl;->a:LkG;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, LTF;->a(LkG;LSs;Ljava/lang/Boolean;)V
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 81
    :goto_19
    return-void

    .line 78
    :catch_1a
    move-exception v0

    .line 79
    const-string v1, "CachedOnlineSearchHandler"

    const-string v2, "Error inserting doc entry"

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, LOl;->a:LOk;

    invoke-static {v0}, LOk;->a(LOk;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, LOD;->c:LOD;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, LOl;->a:LOk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LOk;->a(LOk;LOi;)LOi;

    .line 102
    iget-object v0, p0, LOl;->a:LkK;

    invoke-virtual {v0}, LkK;->b()V

    .line 103
    return-void
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, LOl;->a:LOk;

    invoke-static {v0}, LOk;->a(LOk;)Llu;

    move-result-object v0

    iget-object v1, p0, LOl;->a:LkK;

    invoke-virtual {v1}, LkK;->c()J

    move-result-wide v1

    iget-object v3, p0, LOl;->a:Ljava/util/Set;

    invoke-interface {v0, v1, v2, v3}, Llu;->a(JLjava/util/Set;)Z

    move-result v0

    .line 86
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, LOl;->a:Ljava/util/Set;

    .line 87
    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, LOl;->a:LOk;

    invoke-static {v0}, LOk;->a(LOk;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, LOD;->d:LOD;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, LOl;->a:LOk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LOk;->a(LOk;LOi;)LOi;

    .line 108
    iget-object v0, p0, LOl;->a:LkK;

    invoke-virtual {v0}, LkK;->b()V

    .line 109
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, LOl;->a:LOk;

    invoke-static {v0}, LOk;->a(LOk;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, LOD;->e:LOD;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, LOl;->a:LOk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LOk;->a(LOk;LOi;)LOi;

    .line 95
    iget-object v0, p0, LOl;->a:LkK;

    invoke-virtual {v0}, LkK;->a()V

    .line 96
    iget-object v0, p0, LOl;->a:LkK;

    invoke-virtual {v0}, LkK;->c()V

    .line 97
    return-void
.end method
