.class LYC;
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
        "LXk;",
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
    .line 1729
    iput-object p1, p0, LYC;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXk;)V
    .registers 2
    .parameter

    .prologue
    .line 1732
    invoke-static {p1}, LYJ;->a(LXk;)V

    .line 1734
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1729
    check-cast p1, LXk;

    invoke-virtual {p0, p1}, LYC;->a(LXk;)V

    return-void
.end method
