.class final Lcom/dropbox/android/activity/aw;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Ldbxyzptlk/j/a;

.field final synthetic b:Lcom/dropbox/android/activity/LockCodePrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LockCodePrefsActivity;Ldbxyzptlk/j/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dropbox/android/activity/aw;->b:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/aw;->a:Ldbxyzptlk/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/dropbox/android/activity/aw;->b:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->a(Lcom/dropbox/android/activity/LockCodePrefsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 65
    iget-object v0, p0, Lcom/dropbox/android/activity/aw;->b:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->e:Lcom/dropbox/android/activity/lock/i;

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->a(Lcom/dropbox/android/activity/LockCodePrefsActivity;Lcom/dropbox/android/activity/lock/i;)V

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_15
    return v0

    .line 68
    :cond_16
    iget-object v1, p0, Lcom/dropbox/android/activity/aw;->a:Ldbxyzptlk/j/a;

    invoke-virtual {v1, v0}, Ldbxyzptlk/j/a;->b(Z)V

    goto :goto_15
.end method
