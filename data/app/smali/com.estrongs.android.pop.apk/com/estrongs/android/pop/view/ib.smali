.class public Lcom/estrongs/android/pop/view/ib;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/util/ak;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/hy;

.field private b:[Lcom/estrongs/android/util/ak;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/hy;Landroid/content/Context;I[Lcom/estrongs/android/util/ak;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ib;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/view/ib;->b:[Lcom/estrongs/android/util/ak;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v8, 0x0

    const/4 v5, -0x2

    const/4 v7, 0x0

    if-nez p2, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ib;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hy;->a(Lcom/estrongs/android/pop/view/hy;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ib;->b:[Lcom/estrongs/android/util/ak;

    aget-object v3, v0, p1

    if-eqz v3, :cond_7a

    const v0, 0x7f070117

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_93

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2d
    const v1, 0x7f070119

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v3, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_40

    const-string v2, "/"

    :cond_40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f07011a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez p1, :cond_a3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v3, v0

    const-wide/high16 v5, 0x4042

    div-double/2addr v3, v5

    const-wide v5, 0x4045800000000000L

    mul-double/2addr v5, v3

    double-to-int v0, v5

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/high16 v5, 0x4014

    mul-double v2, v3, v5

    double-to-int v0, v2

    invoke-virtual {v1, v7, v7, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_7a
    :goto_7a
    if-nez p1, :cond_e6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ib;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hy;->b(Lcom/estrongs/android/pop/view/hy;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, -0x2c2c2d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_8b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_93
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v2, v3, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    iget-boolean v4, v3, Lcom/estrongs/android/util/ak;->b:Z

    invoke-static {v1, v2, v4}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d

    :cond_a3
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_b3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_b3
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v3, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c8

    iget-object v0, v3, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a

    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c4

    :cond_e6
    invoke-virtual {p2, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8b
.end method
