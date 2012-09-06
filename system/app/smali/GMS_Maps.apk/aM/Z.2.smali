.class LaM/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aW;

.field final synthetic b:LaM/X;


# direct methods
.method constructor <init>(LaM/X;Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, LaM/Z;->b:LaM/X;

    iput-object p2, p0, LaM/Z;->a:Lcom/google/googlenav/aW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/F;)V
    .registers 6
    .parameter

    .prologue
    .line 466
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, LaM/Z;->a:Lcom/google/googlenav/aW;

    if-eq p1, v0, :cond_14

    .line 468
    iget-object v0, p0, LaM/Z;->b:LaM/X;

    const/4 v1, 0x0

    check-cast p1, Lcom/google/googlenav/aW;

    invoke-virtual {v0, v1, p1}, LaM/X;->a(ZLcom/google/googlenav/aW;)V

    .line 474
    :cond_14
    iget-object v0, p0, LaM/Z;->b:LaM/X;

    invoke-static {v0}, LaM/X;->b(LaM/X;)Lcom/google/googlenav/friend/p;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    .line 475
    return-void
.end method
