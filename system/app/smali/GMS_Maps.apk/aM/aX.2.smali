.class public LaM/aX;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/aU;


# direct methods
.method public constructor <init>(LaM/aU;LaM/aT;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, LaM/aX;->a:LaM/aU;

    .line 52
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, LaM/aX;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007a

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 59
    iget-object v2, p0, LaM/aX;->a:LaM/aU;

    invoke-virtual {p0}, LaM/aX;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LaM/aU;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    new-instance v2, LaM/aW;

    iget-object v3, p0, LaM/aX;->a:LaM/aU;

    invoke-direct {v2, v3, v4}, LaM/aW;-><init>(LaM/aU;LaM/aV;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    return-object v1
.end method

.method public w_()Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    const/16 v0, 0xe9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, LaM/aX;->a:LaM/aU;

    invoke-static {v1}, LaM/aU;->a(LaM/aU;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_29
    return-object v0
.end method
