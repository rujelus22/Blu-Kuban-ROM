.class public Lcom/google/googlenav/ui/view/dialog/q;
.super Lcom/google/googlenav/ui/view/dialog/p;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListAdapter;

.field private e:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const v5, 0x7f040145

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/q;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const v0, 0x7f0f00d8

    invoke-direct {p0, p1, p2, p5, v0}, Lcom/google/googlenav/ui/view/dialog/p;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 62
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/q;->a:Landroid/widget/ListAdapter;

    .line 63
    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/q;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 64
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 8

    .prologue
    .line 77
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 78
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->a:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    .line 79
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->a:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    :cond_12
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->e:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1b

    .line 83
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/q;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    :cond_1b
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/p;->I_()V

    .line 88
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/q;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 92
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/q;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 94
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    const/4 v1, 0x0

    .line 99
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_69

    .line 100
    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v4, v5, v4

    sub-int/2addr v1, v4

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 101
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    const/4 v4, -0x1

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/4 v0, 0x1

    .line 107
    :goto_63
    if-eqz v0, :cond_68

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    :cond_68
    return-void

    :cond_69
    move v0, v1

    goto :goto_63
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/q;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 68
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 69
    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    :cond_12
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/q;->a:Landroid/widget/ListAdapter;

    .line 114
    return-void
.end method
