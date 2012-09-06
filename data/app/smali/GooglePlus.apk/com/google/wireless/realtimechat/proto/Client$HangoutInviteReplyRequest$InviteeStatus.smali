.class public final enum Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InviteeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

.field public static final enum ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

.field public static final enum CONNECTING:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

.field public static final enum DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

.field public static final enum UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;",
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

    .line 44175
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44176
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->CONNECTING:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44177
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44178
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    const-string v1, "DECLINED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44173
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->CONNECTING:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44204
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 44213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44214
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->value:I

    .line 44215
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 44190
    packed-switch p0, :pswitch_data_12

    .line 44195
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 44191
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    goto :goto_4

    .line 44192
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->CONNECTING:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    goto :goto_4

    .line 44193
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    goto :goto_4

    .line 44194
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    goto :goto_4

    .line 44190
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 44173
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    .registers 1

    .prologue
    .line 44173
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 44187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->value:I

    return v0
.end method
