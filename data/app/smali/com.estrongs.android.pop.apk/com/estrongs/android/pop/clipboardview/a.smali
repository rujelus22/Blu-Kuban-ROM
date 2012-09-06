.class public Lcom/estrongs/android/pop/clipboardview/a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/pop/clipboardview/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/estrongs/android/pop/clipboardview/d;",
            ">;F)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/estrongs/android/pop/clipboardview/a;->c:F

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/a;->a:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(F)I
    .registers 4

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/a;->c:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/clipboardview/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/clipboardview/d;

    if-nez p2, :cond_5d

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/a;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v2, 0x429c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/clipboardview/a;->a(F)I

    move-result v2

    const/high16 v3, 0x42b4

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/clipboardview/a;->a(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f070069

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v2, 0x7f07006a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Lcom/estrongs/android/pop/clipboardview/b;

    invoke-direct {v3}, Lcom/estrongs/android/pop/clipboardview/b;-><init>()V

    iput-object v2, v3, Lcom/estrongs/android/pop/clipboardview/b;->a:Landroid/widget/TextView;

    iput-object v1, v3, Lcom/estrongs/android/pop/clipboardview/b;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    :goto_4e
    iget-object v2, v1, Lcom/estrongs/android/pop/clipboardview/b;->b:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/estrongs/android/pop/clipboardview/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v1, Lcom/estrongs/android/pop/clipboardview/b;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/estrongs/android/pop/clipboardview/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_5d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/clipboardview/b;

    goto :goto_4e
.end method
