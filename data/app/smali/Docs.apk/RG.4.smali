.class LRG;
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
        "LRE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LRF;


# direct methods
.method constructor <init>(LRF;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, LRG;->a:LRF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LRE;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    invoke-static {p1}, LRJ;->a(LRE;)V

    .line 98
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    check-cast p1, LRE;

    invoke-virtual {p0, p1}, LRG;->a(LRE;)V

    return-void
.end method
