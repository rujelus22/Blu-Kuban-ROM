.class public Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TypeableAudienceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/TypeableAudienceView;
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
            "Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public selectionEnd:I

.field public selectionStart:I

.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 64
    const-class v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->text:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionStart:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionEnd:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/views/TypeableAudienceView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter "superState"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 56
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
