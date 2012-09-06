.class Lcom/estrongs/android/pop/app/imageviewer/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/am;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .registers 12

    const v8, 0x7f070123

    const v7, 0x7f070121

    const/4 v3, 0x5

    if-nez p2, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    new-array v1, v3, [I

    fill-array-data v1, :array_fc

    new-array v2, v3, [I

    fill-array-data v2, :array_10a

    invoke-static {v0, v5, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Landroid/app/Activity;Landroid/view/View;[I[I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Ljava/lang/String;)V

    const v0, 0x7f070120

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, ""

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    instance-of v0, p2, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    if-eqz v0, :cond_ca

    move-object v2, p2

    check-cast v2, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070129

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070126

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07012c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07012f

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/z;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/z;-><init>(Lcom/estrongs/android/pop/app/imageviewer/y;Lcom/estrongs/android/pop/app/imageviewer/gallery/a;Landroid/os/Handler;Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/z;->start()V

    :goto_b3
    const v0, 0x7f09005e

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ab;-><init>(Lcom/estrongs/android/pop/app/imageviewer/y;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->b:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ac;

    invoke-direct {v1, p0, v6, v5}, Lcom/estrongs/android/pop/app/imageviewer/ac;-><init>(Lcom/estrongs/android/pop/app/imageviewer/y;Landroid/app/AlertDialog$Builder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_ca
    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_f3

    const-string v0, ""

    move-object v1, v0

    :goto_db
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    invoke-static {v5, p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V

    goto :goto_b3

    :cond_f3
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/y;->a:Landroid/app/Activity;

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_db

    nop

    :array_fc
    .array-data 0x4
        0x22t 0x1t 0x7t 0x7ft
        0x25t 0x1t 0x7t 0x7ft
        0x28t 0x1t 0x7t 0x7ft
        0x2bt 0x1t 0x7t 0x7ft
        0x2et 0x1t 0x7t 0x7ft
    .end array-data

    :array_10a
    .array-data 0x4
        0x47t 0x0t 0x9t 0x7ft
        0xc4t 0x1t 0x9t 0x7ft
        0xc1t 0x1t 0x9t 0x7ft
        0xc2t 0x1t 0x9t 0x7ft
        0xc3t 0x1t 0x9t 0x7ft
    .end array-data
.end method
