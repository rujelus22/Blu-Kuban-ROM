.class public abstract LTV;
.super Ljava/lang/Object;
.source "ForwardingFeedProcessor.java"

# interfaces
.implements LTN;


# instance fields
.field private final a:LTN;


# direct methods
.method protected constructor <init>(LTN;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTN;

    iput-object v0, p0, LTV;->a:LTN;

    .line 26
    return-void
.end method


# virtual methods
.method protected final a()LTN;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, LTV;->a:LTN;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, LTV;->a:LTN;

    invoke-interface {v0}, LTN;->a()V

    .line 41
    return-void
.end method

.method public a(LSr;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LTV;->a:LTN;

    invoke-interface {v0, p1}, LTN;->a(LSr;)V

    .line 31
    return-void
.end method

.method public a(LSr;LSs;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LTV;->a:LTN;

    invoke-interface {v0, p1, p2}, LTN;->a(LSr;LSs;)V

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LTV;->a:LTN;

    invoke-interface {v0, p1}, LTN;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public b(LSr;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, LTV;->a:LTN;

    invoke-interface {v0, p1}, LTN;->b(LSr;)V

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 59
    const-string v0, "ForwardingFeedProcessor[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LTV;->a:LTN;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
