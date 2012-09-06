.class LaM/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LaM/bf;


# direct methods
.method constructor <init>(LaM/bf;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, LaM/bg;->a:LaM/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 180
    if-nez v0, :cond_f

    .line 187
    :goto_e
    return-void

    .line 183
    :cond_f
    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 184
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 186
    iget-object v1, p0, LaM/bg;->a:LaM/bf;

    iget-object v1, v1, LaM/bf;->b:LaM/bd;

    iget-object v1, v1, LaM/bd;->a:LaM/i;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, LaM/i;->a(IILjava/lang/Object;)Z

    goto :goto_e
.end method
