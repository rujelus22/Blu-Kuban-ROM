.class public final enum Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum PAUSED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum UNSTARTED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field public static final enum VIDEO_CUED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "UNSTARTED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNSTARTED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 189
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 190
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6, v5}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 191
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7, v6}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PAUSED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 192
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v7}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 193
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "VIDEO_CUED"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->VIDEO_CUED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 194
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "ADVERTISEMENT"

    const/4 v2, 0x6

    const/16 v3, 0x439

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 199
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "UNCONFIRMED"

    const/4 v2, 0x7

    const/16 v3, -0x1f42

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 200
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    const/16 v3, -0x1f43

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 204
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x9

    const/16 v3, -0x1f41

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNKNOWN:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 187
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNSTARTED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PAUSED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->VIDEO_CUED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNKNOWN:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->$VALUES:[Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    iput p3, p0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->code:I

    .line 219
    return-void
.end method

.method public static valueOf(I)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
    .registers 6
    .parameter

    .prologue
    .line 207
    invoke-static {}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->values()[Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 208
    iget v4, v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->code:I

    if-ne v4, p0, :cond_10

    .line 212
    :goto_f
    return-object v0

    .line 207
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 212
    :cond_14
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNKNOWN:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
    .registers 2
    .parameter

    .prologue
    .line 187
    const-class v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->$VALUES:[Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    return-object v0
.end method
