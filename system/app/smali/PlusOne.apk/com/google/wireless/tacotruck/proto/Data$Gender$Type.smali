.class public final enum Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Gender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

.field public static final enum FEMALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

.field public static final enum MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

.field public static final enum UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;",
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

    .line 27473
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27474
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->FEMALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27475
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27471
    new-array v0, v5, [Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->FEMALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 27499
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 27508
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27509
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->value:I

    .line 27510
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 27486
    packed-switch p0, :pswitch_data_e

    .line 27490
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 27487
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    goto :goto_4

    .line 27488
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->FEMALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    goto :goto_4

    .line 27489
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    goto :goto_4

    .line 27486
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    .registers 2
    .parameter

    .prologue
    .line 27471
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    .registers 1

    .prologue
    .line 27471
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 27483
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->value:I

    return v0
.end method
