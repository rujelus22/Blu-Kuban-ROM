.class LaM/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LaM/aU;


# direct methods
.method private constructor <init>(LaM/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, LaM/aW;->a:LaM/aU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaM/aU;LaM/aV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1}, LaM/aW;-><init>(LaM/aU;)V

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
    .line 189
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 191
    if-eqz v0, :cond_24

    .line 192
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    .line 196
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v0

    .line 197
    iget-object v2, p0, LaM/aW;->a:LaM/aU;

    invoke-static {v2}, LaM/aU;->b(LaM/aU;)LaM/aT;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, LaM/aT;->a(IILjava/lang/Object;)Z

    .line 199
    :cond_24
    return-void
.end method
