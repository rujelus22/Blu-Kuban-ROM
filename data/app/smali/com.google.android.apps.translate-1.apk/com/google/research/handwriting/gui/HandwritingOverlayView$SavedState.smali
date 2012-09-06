.class Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HandwritingOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/HandwritingOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field strokeColor:I

.field strokeColorRecognized:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 753
    new-instance v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState$1;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 740
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColor:I

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColorRecognized:I

    .line 743
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/research/handwriting/gui/HandwritingOverlayView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter "superState"

    .prologue
    .line 736
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 737
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 747
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 748
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColorRecognized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    return-void
.end method
