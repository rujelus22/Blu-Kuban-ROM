.class final Lcom/dropbox/android/activity/ba;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Ldbxyzptlk/j/m;

.field final synthetic b:Lcom/dropbox/android/activity/PrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/dropbox/android/activity/ba;->b:Lcom/dropbox/android/activity/PrefsActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/ba;->a:Ldbxyzptlk/j/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 113
    const-string v0, "3g"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/dropbox/android/activity/ba;->b:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-static {v0, v1}, Lcom/dropbox/android/service/CameraUploadService;->b(ZLandroid/content/Context;)V

    .line 115
    iget-object v1, p0, Lcom/dropbox/android/activity/ba;->b:Lcom/dropbox/android/activity/PrefsActivity;

    iget-object v2, p0, Lcom/dropbox/android/activity/ba;->a:Ldbxyzptlk/j/m;

    invoke-static {v1, v2}, Lcom/dropbox/android/activity/PrefsActivity;->a(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V

    .line 116
    invoke-static {}, Lcom/dropbox/android/util/h;->j()Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "cameraupload.usedataplan"

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 117
    const/4 v0, 0x1

    return v0
.end method
