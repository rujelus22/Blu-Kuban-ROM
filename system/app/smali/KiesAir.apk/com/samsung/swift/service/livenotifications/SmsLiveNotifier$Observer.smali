.class Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;
.super Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
.source "SmsLiveNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;


# direct methods
.method public constructor <init>(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;)V
    .registers 5
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    .line 140
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;-><init>(Landroid/net/Uri;)V

    .line 141
    sget-object v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsLiveNotifier using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 5

    .prologue
    .line 146
    sget-object v1, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->LOGTAG:Ljava/lang/String;

    const-string v2, "Something changed in the SMS database"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    #calls: Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->getLatestIncomingSmsId()I
    invoke-static {v1}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->access$000(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;)I

    move-result v0

    .line 150
    .local v0, newSmsId:I
    sget-object v1, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastIncomingSmsId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    #getter for: Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I
    invoke-static {v3}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->access$100(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v1, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSmsId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    #getter for: Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I
    invoke-static {v1}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->access$100(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;)I

    move-result v1

    if-lt v1, v0, :cond_58

    .line 155
    iget-object v1, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    #setter for: Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I
    invoke-static {v1, v0}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->access$102(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;I)I

    .line 156
    sget-object v1, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->LOGTAG:Ljava/lang/String;

    const-string v2, "... but no new incoming messages."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_57
    return-void

    .line 159
    :cond_58
    iget-object v1, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    #setter for: Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I
    invoke-static {v1, v0}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->access$102(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;I)I

    .line 160
    sget-object v1, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New message id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;->this$0:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->sendMessage(Ljava/lang/String;)V

    goto :goto_57
.end method
