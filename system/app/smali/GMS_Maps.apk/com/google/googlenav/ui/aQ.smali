.class Lcom/google/googlenav/ui/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/v;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ap;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ap;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    invoke-static {v0}, Lcom/google/googlenav/ui/ap;->a(Lcom/google/googlenav/ui/ap;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    .line 242
    iget-object v0, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->p()V

    .line 245
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/ap;->a(Lcom/google/googlenav/ui/ap;Z)Z

    .line 246
    return-void
.end method

.method public i()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method
