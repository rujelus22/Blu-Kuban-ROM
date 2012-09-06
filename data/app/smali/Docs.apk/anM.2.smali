.class final LanM;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Laqd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laqd",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(LanG;)Ljava/lang/Boolean;
    .registers 3
    .parameter

    .prologue
    .line 135
    sget-object v0, LanI;->a:LanG;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Boolean;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 130
    const-class v0, LanN;

    if-eq p1, v0, :cond_8

    const-class v0, LasW;

    if-ne p1, v0, :cond_e

    :cond_8
    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, LanM;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(LanG;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1}, LanM;->a(LanG;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1}, LanM;->a(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, LanM;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
