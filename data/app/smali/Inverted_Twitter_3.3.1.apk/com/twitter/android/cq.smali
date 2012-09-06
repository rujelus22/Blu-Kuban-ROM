.class final Lcom/twitter/android/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-ne v0, p2, :cond_32

    iget-object v0, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/PostActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/PostActivity;

    invoke-static {v0}, Lcom/twitter/android/PostActivity;->c(Lcom/twitter/android/PostActivity;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/PostActivity;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->b()V

    iget-object v0, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/PostActivity;

    invoke-static {v0}, Lcom/twitter/android/PostActivity;->d(Lcom/twitter/android/PostActivity;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/PostActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_32
.end method
