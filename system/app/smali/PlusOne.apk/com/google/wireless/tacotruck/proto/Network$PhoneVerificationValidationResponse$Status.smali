.class public final enum Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

.field public static final enum FAILURE:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

.field public static final enum SUCCESS:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

.field public static final enum UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;",
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

    .line 50737
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 50738
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->SUCCESS:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 50739
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->FAILURE:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 50735
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->SUCCESS:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->FAILURE:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 50763
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 50772
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50773
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->value:I

    .line 50774
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 2
    .parameter "value"

    .prologue
    .line 50750
    packed-switch p0, :pswitch_data_e

    .line 50754
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 50751
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    goto :goto_4

    .line 50752
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->SUCCESS:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    goto :goto_4

    .line 50753
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->FAILURE:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    goto :goto_4

    .line 50750
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 2
    .parameter

    .prologue
    .line 50735
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 1

    .prologue
    .line 50735
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 50747
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->value:I

    return v0
.end method
