.class public final LOk;
.super Ljava/lang/Object;
.source "CachedAsyncSearchHandler.java"

# interfaces
.implements LOC;


# instance fields
.field private final a:LOE;

.field private a:LOi;

.field private final a:LTF;

.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LOD;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Llu;


# direct methods
.method public constructor <init>(Llu;LTF;LOE;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LOD;->a:LOD;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LOk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, LOk;->a:LOi;

    .line 39
    const-string v0, "null loader"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, LOk;->a:Llu;

    .line 40
    const-string v0, "null synchronizer"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTF;

    iput-object v0, p0, LOk;->a:LTF;

    .line 41
    const-string v0, "null launcher"

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOE;

    iput-object v0, p0, LOk;->a:LOE;

    .line 42
    return-void
.end method

.method static synthetic a(LOk;LOi;)LOi;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, LOk;->a:LOi;

    return-object p1
.end method

.method static synthetic a(LOk;)LTF;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LOk;->a:LTF;

    return-object v0
.end method

.method static synthetic a(LOk;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LOk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic a(LOk;)Llu;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LOk;->a:Llu;

    return-object v0
.end method


# virtual methods
.method public a()LOD;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, LOk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOD;

    return-object v0
.end method

.method public a(LkG;Ljava/lang/String;J)LOG;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, LOk;->a()V

    .line 54
    if-nez p2, :cond_11

    .line 55
    invoke-static {}, LOG;->a()LOG;

    move-result-object v0

    .line 56
    iget-object v1, p0, LOk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, LOD;->e:LOD;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 115
    :goto_10
    return-object v0

    .line 58
    :cond_11
    iget-object v0, p0, LOk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LOD;->b:LOD;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, LOk;->a:Llu;

    invoke-interface {v0, p1, p2, p3, p4}, Llu;->a(LkG;Ljava/lang/String;J)LkK;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, LkK;->c()J

    move-result-wide v1

    .line 67
    new-instance v3, LOl;

    invoke-direct {v3, p0, p1, v0}, LOl;-><init>(LOk;LkG;LkK;)V

    .line 111
    invoke-virtual {p1}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v4, p0, LOk;->a:LOE;

    invoke-interface {v4, v0, p2, v3}, LOE;->a(Ljava/lang/String;Ljava/lang/String;LOj;)LOi;

    move-result-object v0

    iput-object v0, p0, LOk;->a:LOi;

    .line 113
    invoke-static {p2, v1, v2}, LOG;->a(Ljava/lang/String;J)LOG;

    move-result-object v0

    goto :goto_10
.end method

.method public a()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, LOk;->a:LOi;

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, LOk;->a:LOi;

    invoke-interface {v0}, LOi;->a()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, LOk;->a:LOi;

    .line 124
    :cond_c
    iget-object v0, p0, LOk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LOD;->d:LOD;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
