.class public Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ExpandingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ExpandingScrollView;
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
            "Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_d

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->mExpanded:Z

    .line 59
    return-void

    .line 58
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/views/ExpandingScrollView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Z)V
    .registers 3
    .parameter "superState"
    .parameter "expanded"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 33
    iput-boolean p2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->mExpanded:Z

    .line 34
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->mExpanded:Z

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->mExpanded:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void

    .line 39
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
