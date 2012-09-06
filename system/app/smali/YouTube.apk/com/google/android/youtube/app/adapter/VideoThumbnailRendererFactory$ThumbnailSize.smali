.class public final enum Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

.field public static final enum LARGE:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

.field public static final enum SMALL:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->SMALL:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    .line 29
    new-instance v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->LARGE:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    sget-object v1, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->SMALL:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->LARGE:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->$VALUES:[Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;
    .registers 2
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->$VALUES:[Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    return-object v0
.end method
