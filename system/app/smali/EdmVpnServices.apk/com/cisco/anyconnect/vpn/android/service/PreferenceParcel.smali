.class public Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;
.super Lcom/cisco/anyconnect/vpn/jni/Preference;
.source "PreferenceParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/Preference;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/Preference;)V
    .registers 3
    .parameter "pref"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/Preference;-><init>()V

    .line 52
    if-eqz p1, :cond_11

    .line 54
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/Preference;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 55
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/Preference;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 56
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    .line 58
    :cond_11
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->values()[Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 35
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    .line 36
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 39
    new-array v0, v2, [Lcom/cisco/anyconnect/vpn/jni/Preference;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    .line 40
    if-lez v2, :cond_3e

    .line 42
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v3

    .line 43
    const/4 v0, 0x0

    move v1, v0

    :goto_30
    if-ge v1, v2, :cond_3e

    .line 45
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v0, v3, v1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    aput-object v0, v4, v1

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    .line 48
    :cond_3e
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 80
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry;)V

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    if-eqz v3, :cond_35

    .line 84
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    array-length v2, v3

    .line 85
    .local v2, nChildren:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    new-array v0, v2, [Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    .line 87
    .local v0, childrenParcel:[Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v2, :cond_31

    .line 89
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/Preference;)V

    aput-object v3, v0, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 91
    :cond_31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 98
    .end local v0           #childrenParcel:[Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;
    .end local v1           #i:I
    .end local v2           #nChildren:I
    :goto_34
    return-void

    .line 95
    :cond_35
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34
.end method
