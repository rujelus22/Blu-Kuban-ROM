.class final Lcom/dropbox/android/activity/be;
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
    .line 173
    iput-object p1, p0, Lcom/dropbox/android/activity/be;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/android/activity/be;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-static {v0}, Lcom/dropbox/android/util/b;->a(Landroid/app/Activity;)V

    .line 177
    const/4 v0, 0x1

    return v0
.end method
