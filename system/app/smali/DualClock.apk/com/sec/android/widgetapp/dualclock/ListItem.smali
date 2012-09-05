.class public Lcom/sec/android/widgetapp/dualclock/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/widgetapp/dualclock/ListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field _id:I

.field bottomLabel:Ljava/lang/String;

.field bottomRightLabel:Ljava/lang/String;

.field homeZone:I

.field private isChecked:Z

.field isDst:Z

.field mTimeInMillis:J

.field rawoffset:I

.field topLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 261
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/ListItem$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/dualclock/ListItem$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/ListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "topLabel"

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "topLabel"
    .parameter "bottomLabel"
    .parameter "rawoffset"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .parameter "topLabel"
    .parameter "bottomLabel"
    .parameter "rawoffset"
    .parameter "id"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->topLabel:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->bottomLabel:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->rawoffset:I

    .line 79
    iput p4, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->_id:I

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public getBottomLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->bottomLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDST()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->isDst:Z

    return v0
.end method

.method public getSelected()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->isChecked:Z

    return v0
.end method

.method public getTopLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->topLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setSelected(Z)V
    .registers 2
    .parameter "select"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->isChecked:Z

    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 243
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->topLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->bottomLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->bottomRightLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->homeZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-wide v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->mTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getDST()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/ListItem;->rawoffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    return-void

    .line 255
    :cond_2e
    const/4 v0, 0x0

    goto :goto_25
.end method
