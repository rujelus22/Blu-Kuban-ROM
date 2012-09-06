.class public final enum Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

.field public static final enum CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

.field public static final enum LEFT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

.field public static final enum RIGHT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;",
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

    .line 32024
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 32025
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->LEFT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 32026
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->RIGHT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 32022
    new-array v0, v5, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->LEFT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->RIGHT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 32050
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 32059
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32060
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->value:I

    .line 32061
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    .registers 2
    .parameter "value"

    .prologue
    .line 32037
    packed-switch p0, :pswitch_data_e

    .line 32041
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 32038
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    goto :goto_4

    .line 32039
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->LEFT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    goto :goto_4

    .line 32040
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->RIGHT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    goto :goto_4

    .line 32037
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    .registers 2
    .parameter "name"

    .prologue
    .line 32022
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    .registers 1

    .prologue
    .line 32022
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 32034
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->value:I

    return v0
.end method
