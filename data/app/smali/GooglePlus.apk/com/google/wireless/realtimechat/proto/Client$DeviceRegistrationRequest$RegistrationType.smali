.class public final enum Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegistrationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

.field public static final enum REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

.field public static final enum UNREGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27539
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 27540
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    const-string v1, "UNREGISTER"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->UNREGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 27537
    new-array v0, v4, [Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->UNREGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 27562
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 27571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27572
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->value:I

    .line 27573
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    .registers 2
    .parameter "value"

    .prologue
    .line 27550
    packed-switch p0, :pswitch_data_c

    .line 27553
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 27551
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    goto :goto_4

    .line 27552
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->UNREGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    goto :goto_4

    .line 27550
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    .registers 2
    .parameter "name"

    .prologue
    .line 27537
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    .registers 1

    .prologue
    .line 27537
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 27547
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->value:I

    return v0
.end method
