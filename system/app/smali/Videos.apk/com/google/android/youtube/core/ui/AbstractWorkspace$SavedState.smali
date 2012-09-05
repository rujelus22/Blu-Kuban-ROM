.class public Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbstractWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 760
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 743
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 752
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/ui/AbstractWorkspace$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 3
    .parameter "superState"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 743
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 747
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 756
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 757
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    return-void
.end method
