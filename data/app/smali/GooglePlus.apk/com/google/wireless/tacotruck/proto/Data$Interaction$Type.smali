.class public final enum Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Interaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

.field public static final enum INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

.field public static final enum INCOMING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

.field public static final enum OUTGOING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

.field public static final enum OUTGOING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 24557
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    const-string v1, "INCOMING_CALL"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 24558
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    const-string v1, "OUTGOING_CALL"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->OUTGOING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 24559
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    const-string v1, "INCOMING_SMS"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 24560
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    const-string v1, "OUTGOING_SMS"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->OUTGOING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 24555
    new-array v0, v6, [Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->OUTGOING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->OUTGOING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 24586
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 24595
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24596
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->value:I

    .line 24597
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 24572
    packed-switch p0, :pswitch_data_12

    .line 24577
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 24573
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    goto :goto_4

    .line 24574
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->OUTGOING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    goto :goto_4

    .line 24575
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    goto :goto_4

    .line 24576
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->OUTGOING_SMS:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    goto :goto_4

    .line 24572
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 24555
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    .registers 1

    .prologue
    .line 24555
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 24569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->value:I

    return v0
.end method
