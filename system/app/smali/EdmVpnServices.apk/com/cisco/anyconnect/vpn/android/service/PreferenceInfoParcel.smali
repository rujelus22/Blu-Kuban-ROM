.class public Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
.super Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;
.source "PreferenceInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->heading:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 37
    new-array v0, v2, [Lcom/cisco/anyconnect/vpn/jni/Preference;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    .line 38
    if-lez v2, :cond_2a

    .line 40
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v3

    .line 41
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, v2, :cond_2a

    .line 43
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v0, v3, v1

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/Preference;

    aput-object v0, v4, v1

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 46
    :cond_2a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 63
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->heading:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    if-eqz v3, :cond_26

    .line 66
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    array-length v1, v3

    .line 67
    .local v1, nPrefs:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    new-array v2, v1, [Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    .line 69
    .local v2, prefParcels:[Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_22

    .line 71
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/Preference;)V

    aput-object v3, v2, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 73
    :cond_22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 79
    .end local v0           #i:I
    .end local v1           #nPrefs:I
    .end local v2           #prefParcels:[Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;
    :goto_25
    return-void

    .line 77
    :cond_26
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25
.end method
