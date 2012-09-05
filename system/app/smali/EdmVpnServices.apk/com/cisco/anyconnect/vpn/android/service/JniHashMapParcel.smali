.class public Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;
.super Lcom/cisco/anyconnect/vpn/jni/JniHashMap;
.source "JniHashMapParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;-><init>()V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .parameter "in"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 31
    .local v1, len:I
    new-array v4, v1, [Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, count:I
    :goto_9
    if-ge v0, v1, :cond_1f

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    invoke-direct {v5, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_9

    .line 41
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1f
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 79
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    if-nez v4, :cond_9

    .line 81
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    :cond_8
    return-void

    .line 85
    :cond_9
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    .local v0, arr$:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_13
    if-ge v1, v3, :cond_8

    aget-object v2, v0, v1

    .line 88
    .local v2, item:Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;
    iget-object v4, v2, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v4, v2, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->value:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method
