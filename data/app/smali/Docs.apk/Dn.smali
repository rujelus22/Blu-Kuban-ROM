.class public final LDn;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/apps/docs/editors/text/TextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/apps/docs/editors/text/TextView$SavedState;
    .registers 4
    .parameter

    .prologue
    .line 2454
    new-instance v0, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;-><init>(Landroid/os/Parcel;LCR;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/apps/docs/editors/text/TextView$SavedState;
    .registers 3
    .parameter

    .prologue
    .line 2459
    new-array v0, p1, [Lcom/google/android/apps/docs/editors/text/TextView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 2451
    invoke-virtual {p0, p1}, LDn;->a(Landroid/os/Parcel;)Lcom/google/android/apps/docs/editors/text/TextView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 2451
    invoke-virtual {p0, p1}, LDn;->a(I)[Lcom/google/android/apps/docs/editors/text/TextView$SavedState;

    move-result-object v0

    return-object v0
.end method
