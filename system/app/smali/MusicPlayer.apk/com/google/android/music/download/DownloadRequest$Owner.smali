.class public final enum Lcom/google/android/music/download/DownloadRequest$Owner;
.super Ljava/lang/Enum;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Owner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/download/DownloadRequest$Owner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/download/DownloadRequest$Owner;

.field public static final enum KEEPON:Lcom/google/android/music/download/DownloadRequest$Owner;

.field public static final enum MUSIC_PLAYBACK:Lcom/google/android/music/download/DownloadRequest$Owner;

.field public static final enum RINGTONE:Lcom/google/android/music/download/DownloadRequest$Owner;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/android/music/download/DownloadRequest$Owner;

    const-string v1, "MUSIC_PLAYBACK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadRequest$Owner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadRequest$Owner;->MUSIC_PLAYBACK:Lcom/google/android/music/download/DownloadRequest$Owner;

    .line 39
    new-instance v0, Lcom/google/android/music/download/DownloadRequest$Owner;

    const-string v1, "RINGTONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/download/DownloadRequest$Owner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadRequest$Owner;->RINGTONE:Lcom/google/android/music/download/DownloadRequest$Owner;

    .line 44
    new-instance v0, Lcom/google/android/music/download/DownloadRequest$Owner;

    const-string v1, "KEEPON"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/download/DownloadRequest$Owner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadRequest$Owner;->KEEPON:Lcom/google/android/music/download/DownloadRequest$Owner;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/download/DownloadRequest$Owner;

    sget-object v1, Lcom/google/android/music/download/DownloadRequest$Owner;->MUSIC_PLAYBACK:Lcom/google/android/music/download/DownloadRequest$Owner;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/download/DownloadRequest$Owner;->RINGTONE:Lcom/google/android/music/download/DownloadRequest$Owner;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/download/DownloadRequest$Owner;->KEEPON:Lcom/google/android/music/download/DownloadRequest$Owner;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/download/DownloadRequest$Owner;->$VALUES:[Lcom/google/android/music/download/DownloadRequest$Owner;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/download/DownloadRequest$Owner;
    .registers 2
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/google/android/music/download/DownloadRequest$Owner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/download/DownloadRequest$Owner;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/download/DownloadRequest$Owner;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/music/download/DownloadRequest$Owner;->$VALUES:[Lcom/google/android/music/download/DownloadRequest$Owner;

    invoke-virtual {v0}, [Lcom/google/android/music/download/DownloadRequest$Owner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/download/DownloadRequest$Owner;

    return-object v0
.end method
