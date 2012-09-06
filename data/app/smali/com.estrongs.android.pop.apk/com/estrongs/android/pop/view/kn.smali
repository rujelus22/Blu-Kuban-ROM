.class Lcom/estrongs/android/pop/view/kn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/kn;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    const v5, 0x7f090297

    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f070145

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f070147

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_30
    invoke-static {}, Lcom/estrongs/android/pop/ftp/l;->a()Lcom/estrongs/android/pop/ftp/l;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    new-instance v4, Lcom/estrongs/android/pop/view/ko;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/estrongs/android/pop/view/ko;-><init>(Lcom/estrongs/android/pop/view/kn;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;Lcom/estrongs/android/pop/ftp/n;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_8f

    :goto_3e
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_70

    :cond_46
    iget-object v0, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->x:Landroid/preference/Preference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v2, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v3, 0x7f0902a3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6f
    return-void

    :cond_70
    iget-object v0, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->x:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/kn;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :catch_8f
    move-exception v0

    goto :goto_3e
.end method
