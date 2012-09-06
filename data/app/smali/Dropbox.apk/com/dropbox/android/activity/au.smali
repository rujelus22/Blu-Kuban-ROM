.class final Lcom/dropbox/android/activity/au;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Ldbxyzptlk/j/a;

.field final synthetic b:Lcom/dropbox/android/activity/LockCodePrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LockCodePrefsActivity;Ldbxyzptlk/j/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dropbox/android/activity/au;->b:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/au;->a:Ldbxyzptlk/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dropbox/android/activity/au;->a:Ldbxyzptlk/j/a;

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->d()Z

    move-result v0

    .line 40
    if-eqz v0, :cond_11

    .line 41
    iget-object v0, p0, Lcom/dropbox/android/activity/au;->b:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->c:Lcom/dropbox/android/activity/lock/i;

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->a(Lcom/dropbox/android/activity/LockCodePrefsActivity;Lcom/dropbox/android/activity/lock/i;)V

    .line 46
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_11
    iget-object v0, p0, Lcom/dropbox/android/activity/au;->b:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->b:Lcom/dropbox/android/activity/lock/i;

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->a(Lcom/dropbox/android/activity/LockCodePrefsActivity;Lcom/dropbox/android/activity/lock/i;)V

    goto :goto_f
.end method
