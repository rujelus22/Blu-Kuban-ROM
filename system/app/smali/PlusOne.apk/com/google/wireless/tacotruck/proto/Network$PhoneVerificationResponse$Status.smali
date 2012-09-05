.class public final enum Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

.field public static final enum ALREADY_VERIFIED:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

.field public static final enum ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

.field public static final enum FATAL_ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

.field public static final enum SMS_SENT:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

.field public static final enum UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49799
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 49800
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    const-string v1, "SMS_SENT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->SMS_SENT:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 49801
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    const-string v1, "ALREADY_VERIFIED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->ALREADY_VERIFIED:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 49802
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    const-string v1, "FATAL_ERROR"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->FATAL_ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 49803
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 49797
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->SMS_SENT:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->ALREADY_VERIFIED:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->FATAL_ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 49831
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 49840
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49841
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->value:I

    .line 49842
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    .registers 2
    .parameter "value"

    .prologue
    .line 49816
    packed-switch p0, :pswitch_data_14

    .line 49822
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 49817
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    goto :goto_4

    .line 49818
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->SMS_SENT:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    goto :goto_4

    .line 49819
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->ALREADY_VERIFIED:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    goto :goto_4

    .line 49820
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->FATAL_ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    goto :goto_4

    .line 49821
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->ERROR:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    goto :goto_4

    .line 49816
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    .registers 2
    .parameter

    .prologue
    .line 49797
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    .registers 1

    .prologue
    .line 49797
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 49813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->value:I

    return v0
.end method
