.class Lcom/estrongs/android/pop/app/imageviewer/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ba;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v0, v2, :cond_d

    :cond_b
    move v0, v1

    :cond_c
    return v0

    :cond_d
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0011

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-wide v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ba;->a(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/bb;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/bb;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ba;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901eb

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/bc;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ba;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
