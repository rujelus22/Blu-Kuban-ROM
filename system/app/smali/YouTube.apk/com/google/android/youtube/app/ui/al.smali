.class final Lcom/google/android/youtube/app/ui/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 18
    new-array v0, p1, [Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;

    return-object v0
.end method
