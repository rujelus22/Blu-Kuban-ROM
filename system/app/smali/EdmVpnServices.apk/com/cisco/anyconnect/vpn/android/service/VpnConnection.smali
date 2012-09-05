.class public Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
.super Ljava/lang/Object;
.source "VpnConnection.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field private mCertCommonName:Ljava/lang/String;

.field private mCertHash:[B

.field private mHost:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 122
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private declared-synchronized readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, certHashLen:I
    if-lez v0, :cond_48

    .line 58
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    .line 59
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4c

    .line 65
    :goto_46
    monitor-exit p0

    return-void

    .line 63
    :cond_48
    const/4 v1, 0x0

    :try_start_49
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4c

    goto :goto_46

    .line 48
    .end local v0           #certHashLen:I
    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    .registers 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetCertCommonName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetCertHash()[B
    .registers 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 248
    monitor-exit p0

    return-void

    .line 247
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetCertCommonName(Ljava/lang/String;)V
    .registers 3
    .parameter "commonName"

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 319
    monitor-exit p0

    return-void

    .line 318
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetCertHash([B)V
    .registers 3
    .parameter "certHash"

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 259
    monitor-exit p0

    return-void

    .line 258
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetHost(Ljava/lang/String;)V
    .registers 3
    .parameter "host"

    .prologue
    .line 286
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 298
    monitor-exit p0

    return-void

    .line 297
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized describeContents()I
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    if-nez v0, :cond_36

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_42

    .line 114
    :goto_34
    monitor-exit p0

    return-void

    .line 111
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_42

    goto :goto_34

    .line 98
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method
