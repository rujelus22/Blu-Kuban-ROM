.class public final Laf;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-static {}, Lal;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1}, Lw;->s()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4e

    const-string v1, "Registering"

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for push services. email:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-static {p0, v1}, Lcom/locationlabs/v3client/PushControlReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    return-void

    .line 50
    :cond_4e
    const-string v1, "Re-registering"

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    if-eqz p1, :cond_12

    .line 69
    const-string v0, "setting push registration id"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 75
    :goto_7
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 81
    invoke-interface {v0, p1}, Lw;->c(Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1}, Laf;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    return-void

    .line 72
    :cond_12
    const-string v0, "clearing push registration id"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_2a

    .line 91
    if-eqz p1, :cond_2d

    .line 95
    const-string v0, "sending push id to server"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 100
    :goto_14
    new-instance v0, Lcx;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.locationlabs.v3client.action.CHANGE_PUSH_ID"

    invoke-virtual {v0}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    :cond_2a
    return-void

    .line 90
    :cond_2b
    const/4 v0, 0x0

    goto :goto_b

    .line 98
    :cond_2d
    const-string v0, "deleting push id on server"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_14
.end method
