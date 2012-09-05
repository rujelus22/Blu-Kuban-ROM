.class public final enum Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
.super Ljava/lang/Enum;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/NativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "playerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/app/video/editor/external/NativeInterface$playerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_DAM_DISPLAY:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 34
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 35
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 36
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_STOPED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 37
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_CLOSED"

    invoke-direct {v0, v1, v7}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 38
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 39
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_RESUMED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 40
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_STOPED_ON_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 41
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 42
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 43
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_FILE_OPEN_FAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 44
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_DAM_DISPLAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_DISPLAY:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 45
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_DAM_CONFIGURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 46
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_DAM_UNREGISTER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 32
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_DISPLAY:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ENUM$VALUES:[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ENUM$VALUES:[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
