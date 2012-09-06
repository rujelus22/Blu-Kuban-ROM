.class final enum Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BODY:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

.field public static final enum CHUNK_DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

.field public static final enum CHUNK_END:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

.field public static final enum CHUNK_SIZE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

.field public static final enum DONE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

.field public static final enum HEADER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

.field public static final enum TRAILER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->BODY:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    const-string v1, "CHUNK_DATA"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    const-string v1, "CHUNK_END"

    invoke-direct {v0, v1, v5}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_END:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    const-string v1, "CHUNK_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_SIZE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->DONE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    const-string v1, "HEADER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->HEADER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    const-string v1, "TRAILER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->TRAILER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    .line 257
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->BODY:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_END:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_SIZE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->DONE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->HEADER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->TRAILER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
