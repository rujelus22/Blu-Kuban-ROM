.class public final enum Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
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
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

.field public static final enum ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

.field public static final enum IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

.field public static final enum SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 27495
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 27496
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 27497
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 27493
    new-array v0, v5, [Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 27521
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 27530
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27531
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->value:I

    .line 27532
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    .registers 2
    .parameter "value"

    .prologue
    .line 27508
    packed-switch p0, :pswitch_data_e

    .line 27512
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 27509
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    goto :goto_4

    .line 27510
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    goto :goto_4

    .line 27511
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    goto :goto_4

    .line 27508
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    .registers 2
    .parameter "name"

    .prologue
    .line 27493
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    .registers 1

    .prologue
    .line 27493
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 27505
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->value:I

    return v0
.end method
