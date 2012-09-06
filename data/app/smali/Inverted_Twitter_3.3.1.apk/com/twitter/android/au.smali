.class final Lcom/twitter/android/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne v0, p2, :cond_3c

    iget-object v0, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/HomeTabActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/twitter/android/HomeTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/twitter/android/av;

    invoke-direct {v0, p0}, Lcom/twitter/android/av;-><init>(Lcom/twitter/android/au;)V

    iget-object v1, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v1, v1, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-static {v1, v0}, Lcom/twitter/android/client/b;->b(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_3c
    return-void
.end method
