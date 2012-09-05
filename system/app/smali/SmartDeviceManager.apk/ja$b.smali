.class public final Lja$b;
.super Ljf;
.source "a"

# interfaces
.implements Lho;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<*>;>;",
        "Lho;"
    }
.end annotation


# instance fields
.field protected final a:Lnd;

.field protected b:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 4
    .parameter

    .prologue
    .line 964
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    .line 965
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lmb;->b(Lnd;Ljava/lang/Class;)[Lnd;

    move-result-object v0

    .line 966
    if-nez v0, :cond_18

    .line 967
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    iput-object v0, p0, Lja$b;->a:Lnd;

    .line 971
    :goto_17
    return-void

    .line 969
    :cond_18
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lja$b;->a:Lnd;

    goto :goto_17
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 948
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lja$b;->b:Lhf;

    invoke-virtual {v1, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lhb;Lhe;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lja$b;->a:Lnd;

    invoke-virtual {p2, p1, v0}, Lhe;->a(Lhb;Lnd;)Lhf;

    move-result-object v0

    iput-object v0, p0, Lja$b;->b:Lhf;

    .line 985
    return-void
.end method
