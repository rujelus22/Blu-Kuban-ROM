.class final Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;
.super Ljava/lang/Object;
.source "TwRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
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
        "Lcom/sec/android/touchwiz/widget/TwRemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1661
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .registers 3
    .parameter "parcel"

    .prologue
    .line 1663
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1661
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .registers 3
    .parameter "size"

    .prologue
    .line 1667
    new-array v0, p1, [Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1661
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;->newArray(I)[Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-result-object v0

    return-object v0
.end method
