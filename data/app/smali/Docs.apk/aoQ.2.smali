.class LaoQ;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lapc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lant;

.field final synthetic a:LaoP;

.field final synthetic a:Laoc;


# direct methods
.method constructor <init>(LaoP;Lant;Laoc;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, LaoQ;->a:LaoP;

    iput-object p2, p0, LaoQ;->a:Lant;

    iput-object p3, p0, LaoQ;->a:Laoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Laqk",
            "<*>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, LaoQ;->a:Lant;

    iget-object v1, p0, LaoQ;->a:Laoc;

    invoke-virtual {v1}, Laoc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lapb;->a(Lant;Ljava/lang/Object;)V

    .line 757
    :try_start_b
    iget-object v0, p0, LaoQ;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Lapc;

    move-result-object v0

    iget-object v1, p0, LaoQ;->a:Lant;

    invoke-virtual {p1, v1}, Laoy;->a(Ljava/lang/Object;)Laoy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, p3, v2}, Lapc;->a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_20

    move-result-object v0

    .line 760
    invoke-virtual {p2}, Lapb;->a()V

    return-object v0

    :catchall_20
    move-exception v0

    invoke-virtual {p2}, Lapb;->a()V

    throw v0
.end method
