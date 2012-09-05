.class public Lcom/android/emailcommon/utility/SyncScheduleData;
.super Ljava/lang/Object;
.source "SyncScheduleData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/utility/SyncScheduleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndMinute:I

.field private mOffPeakSchedule:I

.field private mPeakDays:I

.field private mPeakSchedule:I

.field private mRoamingSchedule:I

.field private mStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData$1;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/SyncScheduleData$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SyncScheduleData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "peakDays"
    .parameter "peakSchedule"
    .parameter "offPeakSchedule"
    .parameter "roamingSchedule"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    .line 32
    iput p2, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    .line 33
    iput p3, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    .line 34
    iput p4, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    .line 35
    iput p5, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    .line 36
    iput p6, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    .line 107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getEndMinute()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    return v0
.end method

.method public getOffPeakSchedule()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    return v0
.end method

.method public getPeakDay()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    return v0
.end method

.method public getPeakSchedule()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    return v0
.end method

.method public getRoamingSchedule()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    return v0
.end method

.method public getStartMinute()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    return v0
.end method

.method public setEndMinute(I)V
    .registers 2
    .parameter "endMinute"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    .line 53
    return-void
.end method

.method public setOffPeakSchedule(I)V
    .registers 2
    .parameter "offPeakSchedule"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    .line 77
    return-void
.end method

.method public setPeakDay(I)V
    .registers 2
    .parameter "peakDay"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    .line 61
    return-void
.end method

.method public setPeakSchedule(I)V
    .registers 2
    .parameter "peakSchedule"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    .line 69
    return-void
.end method

.method public setRoamingSchedule(I)V
    .registers 2
    .parameter "roamingSchedule"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    .line 85
    return-void
.end method

.method public setStartMinute(I)V
    .registers 2
    .parameter "startMinute"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
