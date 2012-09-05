.class public final enum Lcom/google/android/youtube/videos/DrmRequest$RequestType;
.super Ljava/lang/Enum;
.source "DrmRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/DrmRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/videos/DrmRequest$RequestType;

.field public static final enum OFFLINE:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

.field public static final enum OFFLINE_REFRESH:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

.field public static final enum OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

.field public static final enum STREAMING:Lcom/google/android/youtube/videos/DrmRequest$RequestType;


# instance fields
.field public final isOffline:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const-string v1, "STREAMING"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/youtube/videos/DrmRequest$RequestType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->STREAMING:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    .line 29
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/youtube/videos/DrmRequest$RequestType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    .line 35
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const-string v1, "OFFLINE_REFRESH"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/videos/DrmRequest$RequestType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_REFRESH:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    .line 39
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const-string v1, "OFFLINE_UNPIN"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/videos/DrmRequest$RequestType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v1, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->STREAMING:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_REFRESH:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->$VALUES:[Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter "isOffline"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-boolean p3, p0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->isOffline:Z

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmRequest$RequestType;
    .registers 2
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/videos/DrmRequest$RequestType;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->$VALUES:[Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    invoke-virtual {v0}, [Lcom/google/android/youtube/videos/DrmRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    return-object v0
.end method
