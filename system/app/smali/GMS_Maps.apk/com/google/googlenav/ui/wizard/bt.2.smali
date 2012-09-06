.class Lcom/google/googlenav/ui/wizard/bT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bO;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bT;->b:Lcom/google/googlenav/ui/wizard/bO;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bT;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bT;->a:Landroid/widget/Button;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_12

    const/16 v0, 0x8

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bT;->b:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->a:Lcom/google/googlenav/ui/wizard/bM;

    invoke-static {v0, p3}, Lcom/google/googlenav/ui/wizard/bM;->a(Lcom/google/googlenav/ui/wizard/bM;I)I

    .line 309
    return-void

    .line 306
    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    return-void
.end method
