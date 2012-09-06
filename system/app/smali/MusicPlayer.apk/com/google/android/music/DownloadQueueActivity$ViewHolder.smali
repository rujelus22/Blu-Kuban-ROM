.class Lcom/google/android/music/DownloadQueueActivity$ViewHolder;
.super Ljava/lang/Object;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DownloadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

.field downloadIndicator:Landroid/widget/ImageView;

.field downloadType:Landroid/widget/ImageView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field progressBar:Landroid/widget/SeekBar;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/DownloadQueueActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;-><init>()V

    return-void
.end method
