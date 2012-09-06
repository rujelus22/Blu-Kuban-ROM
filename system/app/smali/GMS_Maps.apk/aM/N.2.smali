.class public LaM/N;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/g;

.field private final b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;Ljava/util/Vector;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 108
    iput-object p1, p0, LaM/N;->a:Lcom/google/googlenav/ui/g;

    .line 109
    iput-object p2, p0, LaM/N;->b:Ljava/util/Vector;

    .line 110
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    .line 114
    invoke-virtual {p0}, LaM/N;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040198

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/GmmListView;

    .line 116
    new-instance v2, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, LaM/N;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, LaM/N;->a:Lcom/google/googlenav/ui/g;

    iget-object v5, p0, LaM/N;->b:Ljava/util/Vector;

    invoke-static {}, LaM/I;->b()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/GmmListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    return-object v1
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const/16 v0, 0x3c2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
