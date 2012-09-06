.class public final enum Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Receipt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

.field public static final enum ACKNOWLEDGED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

.field public static final enum DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

.field public static final enum READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

.field public static final enum UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;",
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

    .line 10885
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 10886
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    const-string v1, "ACKNOWLEDGED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ACKNOWLEDGED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 10887
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    const-string v1, "DELIVERED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 10888
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    const-string v1, "READ"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 10883
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ACKNOWLEDGED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 10914
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 10923
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10924
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->value:I

    .line 10925
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 10900
    packed-switch p0, :pswitch_data_12

    .line 10905
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 10901
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    goto :goto_4

    .line 10902
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ACKNOWLEDGED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    goto :goto_4

    .line 10903
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    goto :goto_4

    .line 10904
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    goto :goto_4

    .line 10900
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 10883
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 1

    .prologue
    .line 10883
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 10897
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->value:I

    return v0
.end method
