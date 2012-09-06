.class public Lzh;
.super Ljava/lang/Object;
.source "CollaboratorController.java"

# interfaces
.implements LxU;
.implements Lyb;


# instance fields
.field private final a:Landroid/content/Context;

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/view/LayoutInflater;

.field private final a:Landroid/view/View;

.field private final a:Landroid/widget/ImageView;

.field private final a:Landroid/widget/LinearLayout;

.field private final a:Landroid/widget/TextView;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lzk;

.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lzk;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzh;->a:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzh;->a:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzh;->a:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lzh;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lzh;->a:Landroid/view/View;

    .line 55
    iput-object p4, p0, Lzh;->a:Landroid/widget/LinearLayout;

    .line 56
    iput-object p3, p0, Lzh;->a:Landroid/widget/TextView;

    .line 57
    iput-object p5, p0, Lzh;->a:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lzh;->a:Lzk;

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lzh;->a:Landroid/view/LayoutInflater;

    .line 61
    new-instance v0, Lzi;

    invoke-direct {v0, p0, p4}, Lzi;-><init>(Lzh;Landroid/widget/LinearLayout;)V

    .line 69
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lzh;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lzh;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lzh;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lzh;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lzh;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lzh;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lzh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v6, :cond_29

    .line 125
    iget-object v1, p0, Lzh;->a:Landroid/content/Context;

    sget v2, Lus;->one_collaborator_viewing:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lzh;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lup;->collaborator_display_name:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_28
    return-object v0

    :cond_29
    iget-object v1, p0, Lzh;->a:Landroid/content/Context;

    sget v2, Lus;->multiple_collaborator_viewing:I

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lzh;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lup;->collaborator_display_name:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v0, p0, Lzh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method static synthetic a(Lzh;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lzh;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lzh;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lzh;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lzh;)Lzk;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lzh;->a:Lzk;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lzh;->a:Landroid/os/Handler;

    new-instance v1, Lzj;

    invoke-direct {v1, p0}, Lzj;-><init>(Lzh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method static synthetic a(Lzh;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lzh;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 99
    iget-object v1, p0, Lzh;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    sget v0, Luo;->ic_arrow_small_up:I

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    return-void

    .line 99
    :cond_a
    sget v0, Luo;->ic_arrow_small_down:I

    goto :goto_6
.end method

.method static synthetic a(Lzh;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lzh;->a:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lzh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 91
    if-eqz v0, :cond_17

    .line 92
    iget-object v1, p0, Lzh;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lzh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Lzh;->a()V

    .line 96
    :cond_17
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lzh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 76
    iget-object v0, p0, Lzh;->a:Landroid/view/LayoutInflater;

    sget v1, Luq;->collaborator_list_item:I

    iget-object v2, p0, Lzh;->a:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    sget v0, Lup;->collaborator_display_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v0, Lup;->collaborator_color_indicator:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    iget-object v0, p0, Lzh;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lzh;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzh;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 84
    invoke-direct {p0}, Lzh;->a()V

    .line 86
    :cond_3e
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    iput-boolean p1, p0, Lzh;->a:Z

    .line 150
    invoke-direct {p0}, Lzh;->a()V

    .line 151
    return-void
.end method
