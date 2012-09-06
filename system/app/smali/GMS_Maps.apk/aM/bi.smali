.class public LaM/bi;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final a:[Lcom/google/googlenav/ai;

.field final synthetic b:LaM/bd;


# direct methods
.method public constructor <init>(LaM/bd;LaM/i;[Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, LaM/bi;->b:LaM/bd;

    .line 208
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 209
    iput-object p3, p0, LaM/bi;->a:[Lcom/google/googlenav/ai;

    .line 210
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-virtual {p0}, LaM/bi;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007a

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 215
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 216
    new-instance v2, Lcom/google/googlenav/ui/view/android/bX;

    invoke-virtual {p0}, LaM/bi;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, LaM/bi;->a:[Lcom/google/googlenav/ai;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/bX;-><init>(Landroid/content/Context;[Lcom/google/googlenav/ai;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    new-instance v2, LaM/bh;

    iget-object v3, p0, LaM/bi;->b:LaM/bd;

    invoke-direct {v2, v3, v5}, LaM/bh;-><init>(LaM/bd;LaM/be;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    return-object v1
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, LaM/bi;->b:LaM/bd;

    invoke-static {v0}, LaM/bd;->a(LaM/bd;)LaM/m;

    move-result-object v0

    invoke-virtual {v0}, LaM/m;->bl()Z

    move-result v0

    .line 224
    if-eqz v0, :cond_13

    const/16 v0, 0x260

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/16 v0, 0x262

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
