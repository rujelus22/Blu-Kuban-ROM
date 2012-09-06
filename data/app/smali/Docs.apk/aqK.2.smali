.class public final LaqK;
.super Ljava/lang/Object;
.source "ProviderLookup.java"

# interfaces
.implements Laqm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laqm;"
    }
.end annotation


# instance fields
.field private a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lant;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lant",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "source"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LaqK;->a:Ljava/lang/Object;

    .line 43
    const-string v0, "key"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lant;

    iput-object v0, p0, LaqK;->a:Lant;

    .line 44
    return-void
.end method

.method static synthetic a(LaqK;)LanD;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LaqK;->a:LanD;

    return-object v0
.end method

.method static synthetic a(LaqK;)Lant;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LaqK;->a:Lant;

    return-object v0
.end method


# virtual methods
.method public a()LanD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, LaqL;

    invoke-direct {v0, p0}, LaqL;-><init>(LaqK;)V

    return-object v0
.end method

.method public a()Lant;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, LaqK;->a:Lant;

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, LaqK;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(LanD;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, LaqK;->a:LanD;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "delegate already initialized"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 65
    const-string v0, "delegate"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LaqK;->a:LanD;

    .line 66
    return-void

    .line 64
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method
