.class public final enum Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

.field public static final enum DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

.field public static final enum NOTIFY_ALL:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

.field public static final enum NOTIFY_ALL_SANDBAR_ONLY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

.field public static final enum NOTIFY_NONE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;",
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

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11547
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 11548
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    const-string v1, "NOTIFY_ALL"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_ALL:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 11549
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    const-string v1, "NOTIFY_ALL_SANDBAR_ONLY"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_ALL_SANDBAR_ONLY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 11550
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    const-string v1, "NOTIFY_NONE"

    invoke-direct {v0, v1, v5, v5, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_NONE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 11545
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_ALL:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_ALL_SANDBAR_ONLY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_NONE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    .line 11576
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11585
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11586
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->value:I

    .line 11587
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    .registers 2
    .parameter "value"

    .prologue
    .line 11562
    packed-switch p0, :pswitch_data_12

    .line 11567
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 11563
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->DEFAULT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    goto :goto_4

    .line 11564
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_ALL:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    goto :goto_4

    .line 11565
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_ALL_SANDBAR_ONLY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    goto :goto_4

    .line 11566
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->NOTIFY_NONE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    goto :goto_4

    .line 11562
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    .registers 2
    .parameter "name"

    .prologue
    .line 11545
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;
    .registers 1

    .prologue
    .line 11545
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 11559
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$NotificationLevel;->value:I

    return v0
.end method
