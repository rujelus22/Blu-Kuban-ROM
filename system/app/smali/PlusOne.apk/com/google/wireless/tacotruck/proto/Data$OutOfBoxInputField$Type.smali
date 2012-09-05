.class public final enum Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field public static final enum BIRTHDAY_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field public static final enum CHECKBOX:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field public static final enum DROPDOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field public static final enum HIDDEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field public static final enum RADIO_BUTTON:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field public static final enum RADIO_GROUP:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field public static final enum TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 30260
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const-string v1, "TEXT_INPUT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30261
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const-string v1, "CHECKBOX"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->CHECKBOX:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30262
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const-string v1, "DROPDOWN"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->DROPDOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30263
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const-string v1, "BIRTHDAY_INPUT"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->BIRTHDAY_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30264
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->HIDDEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30265
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const-string v1, "RADIO_GROUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->RADIO_GROUP:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30266
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const-string v1, "RADIO_BUTTON"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->RADIO_BUTTON:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30258
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->CHECKBOX:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->DROPDOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->BIRTHDAY_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->HIDDEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->RADIO_GROUP:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->RADIO_BUTTON:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    .line 30298
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 30307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30308
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->value:I

    .line 30309
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 30281
    packed-switch p0, :pswitch_data_1a

    .line 30289
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 30282
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_4

    .line 30283
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->CHECKBOX:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_4

    .line 30284
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->DROPDOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_4

    .line 30285
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->BIRTHDAY_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_4

    .line 30286
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->HIDDEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_4

    .line 30287
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->RADIO_GROUP:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_4

    .line 30288
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->RADIO_BUTTON:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    goto :goto_4

    .line 30281
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 2
    .parameter

    .prologue
    .line 30258
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;
    .registers 1

    .prologue
    .line 30258
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 30278
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->value:I

    return v0
.end method
