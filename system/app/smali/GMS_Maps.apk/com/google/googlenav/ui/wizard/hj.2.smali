.class Lcom/google/googlenav/ui/wizard/hJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/hI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hI;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hJ;->b:Lcom/google/googlenav/ui/wizard/hI;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hJ;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hJ;->b:Lcom/google/googlenav/ui/wizard/hI;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hJ;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hJ;->b:Lcom/google/googlenav/ui/wizard/hI;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hI;->a:Lcom/google/googlenav/ui/wizard/hG;

    const/16 v1, 0x5ee

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hG;->a(IILjava/lang/Object;)Z

    .line 863
    return-void
.end method
