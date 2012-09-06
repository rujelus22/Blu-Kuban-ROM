.class LTv;
.super Ljava/lang/Object;
.source "ChangeFeedProcessor.java"

# interfaces
.implements LTN;


# instance fields
.field private final a:LTN;

.field private final a:LkG;


# direct methods
.method constructor <init>(LkG;LTN;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, LTv;->a:LkG;

    .line 31
    iput-object p2, p0, LTv;->a:LTN;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, LTv;->a:LTN;

    invoke-interface {v0}, LTN;->a()V

    .line 61
    return-void
.end method

.method public a(LSr;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LTv;->a:LTN;

    invoke-interface {v0, p1}, LTN;->a(LSr;)V

    .line 37
    return-void
.end method

.method public a(LSr;LSs;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, LTv;->a:LTN;

    invoke-interface {v0, p1, p2}, LTN;->a(LSr;LSs;)V

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, LTv;->a:LTN;

    invoke-interface {v0, p1}, LTN;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public b(LSr;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LTv;->a:LTN;

    invoke-interface {v0, p1}, LTN;->b(LSr;)V

    .line 45
    invoke-virtual {p1}, LSr;->a()I

    move-result v0

    .line 46
    iget-object v1, p0, LTv;->a:LkG;

    invoke-virtual {v1}, LkG;->a()I

    move-result v1

    if-le v0, v1, :cond_1b

    .line 47
    iget-object v1, p0, LTv;->a:LkG;

    invoke-virtual {v1, v0}, LkG;->a(I)V

    .line 48
    iget-object v0, p0, LTv;->a:LkG;

    invoke-virtual {v0}, LkG;->c()V

    .line 50
    :cond_1b
    return-void
.end method
