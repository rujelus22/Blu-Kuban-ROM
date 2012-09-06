.class Lcom/estrongs/android/pop/view/jt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/js;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/js;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jt;->a:Lcom/estrongs/android/pop/view/js;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/jt;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jt;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    :try_start_a
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_4c

    move-result-object v2

    if-nez v2, :cond_11

    move v0, v1

    :cond_11
    :goto_11
    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jt;->a:Lcom/estrongs/android/pop/view/js;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/js;->a(Lcom/estrongs/android/pop/view/js;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/c;->u(Ljava/lang/String;)V

    sput-object p1, Lcom/estrongs/android/pop/ftp/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jt;->a:Lcom/estrongs/android/pop/view/js;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/js;->a(Lcom/estrongs/android/pop/view/js;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->y:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jt;->a:Lcom/estrongs/android/pop/view/js;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/js;->a(Lcom/estrongs/android/pop/view/js;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v2

    const v3, 0x7f0902ad

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4b
    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    move v0, v1

    goto :goto_11

    :cond_4f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jt;->a:Lcom/estrongs/android/pop/view/js;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/js;->a(Lcom/estrongs/android/pop/view/js;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    const v2, 0x7f0902af

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4b
.end method
