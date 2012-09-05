.class public Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;
.super Lcom/samsung/swift/service/livenotifications/LiveNotifier;
.source "SmsLiveNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;


# instance fields
.field private contentObserver:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;

.field private lastIncomingSmsId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-class v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;-><init>()V

    .line 122
    sget-object v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->LOGTAG:Ljava/lang/String;

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->getLatestIncomingSmsId()I

    move-result v0

    iput v0, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I

    .line 125
    sget-object v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latest Incoming SMS Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;-><init>(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;)V

    iput-object v0, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->contentObserver:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier$Observer;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->getLatestIncomingSmsId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->lastIncomingSmsId:I

    return p1
.end method

.method private getLatestIncomingSmsId()I
    .registers 2

    .prologue
    .line 168
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getLatestIncomingSmsId()I

    move-result v0

    return v0
.end method

.method public static instance()Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->instance:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    if-nez v0, :cond_b

    .line 113
    new-instance v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    invoke-direct {v0}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->instance:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    .line 115
    :cond_b
    sget-object v0, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->instance:Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    return-object v0
.end method


# virtual methods
.method protected queueName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    const-string v0, "IncomingSMS"

    return-object v0
.end method
