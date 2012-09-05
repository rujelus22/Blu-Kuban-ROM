.class public Lcom/google/android/apps/plus/service/AndroidContactsNotificationService;
.super Landroid/app/IntentService;
.source "AndroidContactsNotificationService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    const-string v0, "ContactsNotificationSvc"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 28
    .local v0, rawContactUri:Landroid/net/Uri;
    const-string v1, "ContactsNotificationSvc"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 29
    const-string v1, "ContactsNotificationSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact opened in Contacts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_25
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncRawContact(Landroid/content/Context;Landroid/net/Uri;)V

    .line 33
    return-void
.end method
