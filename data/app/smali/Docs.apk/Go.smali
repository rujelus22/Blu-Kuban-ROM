.class LGo;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "LGm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LGn;


# direct methods
.method constructor <init>(LGn;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, LGo;->a:LGn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LGm;)V
    .registers 2
    .parameter

    .prologue
    .line 434
    invoke-static {p1}, LGy;->a(LGm;)V

    .line 436
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    check-cast p1, LGm;

    invoke-virtual {p0, p1}, LGo;->a(LGm;)V

    return-void
.end method
