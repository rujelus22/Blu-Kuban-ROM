.class public final enum Lcom/google/android/ytremote/backend/model/RemotePlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ADVERTISEMENT:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

.field public static final enum BUFFERING:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

.field public static final enum ENDED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/RemotePlayerState;

.field public static final enum PAUSED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

.field public static final enum PLAYING:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

.field public static final enum UNSTARTED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

.field public static final enum VIDEO_CUED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;


# instance fields
.field private final stateValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    const-string v1, "UNSTARTED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->UNSTARTED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    .line 14
    new-instance v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->ENDED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    .line 15
    new-instance v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6, v5}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->PLAYING:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    .line 16
    new-instance v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7, v6}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->PAUSED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    .line 17
    new-instance v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v7}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->BUFFERING:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    .line 18
    new-instance v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    const-string v1, "VIDEO_CUED"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->VIDEO_CUED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    .line 19
    new-instance v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    const-string v1, "ADVERTISEMENT"

    const/4 v2, 0x6

    const/16 v3, 0x439

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    sget-object v1, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->UNSTARTED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->ENDED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->PLAYING:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->PAUSED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->BUFFERING:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->VIDEO_CUED:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->stateValue:I

    .line 38
    return-void
.end method

.method public static forValue(I)Lcom/google/android/ytremote/backend/model/RemotePlayerState;
    .registers 6
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->values()[Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_1d

    .line 33
    new-instance v0, Lcom/google/android/ytremote/logic/exception/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No RemotePlayerState for value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/logic/exception/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1d
    aget-object v3, v1, v0

    .line 29
    iget v4, v3, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->stateValue:I

    if-ne v4, p0, :cond_24

    .line 30
    return-object v3

    .line 28
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/RemotePlayerState;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/backend/model/RemotePlayerState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/backend/model/RemotePlayerState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final value()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/ytremote/backend/model/RemotePlayerState;->stateValue:I

    return v0
.end method
