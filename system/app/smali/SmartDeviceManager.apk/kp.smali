.class public abstract Lkp;
.super Lht;
.source "a"


# instance fields
.field protected final b:Lkd;

.field protected final c:Lnd;

.field protected final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnd;Lkd;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lht;-><init>()V

    .line 32
    iput-object p1, p0, Lkp;->c:Lnd;

    .line 33
    iput-object p2, p0, Lkp;->b:Lkd;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkp;->d:Ljava/util/HashMap;

    .line 35
    return-void
.end method


# virtual methods
.method protected final a(Lhc;Ljava/lang/String;)Lhf;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc;",
            "Ljava/lang/String;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lkp;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 71
    :try_start_3
    iget-object v0, p0, Lkp;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    .line 72
    if-nez v0, :cond_30

    .line 73
    iget-object v0, p0, Lkp;->b:Lkd;

    invoke-interface {v0, p2}, Lkd;->a(Ljava/lang/String;)Lnd;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1f

    .line 75
    iget-object v0, p0, Lkp;->c:Lnd;

    invoke-virtual {p1, v0, p2}, Lhc;->a(Lnd;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1c

    .line 80
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 77
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lhc;->b()Lhe;

    move-result-object v2

    invoke-virtual {p1}, Lhc;->a()Lhb;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lhe;->a(Lhb;Lnd;)Lhf;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lkp;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_1c

    .line 81
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lkp;->c:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "; base-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkp;->c:Lnd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "; id-resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkp;->b:Lkd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
