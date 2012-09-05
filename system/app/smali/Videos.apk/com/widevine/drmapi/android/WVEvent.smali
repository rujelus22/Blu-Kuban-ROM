.class public final enum Lcom/widevine/drmapi/android/WVEvent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/widevine/drmapi/android/WVEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum EndOfList:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum Initialized:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum LicenseReceived:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum LicenseRemoved:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum LicenseRequestFailed:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum NullEvent:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum PlayFailed:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum Playing:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum QueryStatus:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum Registered:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum SecureStore:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum Stopped:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum Terminated:Lcom/widevine/drmapi/android/WVEvent;

.field public static final enum Unregistered:Lcom/widevine/drmapi/android/WVEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "NullEvent"

    invoke-direct {v0, v1, v3}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->NullEvent:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "LicenseReceived"

    invoke-direct {v0, v1, v4}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->LicenseReceived:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "LicenseRequestFailed"

    invoke-direct {v0, v1, v5}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->LicenseRequestFailed:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "Playing"

    invoke-direct {v0, v1, v6}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->Playing:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "PlayFailed"

    invoke-direct {v0, v1, v7}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->PlayFailed:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "Stopped"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->Stopped:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "QueryStatus"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->QueryStatus:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "EndOfList"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->EndOfList:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "Initialized"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->Initialized:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "InitializeFailed"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "Terminated"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->Terminated:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "LicenseRemoved"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->LicenseRemoved:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "Registered"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->Registered:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "Unregistered"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->Unregistered:Lcom/widevine/drmapi/android/WVEvent;

    new-instance v0, Lcom/widevine/drmapi/android/WVEvent;

    const-string v1, "SecureStore"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->SecureStore:Lcom/widevine/drmapi/android/WVEvent;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/widevine/drmapi/android/WVEvent;

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->NullEvent:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->LicenseReceived:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->LicenseRequestFailed:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Playing:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->PlayFailed:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->Stopped:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->QueryStatus:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->EndOfList:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->Initialized:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->Terminated:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->LicenseRemoved:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->Registered:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->Unregistered:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->SecureStore:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/widevine/drmapi/android/WVEvent;->$VALUES:[Lcom/widevine/drmapi/android/WVEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVEvent;
    .registers 2

    const-class v0, Lcom/widevine/drmapi/android/WVEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/widevine/drmapi/android/WVEvent;

    return-object v0
.end method

.method public static values()[Lcom/widevine/drmapi/android/WVEvent;
    .registers 1

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->$VALUES:[Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v0}, [Lcom/widevine/drmapi/android/WVEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/widevine/drmapi/android/WVEvent;

    return-object v0
.end method
