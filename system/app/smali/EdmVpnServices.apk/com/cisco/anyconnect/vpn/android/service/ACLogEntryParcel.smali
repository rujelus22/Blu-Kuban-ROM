.class public Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;
.super Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;
.source "ACLogEntryParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->tag:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry$Severity;->values()[Lcom/cisco/anyconnect/vpn/jni/ACLogEntry$Severity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->severity:Lcom/cisco/anyconnect/vpn/jni/ACLogEntry$Severity;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->time:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->message:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->severity:Lcom/cisco/anyconnect/vpn/jni/ACLogEntry$Severity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry$Severity;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACLogEntry;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
