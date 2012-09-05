.class public final enum Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
.super Ljava/lang/Enum;
.source "ConnectProgressState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final enum Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final enum Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final enum NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v1, "NoAction"

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 34
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 39
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v1, "Disconnecting"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 44
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v1, "Initializing"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 57
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .registers 2
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    return-object v0
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
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
