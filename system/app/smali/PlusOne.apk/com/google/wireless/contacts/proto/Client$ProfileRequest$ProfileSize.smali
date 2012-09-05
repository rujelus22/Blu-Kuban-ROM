.class public final enum Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

.field public static final enum BASIC:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

.field public static final enum FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

.field public static final enum MINI:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;",
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

    .line 5537
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5538
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->BASIC:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5539
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    const-string v1, "MINI"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->MINI:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5535
    new-array v0, v5, [Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->BASIC:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->MINI:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5563
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 5572
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5573
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->value:I

    .line 5574
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    .registers 2
    .parameter "value"

    .prologue
    .line 5550
    packed-switch p0, :pswitch_data_e

    .line 5554
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 5551
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    goto :goto_4

    .line 5552
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->BASIC:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    goto :goto_4

    .line 5553
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->MINI:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    goto :goto_4

    .line 5550
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    .registers 2
    .parameter

    .prologue
    .line 5535
    const-class v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    .registers 1

    .prologue
    .line 5535
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 5547
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->value:I

    return v0
.end method
