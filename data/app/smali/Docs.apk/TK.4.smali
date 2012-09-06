.class public LTK;
.super LTV;
.source "EntryMonitorProcessor.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LkG;


# direct methods
.method public constructor <init>(LkG;Ljava/util/Set;LTN;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LTN;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p3}, LTV;-><init>(LTN;)V

    .line 32
    iput-object p2, p0, LTK;->a:Ljava/util/Set;

    .line 33
    iput-object p1, p0, LTK;->a:LkG;

    .line 34
    return-void
.end method


# virtual methods
.method public a(LSr;LSs;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LTK;->a:Ljava/util/Set;

    invoke-virtual {p2}, LSs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    invoke-super {p0, p1, p2}, LTV;->a(LSr;LSs;)V

    .line 48
    return-void
.end method

.method public b(LSr;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, LTV;->b(LSr;)V

    .line 39
    iget-object v0, p0, LTK;->a:LkG;

    invoke-virtual {p1}, LSr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LkG;->a(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, LTK;->a:LkG;

    invoke-virtual {v0}, LkG;->c()V

    .line 41
    return-void
.end method
