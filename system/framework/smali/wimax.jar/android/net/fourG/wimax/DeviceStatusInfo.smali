.class public Landroid/net/fourG/wimax/DeviceStatusInfo;
.super Ljava/lang/Object;
.source "DeviceStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;,
        Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;,
        Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/DeviceStatusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectionProgressInfo:I

.field private mDeviceStatus:I

.field private mStatusReason:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 195
    new-instance v0, Landroid/net/fourG/wimax/DeviceStatusInfo$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/DeviceStatusInfo$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method constructor <init>(III)V
    .registers 4
    .parameter "deviceStatus"
    .parameter "statusReason"
    .parameter "connectionProgressInfo"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/fourG/wimax/DeviceStatusInfo;->setDeviceStatus(III)V

    .line 106
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionProgressInfo()Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    .registers 7

    .prologue
    .line 156
    invoke-static {}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->values()[Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    move-result-object v0

    .local v0, arr$:[Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 157
    .local v1, eInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v4

    iget v5, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    if-ne v4, v5, :cond_13

    .line 161
    .end local v1           #eInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    :goto_12
    return-object v1

    .line 156
    .restart local v1       #eInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 161
    .end local v1           #eInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getDeviceStatus()Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    .registers 7

    .prologue
    .line 113
    invoke-static {}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->values()[Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    move-result-object v0

    .local v0, arr$:[Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 114
    .local v1, eDeviceStatus:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->ordinal()I

    move-result v4

    iget v5, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mDeviceStatus:I

    if-ne v4, v5, :cond_13

    .line 118
    .end local v1           #eDeviceStatus:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    :goto_12
    return-object v1

    .line 113
    .restart local v1       #eDeviceStatus:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 118
    .end local v1           #eDeviceStatus:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getStatusReason()Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    .registers 7

    .prologue
    .line 141
    invoke-static {}, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->values()[Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    move-result-object v0

    .local v0, arr$:[Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 142
    .local v1, eStatusReason:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->ordinal()I

    move-result v4

    iget v5, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mStatusReason:I

    if-ne v4, v5, :cond_13

    .line 146
    .end local v1           #eStatusReason:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    :goto_12
    return-object v1

    .line 141
    .restart local v1       #eStatusReason:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 146
    .end local v1           #eStatusReason:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method setDeviceStatus(III)V
    .registers 4
    .parameter "deviceStatus"
    .parameter "statusReason"
    .parameter "connectionProgressInfo"

    .prologue
    .line 130
    iput p1, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mDeviceStatus:I

    .line 131
    iput p2, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mStatusReason:I

    .line 132
    iput p3, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceStatusInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "DeviceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mDeviceStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", StatusReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mStatusReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ConnectionProgressInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 186
    iget v0, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mDeviceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mStatusReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/net/fourG/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
