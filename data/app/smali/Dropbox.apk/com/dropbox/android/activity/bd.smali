.class final Lcom/dropbox/android/activity/bd;
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
    .line 154
    iput-object p1, p0, Lcom/dropbox/android/activity/bd;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 157
    iget-object v0, p0, Lcom/dropbox/android/activity/bd;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->showDialog(I)V

    .line 158
    return v1
.end method
