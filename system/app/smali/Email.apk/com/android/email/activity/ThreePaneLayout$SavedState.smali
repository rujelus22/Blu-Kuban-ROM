.class Lcom/android/email/activity/ThreePaneLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ThreePaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
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
            "Lcom/android/email/activity/ThreePaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPaneState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1354
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState$1;

    invoke-direct {v0}, Lcom/android/email/activity/ThreePaneLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    .line 1346
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/email/activity/ThreePaneLayout$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter "superState"

    .prologue
    .line 1337
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1338
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1350
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1351
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    return-void
.end method
