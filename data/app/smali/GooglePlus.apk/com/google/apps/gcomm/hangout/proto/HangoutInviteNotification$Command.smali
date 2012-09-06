.class public final enum Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
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
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

.field public static final enum DISMISSED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

.field public static final enum RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    const-string v1, "RING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 73
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    const-string v1, "DISMISSED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->DISMISSED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->DISMISSED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    .line 95
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command$1;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command$1;-><init>()V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->value:I

    .line 106
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    .registers 2
    .parameter "value"

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_c

    .line 86
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 84
    :pswitch_5
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->RING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    goto :goto_4

    .line 85
    :pswitch_8
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->DISMISSED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    goto :goto_4

    .line 83
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    .registers 2
    .parameter "name"

    .prologue
    .line 70
    const-class v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    invoke-virtual {v0}, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->value:I

    return v0
.end method
