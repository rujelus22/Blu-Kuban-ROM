.class public Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
.super Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;
.source "ConnectPromptInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->values()[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->submitButtonName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_59

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasEnrollmentCA:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5b

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->useEnrollmentCA:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5d

    :goto_32
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    new-array v0, v1, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 44
    if-lez v1, :cond_5f

    .line 46
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v3

    .line 47
    new-array v0, v1, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 48
    :goto_4c
    if-ge v2, v1, :cond_5f

    .line 50
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v0, v3, v2

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aput-object v0, v4, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_59
    move v0, v2

    .line 38
    goto :goto_21

    :cond_5b
    move v0, v2

    .line 39
    goto :goto_2a

    :cond_5d
    move v1, v2

    .line 40
    goto :goto_32

    .line 53
    :cond_5f
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 90
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->submitButtonName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-boolean v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasEnrollmentCA:Z

    if-eqz v3, :cond_49

    move v3, v4

    :goto_1a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->useEnrollmentCA:Z

    if-eqz v3, :cond_4b

    move v3, v4

    :goto_22
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    if-eqz v3, :cond_4d

    :goto_29
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    if-eqz v3, :cond_53

    .line 98
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, v3

    .line 99
    .local v1, nEntries:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    new-array v2, v1, [Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    .line 101
    .local v2, promptEntryParcel:[Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_39
    if-ge v0, v1, :cond_4f

    .line 103
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry;)V

    aput-object v3, v2, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .end local v0           #i:I
    .end local v1           #nEntries:I
    .end local v2           #promptEntryParcel:[Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;
    :cond_49
    move v3, v5

    .line 93
    goto :goto_1a

    :cond_4b
    move v3, v5

    .line 94
    goto :goto_22

    :cond_4d
    move v4, v5

    .line 95
    goto :goto_29

    .line 105
    .restart local v0       #i:I
    .restart local v1       #nEntries:I
    .restart local v2       #promptEntryParcel:[Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;
    :cond_4f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 111
    .end local v0           #i:I
    .end local v1           #nEntries:I
    .end local v2           #promptEntryParcel:[Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;
    :goto_52
    return-void

    .line 109
    :cond_53
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_52
.end method
