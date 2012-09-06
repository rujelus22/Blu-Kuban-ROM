.class Lcom/google/googlenav/ui/view/dialog/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aT;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aW;->a:Lcom/google/googlenav/ui/view/dialog/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aW;->a:Lcom/google/googlenav/ui/view/dialog/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aT;->a(Lcom/google/googlenav/ui/view/dialog/aT;)Lcom/google/googlenav/ui/view/dialog/aX;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aX;->b()V

    .line 118
    return-void
.end method
