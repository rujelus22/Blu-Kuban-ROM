.class public final Lcom/google/android/music/sync/api/MusicApiClientFactory;
.super Ljava/lang/Object;
.source "MusicApiClientFactory.java"


# static fields
.field private static sInstance:Lcom/google/android/music/sync/api/MusicApiClientFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientFactory;

    invoke-direct {v0}, Lcom/google/android/music/sync/api/MusicApiClientFactory;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientFactory;->sInstance:Lcom/google/android/music/sync/api/MusicApiClientFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/music/sync/api/MusicApiClientFactory;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientFactory;->sInstance:Lcom/google/android/music/sync/api/MusicApiClientFactory;

    return-object v0
.end method


# virtual methods
.method public createApiClientWithAuthInfo(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)Lcom/google/android/music/sync/api/MusicApiClient;
    .registers 5
    .parameter "context"
    .parameter "authInfo"

    .prologue
    .line 39
    if-nez p2, :cond_d

    .line 40
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;

    new-instance v1, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v1, p1}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V

    .line 42
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/sync/api/MusicApiClientImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V

    goto :goto_c
.end method
