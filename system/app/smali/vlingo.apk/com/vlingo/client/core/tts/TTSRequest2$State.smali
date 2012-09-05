.class public final enum Lcom/vlingo/client/core/tts/TTSRequest2$State;
.super Ljava/lang/Enum;
.source "TTSRequest2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/TTSRequest2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/core/tts/TTSRequest2$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/core/tts/TTSRequest2$State;

.field public static final enum BEING_FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

.field public static final enum FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

.field public static final enum FETCH_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;

.field public static final enum FOUND_IN_CACHE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

.field public static final enum NONE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

.field public static final enum PLAY_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/core/tts/TTSRequest2$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->NONE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    const-string v1, "FOUND_IN_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/core/tts/TTSRequest2$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FOUND_IN_CACHE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    const-string v1, "BEING_FETCHED"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/core/tts/TTSRequest2$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->BEING_FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    const-string v1, "FETCHED"

    invoke-direct {v0, v1, v6}, Lcom/vlingo/client/core/tts/TTSRequest2$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    const-string v1, "FETCH_TIMEOUT"

    invoke-direct {v0, v1, v7}, Lcom/vlingo/client/core/tts/TTSRequest2$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FETCH_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    const-string v1, "PLAY_TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSRequest2$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->PLAY_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vlingo/client/core/tts/TTSRequest2$State;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->NONE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FOUND_IN_CACHE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->BEING_FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FETCH_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vlingo/client/core/tts/TTSRequest2$State;->PLAY_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->$VALUES:[Lcom/vlingo/client/core/tts/TTSRequest2$State;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSRequest2$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/core/tts/TTSRequest2$State;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->$VALUES:[Lcom/vlingo/client/core/tts/TTSRequest2$State;

    invoke-virtual {v0}, [Lcom/vlingo/client/core/tts/TTSRequest2$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/core/tts/TTSRequest2$State;

    return-object v0
.end method
