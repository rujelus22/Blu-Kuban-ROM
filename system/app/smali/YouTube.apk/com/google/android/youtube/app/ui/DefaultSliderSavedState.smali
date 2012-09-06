.class public Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public expandedLayer:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/youtube/app/ui/al;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/al;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->expandedLayer:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->expandedLayer:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->expandedLayer:I

    .line 32
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->expandedLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
