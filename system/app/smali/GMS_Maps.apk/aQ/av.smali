.class LaQ/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dG;


# instance fields
.field final synthetic a:LaS/h;

.field final synthetic b:LaQ/ao;


# direct methods
.method constructor <init>(LaQ/ao;LaS/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, LaQ/av;->b:LaQ/ao;

    iput-object p2, p0, LaQ/av;->a:LaS/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R_()Z
    .registers 2

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public S_()V
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, LaQ/av;->b:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->d(LaQ/ao;)LaM/m;

    move-result-object v0

    invoke-virtual {v0}, LaM/m;->bs()V

    .line 488
    return-void
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-virtual {p1}, Lad/y;->f()Lat/B;

    move-result-object v0

    iget-object v1, p0, LaQ/av;->a:LaS/h;

    iget-object v2, p0, LaQ/av;->b:LaQ/ao;

    invoke-static {v2}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaS/a;->a(Lat/B;LaS/h;Lcom/google/googlenav/ai;)V

    .line 477
    iget-object v0, p0, LaQ/av;->b:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->d(LaQ/ao;)LaM/m;

    move-result-object v0

    invoke-virtual {v0}, LaM/m;->bs()V

    .line 478
    return-void
.end method
