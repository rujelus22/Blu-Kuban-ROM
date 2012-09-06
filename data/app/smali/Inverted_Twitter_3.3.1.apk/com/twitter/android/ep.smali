.class final Lcom/twitter/android/ep;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne v0, p2, :cond_15

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_15
    return-void
.end method
