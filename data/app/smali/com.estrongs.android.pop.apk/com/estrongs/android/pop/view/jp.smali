.class Lcom/estrongs/android/pop/view/jp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12

    const/4 v8, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->X()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->Y()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->Z()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->aa()I

    move-result v5

    :try_start_31
    invoke-static {}, Lcom/estrongs/android/pop/ftp/l;->a()Lcom/estrongs/android/pop/ftp/l;

    move-result-object v2

    iget-object v7, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    new-instance v0, Lcom/estrongs/android/pop/view/jq;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/view/jq;-><init>(Lcom/estrongs/android/pop/view/jp;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v7, v0}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;Lcom/estrongs/android/pop/ftp/n;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_68

    :goto_40
    return v8

    :cond_41
    :try_start_41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const-class v2, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_55} :catch_66

    :goto_55
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jp;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v2, 0x7f09028d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_40

    :catch_66
    move-exception v0

    goto :goto_55

    :catch_68
    move-exception v0

    goto :goto_40
.end method
