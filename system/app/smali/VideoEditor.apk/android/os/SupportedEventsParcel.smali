.class public Landroid/os/SupportedEventsParcel;
.super Ljava/lang/Object;
.source "SupportedEventsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SupportedEventsParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MAX_SUPPORTED:B = 0x2t

.field public static final EVENT_PLAYBACK_STATUS_CHANGED:B = 0x1t

.field public static final EVENT_TRACK_CHANGED:B = 0x2t


# instance fields
.field public mCount:B

.field public mEvents:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Landroid/os/SupportedEventsParcel$1;

    invoke-direct {v0}, Landroid/os/SupportedEventsParcel$1;-><init>()V

    sput-object v0, Landroid/os/SupportedEventsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    .line 33
    iput-byte v2, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    .line 34
    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    .line 35
    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    aput-byte v2, v0, v3

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/SupportedEventsParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/os/SupportedEventsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    .line 66
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    if-ge v0, v1, :cond_1c

    .line 68
    iget-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 69
    :cond_1c
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "in"
    .parameter "count"

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_9

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 53
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    if-ge v0, v1, :cond_14

    .line 55
    iget-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 56
    :cond_14
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "count"

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_9

    .line 61
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_9
    return-void
.end method
