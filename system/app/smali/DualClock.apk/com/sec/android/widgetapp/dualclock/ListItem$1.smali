.class final Lcom/sec/android/widgetapp/dualclock/ListItem$1;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/ListItem;
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
        "Lcom/sec/android/widgetapp/dualclock/ListItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/dualclock/ListItem;
    .registers 6
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 265
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>()V

    .line 267
    .local v0, item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->_id:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->topLabel:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->bottomLabel:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->bottomRightLabel:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->homeZone:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->mTimeInMillis:J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_39

    :goto_30
    iput-boolean v1, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->isDst:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->rawoffset:I

    .line 283
    return-object v0

    .line 279
    :cond_39
    const/4 v1, 0x0

    goto :goto_30
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/dualclock/ListItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/dualclock/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/widgetapp/dualclock/ListItem;
    .registers 3
    .parameter "size"

    .prologue
    .line 289
    new-array v0, p1, [Lcom/sec/android/widgetapp/dualclock/ListItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/dualclock/ListItem$1;->newArray(I)[Lcom/sec/android/widgetapp/dualclock/ListItem;

    move-result-object v0

    return-object v0
.end method
