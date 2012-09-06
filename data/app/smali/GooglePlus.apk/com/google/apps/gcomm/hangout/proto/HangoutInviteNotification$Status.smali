.class public final enum Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
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
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

.field public static final enum ACCEPTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

.field public static final enum IGNORED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

.field public static final enum RINGING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

.field public static final enum TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;",
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

    .line 25
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    const-string v1, "RINGING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->RINGING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 26
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->ACCEPTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 27
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    const-string v1, "IGNORED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->IGNORED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 28
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->RINGING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->ACCEPTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->IGNORED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    .line 54
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status$1;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status$1;-><init>()V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->value:I

    .line 65
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    .registers 2
    .parameter "value"

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_12

    .line 45
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 41
    :pswitch_5
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->RINGING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    goto :goto_4

    .line 42
    :pswitch_8
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->ACCEPTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    goto :goto_4

    .line 43
    :pswitch_b
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->IGNORED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    goto :goto_4

    .line 44
    :pswitch_e
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->TIMEOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    goto :goto_4

    .line 40
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    invoke-virtual {v0}, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Status;->value:I

    return v0
.end method
