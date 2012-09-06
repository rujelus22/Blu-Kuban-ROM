.class LmQ;
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
        "Lmw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LmP;


# direct methods
.method constructor <init>(LmP;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, LmQ;->a:LmP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    check-cast p1, Lmw;

    invoke-virtual {p0, p1}, LmQ;->a(Lmw;)V

    return-void
.end method

.method public a(Lmw;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, LmU;->a(Lmw;)V

    .line 159
    return-void
.end method
