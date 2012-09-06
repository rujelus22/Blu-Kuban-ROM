.class final Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState$1;
.super Ljava/lang/Object;
.source "HandwritingOverlayView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;
    .registers 4
    .parameter "in"

    .prologue
    .line 757
    new-instance v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;-><init>(Landroid/os/Parcel;Lcom/google/research/handwriting/gui/HandwritingOverlayView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;
    .registers 3
    .parameter "size"

    .prologue
    .line 762
    new-array v0, p1, [Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState$1;->newArray(I)[Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;

    move-result-object v0

    return-object v0
.end method
