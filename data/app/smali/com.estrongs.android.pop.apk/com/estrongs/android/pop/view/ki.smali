.class Lcom/estrongs/android/pop/view/ki;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ki;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iput p2, p0, Lcom/estrongs/android/pop/view/ki;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x1

    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f070147

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f07014a

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    :cond_2d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ki;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v1, 0x7f09027c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_39
    return-void

    :cond_3a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ki;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v1, 0x7f09027d

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_39

    :cond_4d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ki;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->s(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/pop/view/ki;->b:I

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_6b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ki;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ki;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_39

    :cond_6b
    iget v0, p0, Lcom/estrongs/android/pop/view/ki;->b:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ki;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_63
.end method
