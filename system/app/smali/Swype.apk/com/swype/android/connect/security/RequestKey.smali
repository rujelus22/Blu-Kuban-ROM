.class public Lcom/swype/android/connect/security/RequestKey;
.super Ljava/lang/Object;
.source "RequestKey.java"


# static fields
.field private static requestKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateKey()V
    .registers 1

    .prologue
    .line 9
    const-string v0, "R3JvbWl0LCB0aGF0J3MgaXRcISBDaGVlc2VcISBXZSdsbCBnbyBzb21ld2hlcmU"

    sput-object v0, Lcom/swype/android/connect/security/RequestKey;->requestKey:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static getKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/swype/android/connect/security/RequestKey;->requestKey:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 15
    const-string v0, "R3JvbWl0LCB0aGF0J3MgaXRcISBDaGVlc2VcISBXZSdsbCBnbyBzb21ld2hlcmU"

    sput-object v0, Lcom/swype/android/connect/security/RequestKey;->requestKey:Ljava/lang/String;

    .line 18
    :cond_8
    sget-object v0, Lcom/swype/android/connect/security/RequestKey;->requestKey:Ljava/lang/String;

    return-object v0
.end method
