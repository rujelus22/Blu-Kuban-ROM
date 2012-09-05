.class public Lcom/samsung/swift/service/messaging/SMSContentObserver;
.super Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
.source "SMSContentObserver.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-class v0, Lcom/samsung/swift/service/messaging/SMSContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSContentObserver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    const-string v0, "content://mms-sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;-><init>(Landroid/net/Uri;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 3

    .prologue
    .line 101
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->invalidateCache()V

    .line 102
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSContentObserver;->LOGTAG:Ljava/lang/String;

    const-string v1, "Something changed in the SMS database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->invalidateCache()V

    .line 104
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSContentObserver;->LOGTAG:Ljava/lang/String;

    const-string v1, "Invalidating Telephony DB cache to force a call log portlet refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
