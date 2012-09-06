.class Lcom/estrongs/android/pop/view/jn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->aa()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const-string v2, "Port can\'t be null"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_27
    return v0

    :cond_28
    :try_start_28
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_35

    const v4, 0xffff

    if-lt v3, v4, :cond_49

    :cond_35
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v2, 0x7f090299

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_27

    :cond_49
    if-ne v3, v2, :cond_4d

    move v0, v1

    goto :goto_27

    :cond_4d
    iget-object v2, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/c;->g(I)V

    :try_start_56
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const-class v5, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "mode"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_65} :catch_ac

    :goto_65
    iget-object v2, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v4, 0x7f090298

    invoke-static {v2, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v4, 0x7f09028d

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->h:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/jn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v5, 0x7f090296

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_27

    :catch_ac
    move-exception v2

    goto :goto_65
.end method
