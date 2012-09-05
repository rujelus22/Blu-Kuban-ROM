.class public final enum Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
.super Ljava/lang/Enum;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/AppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DBG_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 32
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DBG_WARN"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 33
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DBG_INFO"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 34
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DBG_TRACE"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
    .registers 2
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    return-object v0
.end method
