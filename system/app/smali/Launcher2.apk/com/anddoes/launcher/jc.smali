.class final Lcom/anddoes/launcher/jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1
    new-instance v0, Lcom/anddoes/launcher/PagedView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/anddoes/launcher/PagedView$SavedState;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    new-array v0, p1, [Lcom/anddoes/launcher/PagedView$SavedState;

    return-object v0
.end method
