.class Lcom/google/googlenav/ui/wizard/cl;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ch;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cl;->b:Lcom/google/googlenav/ui/wizard/ch;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cl;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cl;->b:Lcom/google/googlenav/ui/wizard/ch;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cl;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ch;->b(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V

    .line 260
    return-void
.end method
