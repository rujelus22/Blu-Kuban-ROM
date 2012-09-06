.class public Lcom/google/googlenav/ui/wizard/cP;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cM;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/cM;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cP;->a:Lcom/google/googlenav/ui/wizard/cM;

    .line 126
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cP;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 135
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cP;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cP;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cM;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    new-instance v2, Lcom/google/googlenav/ui/wizard/cQ;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cP;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/cQ;-><init>(Lcom/google/googlenav/ui/wizard/cM;Lcom/google/googlenav/ui/wizard/cN;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cP;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cM;->a(Landroid/view/View;)V

    .line 140
    return-object v1
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    const/16 v0, 0x240

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
