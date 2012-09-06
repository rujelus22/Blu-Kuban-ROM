.class public Lcom/android/emailcommon/TrafficFlags;
.super Ljava/lang/Object;
.source "TrafficFlags.java"


# static fields
.field private static final PROTOCOLS:[Ljava/lang/String;

.field private static final REASONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pop3"

    aput-object v1, v0, v2

    const-string v1, "imap"

    aput-object v1, v0, v3

    const-string v1, "eas"

    aput-object v1, v0, v4

    const-string v1, "smtp"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/TrafficFlags;->PROTOCOLS:[Ljava/lang/String;

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sync"

    aput-object v1, v0, v2

    const-string v1, "attachment"

    aput-object v1, v0, v3

    const-string v1, "precache"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/TrafficFlags;->REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 83
    sget-object v1, Lcom/android/emailcommon/TrafficFlags;->PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, protocolIndex:I
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    long-to-int v1, v1

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method public static getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 95
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    long-to-int v0, v0

    or-int/lit8 v0, v0, 0x0

    const/high16 v1, 0x3

    or-int/2addr v0, v1

    return v0
.end method

.method public static getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 71
    sget-object v1, Lcom/android/emailcommon/TrafficFlags;->PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, protocolIndex:I
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    long-to-int v1, v1

    or-int/lit8 v1, v1, 0x0

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    return v1
.end method
