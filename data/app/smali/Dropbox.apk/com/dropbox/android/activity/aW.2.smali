.class final Lcom/dropbox/android/activity/aW;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Ldbxyzptlk/j/m;

.field final synthetic b:Lcom/dropbox/android/activity/PrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dropbox/android/activity/aW;->b:Lcom/dropbox/android/activity/PrefsActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/aW;->a:Ldbxyzptlk/j/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lcom/dropbox/android/activity/aW;->a:Ldbxyzptlk/j/m;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 95
    iget-object v0, p0, Lcom/dropbox/android/activity/aW;->b:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-static {v3, v0}, Lcom/dropbox/android/service/CameraUploadService;->a(ZLandroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/dropbox/android/util/h;->O()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 97
    iget-object v0, p0, Lcom/dropbox/android/activity/aW;->b:Lcom/dropbox/android/activity/PrefsActivity;

    iget-object v1, p0, Lcom/dropbox/android/activity/aW;->a:Ldbxyzptlk/j/m;

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->a(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V

    .line 104
    :goto_1d
    invoke-static {}, Lcom/dropbox/android/util/h;->j()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "cameraupload.enabled"

    iget-object v2, p0, Lcom/dropbox/android/activity/aW;->a:Ldbxyzptlk/j/m;

    invoke-virtual {v2}, Ldbxyzptlk/j/m;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 105
    return v4

    .line 100
    :cond_31
    iget-object v0, p0, Lcom/dropbox/android/activity/aW;->b:Lcom/dropbox/android/activity/PrefsActivity;

    new-array v1, v4, [Lcom/dropbox/android/activity/bB;

    sget-object v2, Lcom/dropbox/android/activity/bB;->e:Lcom/dropbox/android/activity/bB;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/TourActivity;->a(Landroid/content/Context;[Lcom/dropbox/android/activity/bB;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/dropbox/android/activity/aW;->b:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/PrefsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d
.end method
