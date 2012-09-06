.class Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteImageChangeNotification"
.end annotation


# instance fields
.field imageBytes:[B

.field request:Lcom/google/android/apps/plus/content/ImageRequest;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/ImageCache$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;-><init>()V

    return-void
.end method
