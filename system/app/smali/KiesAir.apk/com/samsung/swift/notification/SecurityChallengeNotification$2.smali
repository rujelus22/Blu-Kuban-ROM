.class Lcom/samsung/swift/notification/SecurityChallengeNotification$2;
.super Ljava/lang/Object;
.source "SecurityChallengeNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/notification/SecurityChallengeNotification;->delayedCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/notification/SecurityChallengeNotification;


# direct methods
.method constructor <init>(Lcom/samsung/swift/notification/SecurityChallengeNotification;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification$2;->this$0:Lcom/samsung/swift/notification/SecurityChallengeNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 83
    invoke-static {}, Lcom/samsung/swift/notification/SwiftNotificationManager;->instance()Lcom/samsung/swift/notification/SwiftNotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/swift/notification/SecurityChallengeNotification;->access$100()Lcom/samsung/swift/notification/SecurityChallengeNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/notification/SwiftNotificationManager;->cancel(Lcom/samsung/swift/notification/SwiftNotification;)V

    .line 84
    return-void
.end method
