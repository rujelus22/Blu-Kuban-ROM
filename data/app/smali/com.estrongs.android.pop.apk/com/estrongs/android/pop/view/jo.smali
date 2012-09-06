.class Lcom/estrongs/android/pop/view/jo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/ftp/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

.field private final synthetic b:Lcom/estrongs/android/pop/ftp/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/ftp/l;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/jo;->b:Lcom/estrongs/android/pop/ftp/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jo;->b:Lcom/estrongs/android/pop/ftp/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/l;->b()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->i()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->aa()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v5, 0x7f09028e

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ftp:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_5f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jo;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;)V

    :goto_66
    return-void

    :cond_67
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v2, 0x7f09028d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jo;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_80

    goto :goto_5f

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_66
.end method
