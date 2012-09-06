.class Lcom/google/googlenav/ui/wizard/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lat/B;

.field final synthetic b:Lan/h;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/aL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aL;Lat/B;Lan/h;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aM;->a:Lat/B;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aM;->b:Lan/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/ui/wizard/aL;)Lan/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aM;->a:Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aM;->b:Lan/h;

    invoke-interface {v0, v1, v2}, Lan/y;->a(Lat/B;Lan/h;)V

    .line 73
    return-void
.end method
