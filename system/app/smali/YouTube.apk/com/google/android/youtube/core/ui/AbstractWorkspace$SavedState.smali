.class public Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 823
    new-instance v0, Lcom/google/android/youtube/core/ui/c;

    invoke-direct {v0}, Lcom/google/android/youtube/core/ui/c;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 812
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 805
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 814
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/ui/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 3
    .parameter

    .prologue
    .line 808
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 805
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 809
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 819
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    return-void
.end method
