.class final Lcom/dropbox/android/activity/aX;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/PrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/PrefsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/dropbox/android/activity/aX;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 250
    iget-object v0, p0, Lcom/dropbox/android/activity/aX;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-virtual {v0, v2}, Lcom/dropbox/android/activity/PrefsActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 251
    new-instance v0, Ldbxyzptlk/e/a;

    iget-object v1, p0, Lcom/dropbox/android/activity/aX;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {v0, v1}, Ldbxyzptlk/e/a;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v0}, Ldbxyzptlk/e/a;->e()V

    .line 253
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    invoke-static {}, Lcom/dropbox/android/util/h;->p()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 255
    return v2
.end method
