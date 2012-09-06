.class Lcom/estrongs/android/pop/view/jl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/jl;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const/16 v5, 0x69

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Lcom/estrongs/android/pop/view/PopPreferenceActivity;I)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    :goto_1f
    return v0

    :cond_20
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    if-eqz v2, :cond_3e

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v3, "Spreadtrum_cmcc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move v0, v1

    goto :goto_1f

    :cond_3e
    iget-object v2, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_65
    iget-object v3, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Ljava/lang/String;)V

    if-eqz v2, :cond_ac

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v4, 0x7f090071

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/c;->r(Ljava/lang/String;)V

    :try_start_9b
    invoke-static {}, Lcom/estrongs/android/pop/ftp/l;->a()Lcom/estrongs/android/pop/ftp/l;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    new-instance v3, Lcom/estrongs/android/pop/view/jm;

    invoke-direct {v3, p0, v1, v0}, Lcom/estrongs/android/pop/view/jm;-><init>(Lcom/estrongs/android/pop/view/jl;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;Lcom/estrongs/android/pop/ftp/n;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a9} :catch_b4

    :goto_a9
    const/4 v0, 0x1

    goto/16 :goto_1f

    :cond_ac
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jl;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    goto/16 :goto_1f

    :catch_b4
    move-exception v0

    goto :goto_a9
.end method
