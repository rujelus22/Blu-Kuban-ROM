.class final LaM/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/bx;
    .registers 3
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v0

    invoke-static {v0}, LaM/m;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 142
    check-cast p1, Lcom/google/googlenav/ai;

    invoke-virtual {p0, p1}, LaM/n;->a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method
