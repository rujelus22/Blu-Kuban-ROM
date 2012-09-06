.class public final enum Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TranscriptStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus; = null

.field public static final enum DELETED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus; = null

.field public static final DELETED_VALUE:I = 0x4

.field public static final enum EDITED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus; = null

.field public static final EDITED_VALUE:I = 0x5

.field public static final enum HIDDEN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus; = null

.field public static final HIDDEN_VALUE:I = 0x3

.field public static final enum NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus; = null

.field public static final NOT_RECEIVED_VALUE:I = 0x0

.field public static final enum RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus; = null

.field public static final RECEIVED_VALUE:I = 0x1

.field public static final enum VISIBLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus; = null

.field public static final VISIBLE_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17994
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    const-string v1, "NOT_RECEIVED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 17995
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 17996
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->VISIBLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 17997
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->HIDDEN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 17998
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->DELETED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 17999
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    const-string v1, "EDITED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->EDITED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 17992
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->VISIBLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->HIDDEN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->DELETED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->EDITED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 18029
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 18038
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18039
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->value:I

    .line 18040
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18026
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 18013
    packed-switch p0, :pswitch_data_18

    .line 18020
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 18014
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    goto :goto_4

    .line 18015
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    goto :goto_4

    .line 18016
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->VISIBLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    goto :goto_4

    .line 18017
    :pswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->HIDDEN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    goto :goto_4

    .line 18018
    :pswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->DELETED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    goto :goto_4

    .line 18019
    :pswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->EDITED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    goto :goto_4

    .line 18013
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 17992
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    .registers 1

    .prologue
    .line 17992
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 18010
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->value:I

    return v0
.end method
