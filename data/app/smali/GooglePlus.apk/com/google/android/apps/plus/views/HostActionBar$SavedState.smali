.class Lcom/google/android/apps/plus/views/HostActionBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HostActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/HostActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/views/HostActionBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field overflowPopupMenuVisible:Z

.field sharePopupMenuVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 803
    new-instance v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/HostActionBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 781
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->overflowPopupMenuVisible:Z

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    :goto_14
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->sharePopupMenuVisible:Z

    .line 784
    return-void

    :cond_17
    move v0, v2

    .line 782
    goto :goto_c

    :cond_19
    move v1, v2

    .line 783
    goto :goto_14
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/views/HostActionBar$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter "superState"

    .prologue
    .line 777
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 778
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 795
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HostActionBar.SavedState{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overflowPopupMenuVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->overflowPopupMenuVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sharePopupMenuVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->sharePopupMenuVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 788
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 789
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->overflowPopupMenuVisible:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->sharePopupMenuVisible:Z

    if-eqz v0, :cond_17

    :goto_11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    return-void

    :cond_15
    move v0, v2

    .line 789
    goto :goto_a

    :cond_17
    move v1, v2

    .line 790
    goto :goto_11
.end method
