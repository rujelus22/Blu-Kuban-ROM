.class public final enum Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

.field public static final enum GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

.field public static final enum INVALID_ACTION_TOKEN:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

.field public static final enum SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;",
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

    .line 1650
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 1651
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    const-string v1, "INVALID_ACTION_TOKEN"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->INVALID_ACTION_TOKEN:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 1652
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    const-string v1, "GENERAL_ERROR"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 1648
    new-array v0, v5, [Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->INVALID_ACTION_TOKEN:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 1676
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1685
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1686
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->value:I

    .line 1687
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    .registers 2
    .parameter "value"

    .prologue
    .line 1663
    packed-switch p0, :pswitch_data_e

    .line 1667
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1664
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    goto :goto_4

    .line 1665
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->INVALID_ACTION_TOKEN:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    goto :goto_4

    .line 1666
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    goto :goto_4

    .line 1663
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    .registers 2
    .parameter

    .prologue
    .line 1648
    const-class v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    .registers 1

    .prologue
    .line 1648
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1660
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->value:I

    return v0
.end method
