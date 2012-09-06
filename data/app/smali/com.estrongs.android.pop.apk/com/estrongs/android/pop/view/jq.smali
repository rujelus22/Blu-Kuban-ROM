.class Lcom/estrongs/android/pop/view/jq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/ftp/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/jp;

.field private final synthetic b:Lcom/estrongs/android/pop/ftp/l;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:I

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/jp;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/jq;->b:Lcom/estrongs/android/pop/ftp/l;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/jq;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/jq;->d:Ljava/lang/String;

    iput p5, p0, Lcom/estrongs/android/pop/view/jq;->e:I

    iput-object p6, p0, Lcom/estrongs/android/pop/view/jq;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jq;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jq;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jq;->d:Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/android/pop/view/jq;->e:I

    iget-object v4, p0, Lcom/estrongs/android/pop/view/jq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/ftp/l;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jq;->b:Lcom/estrongs/android/pop/ftp/l;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ftp/l;->d()Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/jp;->a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/jp;->a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v3

    const v4, 0x7f09028e

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ftp:/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/estrongs/android/pop/view/jq;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/jp;->a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/jp;->a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_75
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jq;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/jp;->a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;)V

    :goto_80
    return-void

    :cond_81
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jp;->a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    const-string v1, "start server failed, check port setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jq;->a:Lcom/estrongs/android/pop/view/jp;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jp;->a(Lcom/estrongs/android/pop/view/jp;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_9e

    goto :goto_75

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_80
.end method
