.class public final enum Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
.super Ljava/lang/Enum;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InvitationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

.field public static final enum HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

.field public static final enum HANGOUT_SYNC:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

.field public static final enum TRANSFER:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;",
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    const-string v1, "HANGOUT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 73
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    const-string v1, "HANGOUT_SYNC"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT_SYNC:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 74
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->TRANSFER:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT_SYNC:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->TRANSFER:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 98
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType$1;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType$1;-><init>()V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->value:I

    .line 109
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    .registers 2
    .parameter "value"

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_e

    .line 89
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 86
    :pswitch_5
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    goto :goto_4

    .line 87
    :pswitch_8
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT_SYNC:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    goto :goto_4

    .line 88
    :pswitch_b
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->TRANSFER:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    goto :goto_4

    .line 85
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    .registers 2
    .parameter "name"

    .prologue
    .line 70
    const-class v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    invoke-virtual {v0}, [Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->value:I

    return v0
.end method
