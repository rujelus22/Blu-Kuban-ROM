.class Lcom/google/googlenav/ui/wizard/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gl;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gl;)V
    .registers 2
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gm;->a:Lcom/google/googlenav/ui/wizard/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gm;->a:Lcom/google/googlenav/ui/wizard/gl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gl;->b:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->i(Lcom/google/googlenav/ui/wizard/gj;)Lcom/google/googlenav/bc;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gm;->a:Lcom/google/googlenav/ui/wizard/gl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gl;->b:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gm;->a:Lcom/google/googlenav/ui/wizard/gl;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gl;->a:Lan/s;

    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gj;Lat/B;)V

    .line 1277
    :cond_19
    return-void
.end method
