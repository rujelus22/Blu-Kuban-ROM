.class Lcom/google/googlenav/ui/wizard/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lan/h;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/aL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aL;ILan/h;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aN;->c:Lcom/google/googlenav/ui/wizard/aL;

    iput p2, p0, Lcom/google/googlenav/ui/wizard/aN;->a:I

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aN;->b:Lan/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aN;->c:Lcom/google/googlenav/ui/wizard/aL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/ui/wizard/aL;)Lan/y;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/aN;->a:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aN;->b:Lan/h;

    invoke-interface {v0, v1, v2}, Lan/y;->a(ILan/h;)V

    .line 91
    return-void
.end method
