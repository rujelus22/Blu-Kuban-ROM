.class public final enum Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

.field public static final enum FOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

.field public static final enum UNFOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

.field public static final enum UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;",
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7349
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7350
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    const-string v1, "FOCUS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->FOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7351
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    const-string v1, "UNFOCUS"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNFOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7347
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->FOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNFOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7375
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 7384
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7385
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->value:I

    .line 7386
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 7362
    packed-switch p0, :pswitch_data_e

    .line 7366
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 7363
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    goto :goto_4

    .line 7364
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->FOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    goto :goto_4

    .line 7365
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNFOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    goto :goto_4

    .line 7362
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    .registers 2
    .parameter

    .prologue
    .line 7347
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    .registers 1

    .prologue
    .line 7347
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 7359
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->value:I

    return v0
.end method
