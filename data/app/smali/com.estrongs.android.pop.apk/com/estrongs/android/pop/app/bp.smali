.class public Lcom/estrongs/android/pop/app/bp;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageBrowser;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/ImageBrowser;Lcom/estrongs/android/pop/app/ImageBrowser;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/ImageBrowser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/bp;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(Lcom/estrongs/android/pop/app/ImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x1

    if-nez p2, :cond_66

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bp;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_f
    iget-object v1, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageBrowser;->b(Lcom/estrongs/android/pop/app/ImageBrowser;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(Lcom/estrongs/android/pop/app/ImageBrowser;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_27
    iget-object v2, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageBrowser;->b(Lcom/estrongs/android/pop/app/ImageBrowser;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(Lcom/estrongs/android/pop/app/ImageBrowser;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v2, p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_76

    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageBrowser;->b(Lcom/estrongs/android/pop/app/ImageBrowser;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_6a

    const v1, 0x108003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4f
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/16 v2, 0x64

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_66
    check-cast p2, Landroid/widget/ImageView;

    move-object v0, p2

    goto :goto_f

    :cond_6a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageBrowser;->b(Lcom/estrongs/android/pop/app/ImageBrowser;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4f

    :catch_76
    move-exception v1

    goto :goto_3f
.end method
