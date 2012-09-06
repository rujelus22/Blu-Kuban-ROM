.class public Lcom/google/android/apps/plus/views/AudienceView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AudienceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/AudienceView;
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
            "Lcom/google/android/apps/plus/views/AudienceView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audience:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            ">;"
        }
    .end annotation
.end field

.field public edited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/AudienceView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->audience:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->edited:Z

    .line 115
    return-void

    .line 114
    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/views/AudienceView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter "superState"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 103
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->audience:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->edited:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void

    .line 124
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method
