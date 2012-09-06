.class Lcom/google/googlenav/ui/wizard/hM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/hI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hI;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hM;->c:Lcom/google/googlenav/ui/wizard/hI;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hM;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hM;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 936
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hM;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hM;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 937
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hM;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 938
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hM;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    :goto_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hM;->c:Lcom/google/googlenav/ui/wizard/hI;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    const/16 v2, 0x5e4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/ui/wizard/hG;->a(IILjava/lang/Object;)Z

    .line 945
    return-void

    :cond_27
    move v0, v1

    .line 936
    goto :goto_c

    .line 940
    :cond_29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hM;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c
.end method
