.class LaoS;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Laov;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laov",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LaoR;

.field final synthetic a:Laoy;


# direct methods
.method constructor <init>(LaoR;Laoy;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, LaoS;->a:LaoR;

    iput-object p2, p0, LaoS;->a:Laoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lapb;)Ljava/lang/Object;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, LaoS;->a:LaoR;

    iget-object v0, v0, LaoR;->a:Laqk;

    iget-object v1, p0, LaoS;->a:LaoR;

    iget-object v1, v1, LaoR;->a:Laoc;

    invoke-virtual {v1}, Laoc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lapb;->a(Laqk;Ljava/lang/Object;)Laqk;

    move-result-object v1

    .line 1002
    :try_start_10
    iget-object v0, p0, LaoS;->a:LaoR;

    iget-object v0, v0, LaoR;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Lapc;

    move-result-object v0

    iget-object v2, p0, LaoS;->a:Laoy;

    iget-object v3, p0, LaoS;->a:LaoR;

    iget-object v3, v3, LaoR;->a:Laqk;

    const/4 v4, 0x0

    invoke-interface {v0, v2, p1, v3, v4}, Lapc;->a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 1004
    invoke-virtual {p1, v1}, Lapb;->a(Laqk;)V

    return-object v0

    :catchall_27
    move-exception v0

    invoke-virtual {p1, v1}, Lapb;->a(Laqk;)V

    throw v0
.end method
