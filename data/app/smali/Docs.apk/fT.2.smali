.class LfT;
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
        "LdO;",
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
    .line 1656
    iput-object p1, p0, LfT;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LdO;)V
    .registers 2
    .parameter

    .prologue
    .line 1659
    invoke-static {p1}, LfX;->a(LdO;)V

    .line 1661
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1656
    check-cast p1, LdO;

    invoke-virtual {p0, p1}, LfT;->a(LdO;)V

    return-void
.end method
