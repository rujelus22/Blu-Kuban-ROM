.class public Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;
.super Lcom/cisco/anyconnect/vpn/jni/PromptEntry;
.source "PromptEntryParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/jni/PromptEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry;)V
    .registers 3
    .parameter "promptEntry"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;-><init>()V

    .line 54
    if-eqz p1, :cond_25

    .line 56
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->label:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 60
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEntryGroup:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEntryGroup:Z

    .line 61
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    .line 62
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    .line 63
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    .line 65
    :cond_25
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->label:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->values()[Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_52

    move v2, v3

    :goto_27
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEntryGroup:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_54

    move v2, v3

    :goto_30
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_56

    :goto_38
    iput-boolean v3, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 42
    .local v0, comboLength:I
    if-ltz v0, :cond_58

    .line 44
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    .local v1, i:I
    :goto_45
    if-ge v1, v0, :cond_58

    .line 47
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .end local v0           #comboLength:I
    .end local v1           #i:I
    :cond_52
    move v2, v4

    .line 38
    goto :goto_27

    :cond_54
    move v2, v4

    .line 39
    goto :goto_30

    :cond_56
    move v3, v4

    .line 40
    goto :goto_38

    .line 50
    .restart local v0       #comboLength:I
    :cond_58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-boolean v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEntryGroup:Z

    if-eqz v4, :cond_39

    move v4, v5

    :goto_1f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-boolean v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    if-eqz v4, :cond_3b

    move v4, v5

    :goto_27
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-boolean v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v4, :cond_3d

    :goto_2e
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    if-nez v4, :cond_3f

    .line 82
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    :cond_38
    return-void

    :cond_39
    move v4, v6

    .line 77
    goto :goto_1f

    :cond_3b
    move v4, v6

    .line 78
    goto :goto_27

    :cond_3d
    move v5, v6

    .line 79
    goto :goto_2e

    .line 86
    :cond_3f
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_49
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 89
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method
