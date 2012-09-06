.class Lcom/estrongs/android/pop/view/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/p;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/p;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/p;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/p;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/p;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090100

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/p;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->j(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/view/q;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/q;-><init>(Lcom/estrongs/android/pop/view/p;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/r;-><init>(Lcom/estrongs/android/pop/view/p;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
