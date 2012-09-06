.class public Lmn;
.super Ljava/lang/Object;
.source "OperationQueueNetworkChangeListener.java"

# interfaces
.implements LOh;


# instance fields
.field private final a:LXJ;

.field private final a:Llu;

.field private final a:Lmi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llu;LXJ;Lmi;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lmn;->a:Llu;

    .line 28
    iput-object p3, p0, Lmn;->a:LXJ;

    .line 29
    iput-object p4, p0, Lmn;->a:Lmi;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 36
    iget-object v0, p0, Lmn;->a:LXJ;

    invoke-static {p1, v0}, Lmp;->a(Landroid/content/Context;LXJ;)Lmo;

    move-result-object v1

    .line 38
    iget-object v0, p0, Lmn;->a:Llu;

    invoke-interface {v0}, Llu;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lmn;->a:Llu;

    invoke-interface {v3, v0}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 40
    iget-object v3, p0, Lmn;->a:Lmi;

    invoke-interface {v3, v0, v1}, Lmi;->a(LkG;Lmo;)V

    goto :goto_1c

    .line 43
    :cond_34
    return-void
.end method
