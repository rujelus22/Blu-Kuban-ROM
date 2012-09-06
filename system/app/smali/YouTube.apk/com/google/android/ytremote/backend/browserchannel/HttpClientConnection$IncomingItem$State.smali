.class public final enum Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CLOSED:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

.field public static final enum DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

.field public static final enum ERROR:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->CLOSED:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->ERROR:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    .line 191
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->CLOSED:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->ERROR:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
