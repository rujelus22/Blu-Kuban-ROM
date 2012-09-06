.class Lfh;
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
        "Lfd;",
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
    .line 1680
    iput-object p1, p0, Lfh;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)V
    .registers 2
    .parameter

    .prologue
    .line 1683
    invoke-static {p1}, Lgi;->a(Lfd;)V

    .line 1685
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1680
    check-cast p1, Lfd;

    invoke-virtual {p0, p1}, Lfh;->a(Lfd;)V

    return-void
.end method
