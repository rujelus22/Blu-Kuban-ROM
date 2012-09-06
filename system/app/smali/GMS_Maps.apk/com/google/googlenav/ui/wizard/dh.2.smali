.class public Lcom/google/googlenav/ui/wizard/dH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dH;->a:Ljava/lang/String;

    .line 848
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dH;->b:Landroid/view/View$OnClickListener;

    .line 849
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 868
    new-instance v0, Lcom/google/googlenav/ui/wizard/dI;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dI;-><init>(Lcom/google/googlenav/ui/wizard/dH;)V

    .line 869
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/dI;->a:Landroid/widget/TextView;

    .line 870
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 875
    check-cast p2, Lcom/google/googlenav/ui/wizard/dI;

    .line 876
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/dI;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dH;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/aV;->au:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 877
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/dI;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dH;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 878
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 858
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 853
    const v0, 0x7f040185

    return v0
.end method
