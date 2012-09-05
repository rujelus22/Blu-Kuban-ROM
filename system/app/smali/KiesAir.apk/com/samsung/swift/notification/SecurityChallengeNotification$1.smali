.class Lcom/samsung/swift/notification/SecurityChallengeNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "SecurityChallengeNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/notification/SecurityChallengeNotification;
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
    .line 40
    iput-object p1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification$1;->this$0:Lcom/samsung/swift/notification/SecurityChallengeNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-static {}, Lcom/samsung/swift/notification/SecurityChallengeNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localeChangeReciever"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification$1;->this$0:Lcom/samsung/swift/notification/SecurityChallengeNotification;

    const-string v1, "securityManagerChallange_notification"

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->tickerText:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method
