.class final Lcom/dropbox/android/activity/av;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LockCodePrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LockCodePrefsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dropbox/android/activity/av;->a:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/android/activity/av;->a:Lcom/dropbox/android/activity/LockCodePrefsActivity;

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->d:Lcom/dropbox/android/activity/lock/i;

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->a(Lcom/dropbox/android/activity/LockCodePrefsActivity;Lcom/dropbox/android/activity/lock/i;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
