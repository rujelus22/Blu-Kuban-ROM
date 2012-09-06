.class LaM/aK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# instance fields
.field final synthetic a:LaM/aI;


# direct methods
.method constructor <init>(LaM/aI;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, LaM/aK;->a:LaM/aI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/bx;
    .registers 3
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ai;->h(I)Lcom/google/googlenav/ap;

    move-result-object v0

    invoke-static {v0}, LaM/m;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 177
    check-cast p1, Lcom/google/googlenav/ai;

    invoke-virtual {p0, p1}, LaM/aK;->a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method
