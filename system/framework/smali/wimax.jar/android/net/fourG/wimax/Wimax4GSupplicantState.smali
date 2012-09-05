.class public final enum Landroid/net/fourG/wimax/Wimax4GSupplicantState;
.super Ljava/lang/Enum;
.source "Wimax4GSupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/fourG/wimax/Wimax4GSupplicantState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum ASSOCIATED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum ASSOCIATING:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum COMPLETED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GSupplicantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum DORMANT:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum HANDSHAKE:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum INACTIVE:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum INVALID:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum SCANNING:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

.field public static final enum UNINITIALIZED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "ASSOCIATED"

    invoke-direct {v0, v1, v3}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 39
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "ASSOCIATING"

    invoke-direct {v0, v1, v4}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 45
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->COMPLETED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 52
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 58
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "DORMANT"

    invoke-direct {v0, v1, v7}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->DORMANT:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 63
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "HANDSHAKE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->HANDSHAKE:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 69
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->INACTIVE:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 74
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "INVALID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->INVALID:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 79
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "SCANNING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->SCANNING:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 81
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    const-string v1, "UNINITIALIZED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->UNINITIALIZED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->COMPLETED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->DORMANT:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->HANDSHAKE:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->INACTIVE:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->INVALID:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->SCANNING:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->UNINITIALIZED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->$VALUES:[Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    .line 105
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GSupplicantState$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isValidState(Landroid/net/fourG/wimax/Wimax4GSupplicantState;)Z
    .registers 2
    .parameter "state"

    .prologue
    .line 91
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->UNINITIALIZED:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    if-eq p0, v0, :cond_a

    sget-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->INVALID:Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GSupplicantState;
    .registers 2
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    return-object v0
.end method

.method public static values()[Landroid/net/fourG/wimax/Wimax4GSupplicantState;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->$VALUES:[Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    invoke-virtual {v0}, [Landroid/net/fourG/wimax/Wimax4GSupplicantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return-void
.end method
