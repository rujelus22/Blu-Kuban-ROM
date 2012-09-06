.class Lcom/google/googlenav/ui/wizard/bY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bU;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bY;->a:Lcom/google/googlenav/ui/wizard/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/bU;Lcom/google/googlenav/ui/wizard/bV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bY;-><init>(Lcom/google/googlenav/ui/wizard/bU;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/L;

    .line 406
    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 407
    if-nez v0, :cond_11

    .line 415
    :goto_10
    return-void

    .line 410
    :cond_11
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bY;->a:Lcom/google/googlenav/ui/wizard/bU;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/bU;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    check-cast v0, LaQ/bt;

    invoke-virtual {v0}, LaQ/bt;->d()I

    move-result v0

    .line 414
    :goto_1e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bY;->a:Lcom/google/googlenav/ui/wizard/bU;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(IILjava/lang/Object;)Z

    goto :goto_10

    .line 410
    :cond_25
    check-cast v0, LaQ/s;

    invoke-virtual {v0}, LaQ/s;->d()I

    move-result v0

    goto :goto_1e
.end method
