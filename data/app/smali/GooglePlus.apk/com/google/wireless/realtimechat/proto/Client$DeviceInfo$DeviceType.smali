.class public final enum Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

.field public static final enum ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

.field public static final enum IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

.field public static final enum SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;",
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

    .line 37899
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 37900
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 37901
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 37897
    new-array v0, v5, [Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 37925
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 37934
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37935
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->value:I

    .line 37936
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    .registers 2
    .parameter "value"

    .prologue
    .line 37912
    packed-switch p0, :pswitch_data_e

    .line 37916
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 37913
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    goto :goto_4

    .line 37914
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->IOS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    goto :goto_4

    .line 37915
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->SMS:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    goto :goto_4

    .line 37912
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    .registers 2
    .parameter "name"

    .prologue
    .line 37897
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    .registers 1

    .prologue
    .line 37897
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 37909
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->value:I

    return v0
.end method
