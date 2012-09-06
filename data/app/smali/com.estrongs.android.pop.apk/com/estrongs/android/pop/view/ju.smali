.class Lcom/estrongs/android/pop/view/ju;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ju;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.estrongs.android.pop"

    const-string v2, "com.estrongs.android.pop.ftp.ESFtpShortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ju;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const v3, 0x7f0902b2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :try_start_36
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ju;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020064

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_48} :catch_58

    :goto_48
    const-string v0, "duplicate"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ju;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    return v4

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method
