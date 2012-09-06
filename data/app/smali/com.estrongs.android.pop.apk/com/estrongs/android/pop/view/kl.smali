.class Lcom/estrongs/android/pop/view/kl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iput p2, p0, Lcom/estrongs/android/pop/view/kl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x0

    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f070147

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->ab()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_2c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v1, 0x7f0901a8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget v0, p0, Lcom/estrongs/android/pop/view/kl;->b:I

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_39

    :cond_63
    iget v0, p0, Lcom/estrongs/android/pop/view/kl;->b:I

    const/16 v1, 0x70

    if-ne v0, v1, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_47
.end method
