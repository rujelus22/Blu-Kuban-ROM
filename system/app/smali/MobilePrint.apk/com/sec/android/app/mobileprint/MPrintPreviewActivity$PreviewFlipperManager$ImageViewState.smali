.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewState"
.end annotation


# instance fields
.field public index:I

.field public loaded:Z

.field final synthetic this$1:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->this$1:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    .line 1227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1225
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z

    if-eqz v0, :cond_26

    const-string v0, "T"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const-string v0, "F"

    goto :goto_17
.end method
