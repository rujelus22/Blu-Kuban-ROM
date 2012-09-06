.class LPF;
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
        "LQp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LPr;


# direct methods
.method constructor <init>(LPr;)V
    .registers 2
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, LPF;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LQp;)V
    .registers 2
    .parameter

    .prologue
    .line 574
    invoke-static {p1}, LPT;->a(LQp;)V

    .line 576
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 571
    check-cast p1, LQp;

    invoke-virtual {p0, p1}, LPF;->a(LQp;)V

    return-void
.end method
