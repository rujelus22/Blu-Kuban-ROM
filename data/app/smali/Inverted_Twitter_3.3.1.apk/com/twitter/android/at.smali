.class final Lcom/twitter/android/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/at;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v0, -0x1

    if-ne v0, p2, :cond_17

    iget-object v0, p0, Lcom/twitter/android/at;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/at;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-static {v0}, Lcom/twitter/android/HomeTabActivity;->a(Lcom/twitter/android/HomeTabActivity;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/twitter/android/at;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/twitter/android/at;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Lcom/twitter/android/HomeTabActivity;Z)Z

    :cond_2b
    iget-object v0, p0, Lcom/twitter/android/at;->a:Lcom/twitter/android/HomeTabActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/at;->a:Lcom/twitter/android/HomeTabActivity;

    const-class v3, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16
.end method
