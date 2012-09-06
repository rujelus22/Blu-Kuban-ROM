.class public LaM/bf;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/googlenav/ai;

.field final synthetic b:LaM/bd;


# direct methods
.method public constructor <init>(LaM/bd;LaM/i;Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, LaM/bf;->b:LaM/bd;

    .line 166
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 167
    iput-object p3, p0, LaM/bf;->a:Lcom/google/googlenav/ai;

    .line 168
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    .line 172
    invoke-virtual {p0}, LaM/bf;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 173
    iget-object v0, p0, LaM/bf;->b:LaM/bd;

    iget-object v2, p0, LaM/bf;->a:Lcom/google/googlenav/ai;

    invoke-static {v0, v2}, LaM/bd;->a(LaM/bd;Lcom/google/googlenav/ai;)Ljava/util/List;

    move-result-object v2

    .line 174
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 175
    new-instance v3, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, LaM/bf;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, LaM/bf;->b:LaM/bd;

    iget-object v5, v5, LaM/bd;->a:LaM/i;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    new-instance v2, LaM/bg;

    invoke-direct {v2, p0}, LaM/bg;-><init>(LaM/bf;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    return-object v1
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    const/16 v0, 0x3c2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
