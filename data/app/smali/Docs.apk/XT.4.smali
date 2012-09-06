.class final LXT;
.super Ljava/lang/Object;
.source "FutureUtils.java"

# interfaces
.implements LalJ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LalJ",
        "<",
        "LalU",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LalU;)LalU;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LalU",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LalU",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)LalU;
    .registers 3
    .parameter

    .prologue
    .line 35
    check-cast p1, LalU;

    invoke-virtual {p0, p1}, LXT;->a(LalU;)LalU;

    move-result-object v0

    return-object v0
.end method
