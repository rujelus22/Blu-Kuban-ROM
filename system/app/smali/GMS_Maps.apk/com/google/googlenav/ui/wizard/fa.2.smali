.class Lcom/google/googlenav/ui/wizard/fA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ft;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ft;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fA;->b:Lcom/google/googlenav/ui/wizard/ft;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fA;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fA;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 519
    new-instance v1, Lcom/google/googlenav/ui/wizard/fB;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fB;-><init>(Lcom/google/googlenav/ui/wizard/fA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    return-void
.end method
