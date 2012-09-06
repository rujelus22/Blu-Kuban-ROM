.class Lfu;
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
        "Lhw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfe;


# direct methods
.method constructor <init>(Lfe;)V
    .registers 2
    .parameter

    .prologue
    .line 1776
    iput-object p1, p0, Lfu;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhw;)V
    .registers 2
    .parameter

    .prologue
    .line 1779
    invoke-static {p1}, Lgs;->a(Lhw;)V

    .line 1781
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1776
    check-cast p1, Lhw;

    invoke-virtual {p0, p1}, Lfu;->a(Lhw;)V

    return-void
.end method
