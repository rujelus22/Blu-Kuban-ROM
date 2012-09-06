.class public final LaqE;
.super Ljava/lang/Object;
.source "MembersInjectorLookup.java"

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
.field private final a:LanP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanP",
            "<TT;>;"
        }
    .end annotation
.end field

.field private a:Lany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lany",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;


# virtual methods
.method public a()LanP;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanP",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, LaqE;->a:LanP;

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, LaqE;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lany;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lany",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, LaqE;->a:Lany;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "delegate already initialized"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 69
    const-string v0, "delegate"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lany;

    iput-object v0, p0, LaqE;->a:Lany;

    .line 70
    return-void

    .line 68
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method
