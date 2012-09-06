.class public Lcom/google/android/apps/googlevoice/CheckinHelperImpl;
.super Ljava/lang/Object;
.source "CheckinHelperImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/CheckinHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/CheckinHelperImpl$1;,
        Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;
    }
.end annotation


# static fields
.field private static final STATUS_FAILURE:I = -0x1

.field private static final STATUS_SUCCESS:I


# instance fields
.field private final circularLog:Lcom/google/android/apps/googlevoice/util/logging/CircularLog;

.field private final handler:Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;

.field private final notificationRegistrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;Lcom/google/android/apps/googlevoice/util/logging/CircularLog;)V
    .registers 5
    .parameter "notificationRegistrar"
    .parameter "circularLog"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->notificationRegistrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    .line 27
    new-instance v0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;-><init>(Lcom/google/android/apps/googlevoice/CheckinHelperImpl;Lcom/google/android/apps/googlevoice/CheckinHelperImpl$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->handler:Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;

    .line 28
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->circularLog:Lcom/google/android/apps/googlevoice/util/logging/CircularLog;

    .line 29
    return-void
.end method

.method private checkin(Ljava/lang/String;)V
    .registers 6
    .parameter "token"

    .prologue
    .line 37
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->handler:Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 38
    .local v1, onSuccess:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->handler:Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 39
    .local v0, onFailure:Landroid/os/Message;
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_28

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckinHelper: Checking in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 42
    :cond_28
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->circularLog:Lcom/google/android/apps/googlevoice/util/logging/CircularLog;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLog;->addEntry(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->notificationRegistrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->PUSH_NOTIFICATION:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    invoke-interface {v2, v3, p1, v1, v0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;->checkin(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V

    .line 45
    return-void
.end method


# virtual methods
.method public checkin(Ljava/lang/String;Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V
    .registers 5
    .parameter "notificationId"
    .parameter "state"

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;->checkin(Ljava/lang/String;)V

    .line 34
    return-void
.end method
