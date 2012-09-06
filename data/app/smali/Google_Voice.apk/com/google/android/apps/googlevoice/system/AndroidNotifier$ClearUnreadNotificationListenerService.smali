.class public Lcom/google/android/apps/googlevoice/system/AndroidNotifier$ClearUnreadNotificationListenerService;
.super Landroid/app/Service;
.source "AndroidNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/system/AndroidNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearUnreadNotificationListenerService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 154
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 144
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 145
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getUnreadNotifier()Lcom/google/android/apps/googlevoice/UnreadNotifier;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/UnreadNotifier;->onNotificationsDismissedByUser(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier$ClearUnreadNotificationListenerService;->stopSelfResult(I)Z

    .line 149
    return-void
.end method
