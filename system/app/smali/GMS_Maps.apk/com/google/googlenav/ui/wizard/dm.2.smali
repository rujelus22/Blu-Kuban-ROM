.class Lcom/google/googlenav/ui/wizard/dM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dL;)V
    .registers 2
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dM;->a:Lcom/google/googlenav/ui/wizard/dL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dM;->a:Lcom/google/googlenav/ui/wizard/dL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dL;->a(Lcom/google/googlenav/ui/wizard/dL;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/g;->h()V

    .line 721
    return-void
.end method
