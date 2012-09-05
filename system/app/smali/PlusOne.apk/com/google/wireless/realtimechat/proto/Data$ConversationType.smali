.class public final enum Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConversationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

.field public static final enum GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

.field public static final enum ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationType;",
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

    .line 13
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    const-string v1, "ONE_TO_ONE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 14
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 11
    new-array v0, v4, [Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 36
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->value:I

    .line 47
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2
    .parameter "value"

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_c

    .line 27
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 25
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    goto :goto_4

    .line 26
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    goto :goto_4

    .line 24
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->value:I

    return v0
.end method
