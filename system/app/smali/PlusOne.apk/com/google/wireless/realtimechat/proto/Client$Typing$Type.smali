.class public final enum Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Typing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

.field public static final enum CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

.field public static final enum PAUSE:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

.field public static final enum START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

.field public static final enum UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;",
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

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8997
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8998
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    const-string v1, "START"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8999
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->PAUSE:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9000
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8995
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->PAUSE:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9026
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 9035
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9036
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->value:I

    .line 9037
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 9012
    packed-switch p0, :pswitch_data_12

    .line 9017
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 9013
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_4

    .line 9014
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_4

    .line 9015
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->PAUSE:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_4

    .line 9016
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_4

    .line 9012
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2
    .parameter

    .prologue
    .line 8995
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 1

    .prologue
    .line 8995
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 9009
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->value:I

    return v0
.end method
