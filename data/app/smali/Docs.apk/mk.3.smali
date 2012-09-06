.class Lmk;
.super Ljava/lang/Object;
.source "OperationQueueDelegate.java"

# interfaces
.implements LZS;


# instance fields
.field final synthetic a:Lmj;


# direct methods
.method constructor <init>(Lmj;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lmk;->a:Lmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LZR;
    .registers 9

    .prologue
    .line 82
    new-instance v0, LXL;

    iget-object v1, p0, Lmk;->a:Lmj;

    invoke-static {v1}, Lmj;->a(Lmj;)LFX;

    move-result-object v1

    const-string v2, "multiOperationQueueMinWait"

    const/16 v3, 0xc8

    invoke-interface {v1, v2, v3}, LFX;->a(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lmk;->a:Lmj;

    invoke-static {v3}, Lmj;->a(Lmj;)LFX;

    move-result-object v3

    const-string v4, "multiOperationQueueWaitGrowthFactor"

    const-wide/high16 v5, 0x3ff8

    invoke-interface {v3, v4, v5, v6}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v3

    iget-object v5, p0, Lmk;->a:Lmj;

    invoke-static {v5}, Lmj;->a(Lmj;)LFX;

    move-result-object v5

    const-string v6, "multiOperationQueueMaxWait"

    const/16 v7, 0x2710

    invoke-interface {v5, v6, v7}, LFX;->a(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct/range {v0 .. v6}, LXL;-><init>(JDJ)V

    return-object v0
.end method
