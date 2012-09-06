.class public Lfc;
.super Ljava/lang/Object;
.source "ForwardingTitleBarListener.java"

# interfaces
.implements LIC;


# instance fields
.field protected final a:LIC;


# direct methods
.method protected constructor <init>(LIC;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lfc;->a:LIC;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lfc;->a:LIC;

    invoke-interface {v0}, LIC;->a()V

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lfc;->a:LIC;

    invoke-interface {v0, p1}, LIC;->a(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lfc;->a:LIC;

    invoke-interface {v0}, LIC;->b()V

    .line 39
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lfc;->a:LIC;

    invoke-interface {v0, p1}, LIC;->b(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lfc;->a:LIC;

    invoke-interface {v0, p1}, LIC;->c(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 48
    const-string v0, "ForwardingTitleBarListener[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lfc;->a:LIC;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
