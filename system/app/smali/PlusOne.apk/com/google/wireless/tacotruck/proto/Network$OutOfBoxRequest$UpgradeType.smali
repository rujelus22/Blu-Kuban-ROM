.class public final enum Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpgradeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

.field public static final enum GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

.field public static final enum PLUSONE:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;",
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

    .line 37365
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    const-string v1, "GOOGLE_PLUS"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37366
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    const-string v1, "PLUSONE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->PLUSONE:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37363
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->PLUSONE:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 37388
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 37397
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37398
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->value:I

    .line 37399
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    .registers 2
    .parameter "value"

    .prologue
    .line 37376
    packed-switch p0, :pswitch_data_c

    .line 37379
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 37377
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    goto :goto_4

    .line 37378
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->PLUSONE:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    goto :goto_4

    .line 37376
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    .registers 2
    .parameter

    .prologue
    .line 37363
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    .registers 1

    .prologue
    .line 37363
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 37373
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->value:I

    return v0
.end method
