.class final LXc;
.super Laqh;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqh",
        "<",
        "LanG;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Laqh;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LanG;
    .registers 2

    .prologue
    .line 43
    sget-object v0, LanI;->a:LanG;

    return-object v0
.end method

.method public a(LanG;)LanG;
    .registers 2
    .parameter

    .prologue
    .line 37
    return-object p1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, LXc;->a()LanG;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(LanG;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, LXc;->a(LanG;)LanG;

    move-result-object v0

    return-object v0
.end method

.method public b()LanG;
    .registers 2

    .prologue
    .line 48
    sget-object v0, LanI;->b:LanG;

    return-object v0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, LXc;->b()LanG;

    move-result-object v0

    return-object v0
.end method
