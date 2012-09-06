.class public Lcom/google/android/apps/googlevoice/PushNotificationRegistrationServiceConnectivityReceiver;
.super Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;
.source "PushNotificationRegistrationServiceConnectivityReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConnectionRestored(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 23
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v0

    const-string v1, "PNRSCR: Connectivity restored. Starting PNRS."

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->requestRegistration(Landroid/content/Context;)V

    .line 26
    return-void
.end method
