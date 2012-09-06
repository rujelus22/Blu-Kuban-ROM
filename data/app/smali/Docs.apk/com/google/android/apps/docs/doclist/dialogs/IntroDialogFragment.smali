.class public Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "IntroDialogFragment.java"


# instance fields
.field public b:LdQ;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a:Lck;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    sget v1, LcU;->intro_dialog:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->b:LdQ;

    sget v3, LcY;->intro_dialog_title:I

    invoke-virtual {v2, v3}, LdQ;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->terms_and_privacy:I

    new-instance v3, Lpi;

    invoke-direct {v3, p0}, Lpi;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->b:LdQ;

    sget v3, LcY;->intro_dialog_text:I

    invoke-virtual {v2, v3}, LdQ;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 60
    sget v3, LcS;->intro_text_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 62
    return-object v1
.end method
