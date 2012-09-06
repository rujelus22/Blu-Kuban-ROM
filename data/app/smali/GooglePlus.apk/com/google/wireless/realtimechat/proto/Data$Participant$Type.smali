.class public final enum Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

.field public static final enum ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

.field public static final enum INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

.field public static final enum IPHONE:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

.field public static final enum SMS:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

.field public static final enum WEB:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 206
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    const-string v1, "INVITED"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 207
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->SMS:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 208
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 209
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    const-string v1, "IPHONE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->IPHONE:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 210
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    const-string v1, "WEB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->WEB:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 204
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->SMS:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->IPHONE:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->WEB:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 238
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->value:I

    .line 249
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 223
    packed-switch p0, :pswitch_data_14

    .line 229
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 224
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_4

    .line 225
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->SMS:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_4

    .line 226
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_4

    .line 227
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->IPHONE:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_4

    .line 228
    :pswitch_11
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->WEB:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_4

    .line 223
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 204
    const-class v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    .registers 1

    .prologue
    .line 204
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->value:I

    return v0
.end method
