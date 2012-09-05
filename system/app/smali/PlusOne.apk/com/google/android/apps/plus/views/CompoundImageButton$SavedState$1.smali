.class final Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState$1;
.super Ljava/lang/Object;
.source "CompoundImageButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;
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
        "Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;
    .registers 4
    .parameter "in"

    .prologue
    .line 151
    new-instance v0, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;-><init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/views/CompoundImageButton$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;
    .registers 3
    .parameter "size"

    .prologue
    .line 156
    new-array v0, p1, [Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState$1;->newArray(I)[Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;

    move-result-object v0

    return-object v0
.end method
