.class Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
.super Ljava/lang/Object;
.source "VolumeManifestFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/VolumeManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageInfo"
.end annotation


# instance fields
.field public builder:Landroid/content/ContentProviderOperation$Builder;

.field public isForbidden:Z

.field public pageId:Ljava/lang/String;

.field public segmentIndex:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;-><init>()V

    return-void
.end method
