.class final LXd;
.super Laqh;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqh",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Laqh;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, LXd;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, LXd;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
