.class public final enum Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConversationVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

.field public static final enum PRIVATE:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

.field public static final enum PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;",
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

    .line 972
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 973
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PRIVATE:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 970
    new-array v0, v4, [Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PRIVATE:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 995
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1004
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1005
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->value:I

    .line 1006
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2
    .parameter "value"

    .prologue
    .line 983
    packed-switch p0, :pswitch_data_c

    .line 986
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 984
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    goto :goto_4

    .line 985
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PRIVATE:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    goto :goto_4

    .line 983
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2
    .parameter "name"

    .prologue
    .line 970
    const-class v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 1

    .prologue
    .line 970
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 980
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->value:I

    return v0
.end method
