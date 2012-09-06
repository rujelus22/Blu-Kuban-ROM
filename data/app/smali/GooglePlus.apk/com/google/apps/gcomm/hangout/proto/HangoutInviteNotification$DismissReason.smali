.class public final enum Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
.super Ljava/lang/Enum;
.source "HangoutInviteNotification.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DismissReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field public static final enum INVITER_CANCELLED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field public static final enum INVITE_TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field public static final enum UNKNOWN:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field public static final enum USER_KICKED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field public static final enum USER_RESPONDED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;",
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

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->UNKNOWN:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 196
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    const-string v1, "USER_RESPONDED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->USER_RESPONDED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 197
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    const-string v1, "USER_KICKED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->USER_KICKED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 198
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    const-string v1, "INVITER_CANCELLED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->INVITER_CANCELLED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 199
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    const-string v1, "INVITE_TIMEOUT"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->INVITE_TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 193
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->UNKNOWN:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->USER_RESPONDED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->USER_KICKED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->INVITER_CANCELLED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->INVITE_TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    .line 227
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason$1;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason$1;-><init>()V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput p4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->value:I

    .line 238
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
    .registers 2
    .parameter "value"

    .prologue
    .line 212
    packed-switch p0, :pswitch_data_14

    .line 218
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 213
    :pswitch_5
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->UNKNOWN:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    goto :goto_4

    .line 214
    :pswitch_8
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->USER_RESPONDED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    goto :goto_4

    .line 215
    :pswitch_b
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->USER_KICKED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    goto :goto_4

    .line 216
    :pswitch_e
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->INVITER_CANCELLED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    goto :goto_4

    .line 217
    :pswitch_11
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->INVITE_TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    goto :goto_4

    .line 212
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
    .registers 2
    .parameter "name"

    .prologue
    .line 193
    const-class v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    invoke-virtual {v0}, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$DismissReason;->value:I

    return v0
.end method
