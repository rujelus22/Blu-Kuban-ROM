.class LfS;
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
        "LeP;",
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
    .line 1648
    iput-object p1, p0, LfS;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LeP;)V
    .registers 2
    .parameter

    .prologue
    .line 1651
    invoke-static {p1}, Lgg;->a(LeP;)V

    .line 1653
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1648
    check-cast p1, LeP;

    invoke-virtual {p0, p1}, LfS;->a(LeP;)V

    return-void
.end method
