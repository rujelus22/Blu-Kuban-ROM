.class Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
.super Ljava/lang/Object;
.source "AndroidPushNotificationRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;
    }
.end annotation


# instance fields
.field public api:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

.field checkinReason:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

.field checkinToken:Ljava/lang/String;

.field public onFailure:Landroid/os/Message;

.field public onSuccess:Landroid/os/Message;

.field public rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;Landroid/os/Message;Landroid/os/Message;)V
    .registers 10
    .parameter "api"
    .parameter "onSuccess"
    .parameter "onFailure"

    .prologue
    const/4 v0, 0x0

    .line 317
    move-object v2, v0

    check-cast v2, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;-><init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V
    .registers 7
    .parameter "api"
    .parameter "checkinReason"
    .parameter "checkinToken"
    .parameter "onSuccess"
    .parameter "onFailure"

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    .line 313
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->checkinReason:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    .line 314
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->checkinToken:Ljava/lang/String;

    .line 322
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->api:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    .line 323
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->checkinReason:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    .line 324
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->checkinToken:Ljava/lang/String;

    .line 325
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onSuccess:Landroid/os/Message;

    .line 326
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    .line 327
    return-void
.end method
