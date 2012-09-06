.class LYg;
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
        "LXi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LXU;


# direct methods
.method constructor <init>(LXU;)V
    .registers 2
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, LYg;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXi;)V
    .registers 2
    .parameter

    .prologue
    .line 1716
    invoke-static {p1}, LYI;->a(LXi;)V

    .line 1718
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1713
    check-cast p1, LXi;

    invoke-virtual {p0, p1}, LYg;->a(LXi;)V

    return-void
.end method
