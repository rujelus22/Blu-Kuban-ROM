.class final Landroid/os/SupportedEventsParcel$1;
.super Ljava/lang/Object;
.source "SupportedEventsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SupportedEventsParcel;
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
        "Landroid/os/SupportedEventsParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/SupportedEventsParcel;
    .registers 4
    .parameter "in"

    .prologue
    .line 40
    new-instance v0, Landroid/os/SupportedEventsParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/SupportedEventsParcel;-><init>(Landroid/os/Parcel;Landroid/os/SupportedEventsParcel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/SupportedEventsParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/SupportedEventsParcel;
    .registers 3
    .parameter "size"

    .prologue
    .line 44
    new-array v0, p1, [Landroid/os/SupportedEventsParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel$1;->newArray(I)[Landroid/os/SupportedEventsParcel;

    move-result-object v0

    return-object v0
.end method
