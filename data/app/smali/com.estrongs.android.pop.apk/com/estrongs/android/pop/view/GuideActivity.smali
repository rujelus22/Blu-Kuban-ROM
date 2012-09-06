.class public Lcom/estrongs/android/pop/view/GuideActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v7, 0x7f070106

    const v6, 0x7f070105

    const v5, 0x7f070104

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->setContentView(I)V

    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/hs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hs;-><init>(Lcom/estrongs/android/pop/view/GuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3c
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/GuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "guide_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8e

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070107

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070108

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6f
    :goto_6f
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_172

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_17c

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/GuideActivity;->a([I[I)V

    return-void

    :cond_7f
    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    :cond_8e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_ed

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070108

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070107

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6f

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/GuideActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v2

    const-wide v6, 0x3fc3333333333333L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6f

    :cond_ed
    const/4 v1, 0x3

    if-ne v0, v1, :cond_12f

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070107

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070108

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6f

    :cond_12f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6f

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070107

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070108

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6f

    nop

    :array_172
    .array-data 0x4
        0xfft 0x0t 0x7t 0x7ft
        0x0t 0x1t 0x7t 0x7ft
        0x1t 0x1t 0x7t 0x7ft
    .end array-data

    :array_17c
    .array-data 0x4
        0x2at 0x2t 0x9t 0x7ft
        0x2bt 0x2t 0x9t 0x7ft
        0x2ct 0x2t 0x9t 0x7ft
    .end array-data
.end method
