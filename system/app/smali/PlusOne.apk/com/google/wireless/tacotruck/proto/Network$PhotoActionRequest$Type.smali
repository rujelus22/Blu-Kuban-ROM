.class public final enum Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field public static final enum CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field public static final enum CREATE_TAG:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field public static final enum DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field public static final enum DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field public static final enum REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;",
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

    .line 40117
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    const-string v1, "REPORT_SPAM"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40118
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40119
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    const-string v1, "CREATE_PLUS_ONE"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40120
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    const-string v1, "DELETE_PLUS_ONE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40121
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    const-string v1, "CREATE_TAG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_TAG:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40115
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_TAG:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40149
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 40158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40159
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->value:I

    .line 40160
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 40134
    packed-switch p0, :pswitch_data_14

    .line 40140
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 40135
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_4

    .line 40136
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_4

    .line 40137
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_4

    .line 40138
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_4

    .line 40139
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_TAG:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_4

    .line 40134
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 2
    .parameter

    .prologue
    .line 40115
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 1

    .prologue
    .line 40115
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 40131
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->value:I

    return v0
.end method
