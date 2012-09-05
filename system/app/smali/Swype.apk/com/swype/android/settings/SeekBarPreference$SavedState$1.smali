.class final Lcom/swype/android/settings/SeekBarPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/SeekBarPreference$SavedState;
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
        "Lcom/swype/android/settings/SeekBarPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/swype/android/settings/SeekBarPreference$SavedState;
    .registers 3
    .parameter "in"

    .prologue
    .line 230
    new-instance v0, Lcom/swype/android/settings/SeekBarPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/swype/android/settings/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/SeekBarPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/swype/android/settings/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/swype/android/settings/SeekBarPreference$SavedState;
    .registers 3
    .parameter "size"

    .prologue
    .line 234
    new-array v0, p1, [Lcom/swype/android/settings/SeekBarPreference$SavedState;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/SeekBarPreference$SavedState$1;->newArray(I)[Lcom/swype/android/settings/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
