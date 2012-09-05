.class public final enum Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

.field public static final enum TEMP:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7965
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    const-string v1, "TEMP"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->TEMP:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    .line 7963
    new-array v0, v3, [Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->TEMP:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    .line 7985
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 7994
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7995
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->value:I

    .line 7996
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 7974
    packed-switch p0, :pswitch_data_8

    .line 7976
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 7975
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->TEMP:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    goto :goto_4

    .line 7974
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;
    .registers 2
    .parameter

    .prologue
    .line 7963
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;
    .registers 1

    .prologue
    .line 7963
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 7971
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;->value:I

    return v0
.end method
