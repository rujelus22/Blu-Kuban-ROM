.class public Lcom/google/googlenav/ui/view/dialog/k;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/o;

.field private b:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/o;)V
    .registers 6
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/k;->a:Lcom/google/googlenav/ui/view/dialog/o;

    .line 85
    const/4 v0, 0x1

    const v1, 0x7f020210

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/l;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/l;-><init>(Lcom/google/googlenav/ui/view/dialog/k;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/k;->a(ZILag/f;[I)V

    .line 97
    const/16 v0, 0x4d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100025

    const v2, 0x7f02027f

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/k;->a(Ljava/lang/CharSequence;II)V

    .line 99
    return-void

    .line 85
    nop

    :array_28
    .array-data 0x4
        0xbet 0xbt 0x0t 0x0t
        0xbdt 0xbt 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/k;)Lcom/google/googlenav/ui/view/dialog/o;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/k;->a:Lcom/google/googlenav/ui/view/dialog/o;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 143
    new-instance v0, LaK/a;

    const/16 v1, 0x4a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/m;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/m;-><init>(Lcom/google/googlenav/ui/view/dialog/k;)V

    invoke-direct {v0, v1, v2, v3}, LaK/a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, LaK/a;

    const/16 v1, 0x4b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/n;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/n;-><init>(Lcom/google/googlenav/ui/view/dialog/k;)V

    invoke-direct {v0, v1, v2, v3}, LaK/a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method private i()Ljava/util/List;
    .registers 2

    .prologue
    .line 137
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/k;->a(Ljava/util/List;)V

    .line 139
    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 6

    .prologue
    .line 109
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/k;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/k;->i()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/k;->b:Lcom/google/googlenav/ui/view/android/L;

    .line 112
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 113
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/k;->b:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 115
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/k;->a:Lcom/google/googlenav/ui/view/dialog/o;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/o;->c()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/k;->a:Lcom/google/googlenav/ui/view/dialog/o;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/o;->c()V

    .line 126
    return-void
.end method
