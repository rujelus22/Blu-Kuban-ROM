.class Lcom/estrongs/android/pop/view/ku;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/16 v6, 0x69

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    if-eqz v3, :cond_39

    sget-object v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v4, "Spreadtrum_cmcc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    move v0, v1

    goto :goto_1a

    :cond_39
    iget-object v3, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_60

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_60
    iget-object v4, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v4, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Lcom/estrongs/android/pop/view/PopPreferenceActivity;I)V

    if-eqz v3, :cond_9e

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v5, 0x7f090072

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/c;->l(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_1a

    :cond_9e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ku;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    goto/16 :goto_1a
.end method
