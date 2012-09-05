.class Lcom/android/MtpApplication/StoreAddPopup$3;
.super Ljava/lang/Object;
.source "StoreAddPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/MtpApplication/StoreAddPopup;->drawPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/StoreAddPopup;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/StoreAddPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/MtpApplication/StoreAddPopup$3;->this$0:Lcom/android/MtpApplication/StoreAddPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 91
    const-string v0, "StoreAddPopup"

    const-string v1, "OK Button is clicked..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/MtpApplication/StoreAddPopup$3;->this$0:Lcom/android/MtpApplication/StoreAddPopup;

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/MtpApplication/MtpReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v2, "com.android.MTP.LAUNCH_MTP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const v2, 0x2f145

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 100
    iget-object v0, p0, Lcom/android/MtpApplication/StoreAddPopup$3;->this$0:Lcom/android/MtpApplication/StoreAddPopup;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Lcom/android/MtpApplication/StoreAddPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 101
    const-string v3, "StoreAddPopup"

    const-string v4, "sending broadcast after delay of 5 sec"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 105
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/android/MtpApplication/MtpApplication;->tc:Landroid/mtp/MTPJNIInterface;

    .line 106
    sget-object v0, Lcom/android/MtpApplication/MtpApplication;->tc:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_58

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    sget-object v0, Lcom/android/MtpApplication/MtpApplication;->tc:Landroid/mtp/MTPJNIInterface;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 109
    iget-object v0, p0, Lcom/android/MtpApplication/StoreAddPopup$3;->this$0:Lcom/android/MtpApplication/StoreAddPopup;

    invoke-virtual {v0}, Lcom/android/MtpApplication/StoreAddPopup;->finish()V

    .line 111
    :cond_58
    return-void
.end method
