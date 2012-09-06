.class Lcom/estrongs/android/pop/view/jx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/jw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/jw;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jx;->a:Lcom/estrongs/android/pop/view/jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jx;->a:Lcom/estrongs/android/pop/view/jw;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jw;->a(Lcom/estrongs/android/pop/view/jw;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :try_start_c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jx;->a:Lcom/estrongs/android/pop/view/jw;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jw;->a(Lcom/estrongs/android/pop/view/jw;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jx;->a:Lcom/estrongs/android/pop/view/jw;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jw;->a(Lcom/estrongs/android/pop/view/jw;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    const v1, 0x7f0900ec

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method
