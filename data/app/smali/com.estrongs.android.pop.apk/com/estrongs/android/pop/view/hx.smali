.class public Lcom/estrongs/android/pop/view/hx;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/util/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/HideList;

.field private b:[Lcom/estrongs/android/util/i;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/HideList;Landroid/content/Context;I[Lcom/estrongs/android/util/i;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hx;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/view/hx;->b:[Lcom/estrongs/android/util/i;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v9, 0x0

    if-nez p2, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hx;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_12
    const v0, 0x7f070115

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hx;->a:Lcom/estrongs/android/pop/view/HideList;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/HideList;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_28
    iget-object v1, p0, Lcom/estrongs/android/pop/view/hx;->b:[Lcom/estrongs/android/util/i;

    aget-object v1, v1, p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_8b

    move-object v4, v1

    :goto_2d
    if-eqz v4, :cond_d8

    const v1, 0x7f070111

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f070113

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070114

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, v4, Lcom/estrongs/android/util/i;->b:Ljava/lang/String;

    if-eqz v6, :cond_a0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    iget-object v7, v4, Lcom/estrongs/android/util/i;->b:Ljava/lang/String;

    iget-boolean v8, v4, Lcom/estrongs/android/util/i;->a:Z

    invoke-static {v6, v7, v8}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_8e

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_68
    iget-object v1, v4, Lcom/estrongs/android/util/i;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_72

    const-string v1, "/"

    :cond_72
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/estrongs/android/util/i;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_84
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2

    :catch_8b
    move-exception v1

    move-object v4, v5

    goto :goto_2d

    :cond_8e
    iget-boolean v6, v4, Lcom/estrongs/android/util/i;->a:Z

    if-eqz v6, :cond_99

    const v6, 0x7f02004a

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_68

    :cond_99
    const v6, 0x7f020048

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_68

    :cond_a0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0902c6

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v3, v1

    const-wide/high16 v6, 0x4042

    div-double/2addr v3, v6

    const-wide v6, 0x4045800000000000L

    mul-double/2addr v6, v3

    double-to-int v1, v6

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/high16 v0, 0x4014

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {v2, v9, v9, v9, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_84

    :cond_d8
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_84
.end method
