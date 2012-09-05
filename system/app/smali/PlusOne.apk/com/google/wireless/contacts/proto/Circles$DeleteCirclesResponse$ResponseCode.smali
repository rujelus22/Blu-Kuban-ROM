.class public final enum Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
.super Ljava/lang/Enum;
.source "Circles.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

.field public static final enum FAILURE_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

.field public static final enum GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

.field public static final enum SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;",
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

    .line 2193
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2194
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    const-string v1, "GENERAL_ERROR"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2195
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    const-string v1, "FAILURE_CIRCLES"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->FAILURE_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2191
    new-array v0, v5, [Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->FAILURE_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->$VALUES:[Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2219
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2229
    iput p4, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->value:I

    .line 2230
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    .registers 2
    .parameter "value"

    .prologue
    .line 2206
    packed-switch p0, :pswitch_data_e

    .line 2210
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2207
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    goto :goto_4

    .line 2208
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->GENERAL_ERROR:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    goto :goto_4

    .line 2209
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->FAILURE_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    goto :goto_4

    .line 2206
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    .registers 2
    .parameter

    .prologue
    .line 2191
    const-class v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    .registers 1

    .prologue
    .line 2191
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->$VALUES:[Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2203
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->value:I

    return v0
.end method
