.class LYr;
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
        "LZy;",
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
    .line 1721
    iput-object p1, p0, LYr;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZy;)V
    .registers 2
    .parameter

    .prologue
    .line 1724
    invoke-static {p1}, LYK;->a(LZy;)V

    .line 1726
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1721
    check-cast p1, LZy;

    invoke-virtual {p0, p1}, LYr;->a(LZy;)V

    return-void
.end method
