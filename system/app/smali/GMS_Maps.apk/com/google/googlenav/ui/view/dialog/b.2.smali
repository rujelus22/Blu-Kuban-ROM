.class public Lcom/google/googlenav/ui/view/dialog/b;
.super Lcom/google/googlenav/ui/view/dialog/a;


# instance fields
.field private final d:Landroid/widget/ListAdapter;

.field private k:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 7

    const v0, 0x7f0300fb

    const v1, 0x7f0d00c0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/b;->d:Landroid/widget/ListAdapter;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/b;->k:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/b;->k:Landroid/widget/AdapterView$OnItemClickListener;

    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    return-void
.end method

.method protected g()V
    .registers 8

    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/b;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/b;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_12
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/b;->k:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/b;->k:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1b
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/a;->g()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/b;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x0

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_69

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v4, v5, v4

    sub-int/2addr v1, v4

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    :goto_63
    if-eqz v0, :cond_68

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_68
    return-void

    :cond_69
    move v0, v1

    goto :goto_63
.end method
