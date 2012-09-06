.class public final enum Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final enum HISTORY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final HISTORY_VALUE:I = 0x3

.field public static final enum INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final INBOX_VALUE:I = 0x1

.field public static final enum MISSED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final MISSED_VALUE:I = 0xb

.field public static final enum PLACED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final PLACED_VALUE:I = 0x9

.field public static final enum RECEIVED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final RECEIVED_VALUE:I = 0xa

.field public static final enum RECORDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final RECORDED_VALUE:I = 0x8

.field public static final enum SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final SMS_VALUE:I = 0x7

.field public static final enum SPAM:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final SPAM_VALUE:I = 0x4

.field public static final enum STARRED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final STARRED_VALUE:I = 0x2

.field public static final enum TRASH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final TRASH_VALUE:I = 0x5

.field public static final enum USER_DEFINED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final USER_DEFINED_VALUE:I = 0xc

.field public static final enum VOICEMAIL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label; = null

.field public static final VOICEMAIL_VALUE:I = 0x6

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;",
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

    .line 452
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "INBOX"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 453
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "STARRED"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->STARRED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 454
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->HISTORY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 455
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "SPAM"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SPAM:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 456
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "TRASH"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->TRASH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 457
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "VOICEMAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->VOICEMAIL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 458
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "SMS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 459
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "RECORDED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECORDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 460
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "PLACED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->PLACED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 461
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "RECEIVED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECEIVED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 462
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "MISSED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->MISSED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 463
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "USER_DEFINED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->USER_DEFINED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 450
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->STARRED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->HISTORY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SPAM:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->TRASH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->VOICEMAIL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECORDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->PLACED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECEIVED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->MISSED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->USER_DEFINED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->$VALUES:[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 505
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 514
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 515
    iput p4, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->value:I

    .line 516
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    .registers 2
    .parameter "value"

    .prologue
    .line 483
    packed-switch p0, :pswitch_data_2a

    .line 496
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 484
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 485
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->STARRED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 486
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->HISTORY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 487
    :pswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SPAM:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 488
    :pswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->TRASH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 489
    :pswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->VOICEMAIL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 490
    :pswitch_17
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 491
    :pswitch_1a
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECORDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 492
    :pswitch_1d
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->PLACED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 493
    :pswitch_20
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECEIVED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 494
    :pswitch_23
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->MISSED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 495
    :pswitch_26
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->USER_DEFINED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_4

    .line 483
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    .registers 2
    .parameter "name"

    .prologue
    .line 450
    const-class v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    .registers 1

    .prologue
    .line 450
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->$VALUES:[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->value:I

    return v0
.end method
