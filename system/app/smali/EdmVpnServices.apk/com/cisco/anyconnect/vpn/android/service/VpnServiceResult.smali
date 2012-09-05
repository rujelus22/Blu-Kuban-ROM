.class public final enum Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
.super Ljava/lang/Enum;
.source "VpnServiceResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum CERT_IMPORT_INVALID_STATE:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum INITIALIZATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 23
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v1, "OPERATION_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 24
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v1, "INITIALIZATION_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->INITIALIZATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 25
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v1, "CERT_IMPORT_INVALID_STATE"

    invoke-direct {v0, v1, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_INVALID_STATE:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 26
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v1, "CERT_IMPORT_IN_PROGRESS"

    invoke-direct {v0, v1, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 27
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v1, "OPERATION_IN_PROGRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->INITIALIZATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_INVALID_STATE:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 40
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .registers 2
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
