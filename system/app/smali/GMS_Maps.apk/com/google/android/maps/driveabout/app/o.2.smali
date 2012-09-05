.class Lcom/google/android/maps/driveabout/app/o;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/n;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/n;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/o;->a:Lcom/google/android/maps/driveabout/app/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/o;->setResultCode(I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string v0, "android.app.action.ENTER_CAR_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/o;->setResultCode(I)V

    goto :goto_1a
.end method
