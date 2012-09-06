.class Lcom/google/googlenav/ui/wizard/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/M;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/M;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/O;->a:Lcom/google/googlenav/ui/wizard/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/O;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_13

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/O;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/O;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bb;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/M;->a(Lcom/google/googlenav/ui/wizard/M;Landroid/app/ActionBar;)V

    .line 201
    :cond_13
    return-void
.end method
