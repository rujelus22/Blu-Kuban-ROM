.class LXV;
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
        "LZE;",
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
    .line 1705
    iput-object p1, p0, LXV;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZE;)V
    .registers 2
    .parameter

    .prologue
    .line 1708
    invoke-static {p1}, LYL;->a(LZE;)V

    .line 1710
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1705
    check-cast p1, LZE;

    invoke-virtual {p0, p1}, LXV;->a(LZE;)V

    return-void
.end method
