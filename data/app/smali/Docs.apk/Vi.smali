.class public final LVi;
.super LTV;
.source "NextFeedMonitorProcessor.java"


# instance fields
.field private a:Ljava/lang/String;

.field private a:Z


# direct methods
.method public constructor <init>(LTN;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, LTV;-><init>(LTN;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, LVi;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, LVi;->a:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    iget-boolean v0, p0, LVi;->a:Z

    const-string v1, "Must not call this method before finish()"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 44
    iget-object v0, p0, LVi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 26
    iget-boolean v0, p0, LVi;->a:Z

    if-nez v0, :cond_13

    move v0, v1

    :goto_6
    const-string v2, "Already finished. Did you delegate from more than one FeedProcessor to this one?"

    invoke-static {v0, v2}, LafQ;->b(ZLjava/lang/Object;)V

    .line 28
    invoke-super {p0, p1}, LTV;->a(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, LVi;->a:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, LVi;->a:Z

    .line 34
    return-void

    .line 26
    :cond_13
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 49
    const-string v0, "NextFeedMonitorProcessor[delegate=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, LVi;->a()LTN;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
