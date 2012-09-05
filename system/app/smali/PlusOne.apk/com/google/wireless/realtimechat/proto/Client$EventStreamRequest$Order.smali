.class public final enum Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

.field public static final enum EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

.field public static final enum LATEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;",
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

    .line 25022
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    const-string v1, "EARLIEST"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25023
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    const-string v1, "LATEST"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->LATEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25020
    new-array v0, v4, [Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->LATEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25045
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 25054
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25055
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->value:I

    .line 25056
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    .registers 2
    .parameter "value"

    .prologue
    .line 25033
    packed-switch p0, :pswitch_data_c

    .line 25036
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 25034
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    goto :goto_4

    .line 25035
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->LATEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    goto :goto_4

    .line 25033
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    .registers 2
    .parameter

    .prologue
    .line 25020
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    .registers 1

    .prologue
    .line 25020
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 25030
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->value:I

    return v0
.end method
