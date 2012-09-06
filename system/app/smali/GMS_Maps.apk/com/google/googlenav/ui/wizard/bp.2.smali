.class Lcom/google/googlenav/ui/wizard/bP;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bO;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bP;->a:Lcom/google/googlenav/ui/wizard/bO;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 239
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bP;->a:Lcom/google/googlenav/ui/wizard/bO;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/bO;->a(I)Landroid/app/Dialog;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bP;->a:Lcom/google/googlenav/ui/wizard/bO;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bO;->a(ILandroid/app/Dialog;)V

    .line 241
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bP;->a:Lcom/google/googlenav/ui/wizard/bO;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/bO;->a(Lcom/google/googlenav/ui/wizard/bO;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 243
    return-void
.end method
