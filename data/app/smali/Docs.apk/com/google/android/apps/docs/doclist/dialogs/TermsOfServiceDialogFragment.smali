.class public Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "TermsOfServiceDialogFragment.java"


# instance fields
.field public a:LpL;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 52
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tosAccepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tosAccepted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a:Lck;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 130
    sget v0, LcU;->terms_of_service_dialog:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 131
    sget v0, LcS;->terms_of_service_dialog_text:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    sget v1, LcS;->terms_of_service_accept:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 133
    sget v2, LcS;->terms_of_service_decline:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 135
    sget v4, LcY;->terms_of_service_dialog_text_all_apps:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(I)Ljava/lang/String;

    .line 136
    sget v4, LcY;->terms_of_service_dialog_text_all_apps:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 137
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 138
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a:LpL;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, LpG;

    invoke-direct {v0, p0}, LpG;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v0, LpH;

    invoke-direct {v0, p0}, LpH;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-object v3
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(II)V

    .line 124
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 180
    :cond_1b
    return-void
.end method
