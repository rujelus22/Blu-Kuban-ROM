.class final Lcom/dropbox/android/activity/bc;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/PrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/PrefsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/dropbox/android/activity/bc;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dropbox/android/activity/bc;->a:Lcom/dropbox/android/activity/PrefsActivity;

    const-class v2, Lcom/dropbox/android/activity/LockCodePrefsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v1, p0, Lcom/dropbox/android/activity/bc;->a:Lcom/dropbox/android/activity/PrefsActivity;

    sget-object v2, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/lock/i;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/android/activity/PrefsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    const/4 v0, 0x0

    return v0
.end method
