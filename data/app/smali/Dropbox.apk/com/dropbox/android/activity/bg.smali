.class final Lcom/dropbox/android/activity/bg;
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
    .line 201
    iput-object p1, p0, Lcom/dropbox/android/activity/bg;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter

    .prologue
    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/dropbox/android/activity/bg;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 206
    const v1, 0x7f060004

    new-instance v2, Lcom/dropbox/android/activity/bh;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/bh;-><init>(Lcom/dropbox/android/activity/bg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 221
    const/4 v0, 0x1

    return v0
.end method
