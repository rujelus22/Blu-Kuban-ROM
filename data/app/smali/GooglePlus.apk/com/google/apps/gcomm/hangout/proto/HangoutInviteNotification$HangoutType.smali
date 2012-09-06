.class public final enum Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
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
    name = "HangoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

.field public static final enum REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

.field public static final enum UNSUPPORTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;",
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

    .line 154
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 155
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->UNSUPPORTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->UNSUPPORTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    .line 177
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType$1;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType$1;-><init>()V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->value:I

    .line 188
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    .registers 2
    .parameter "value"

    .prologue
    .line 165
    packed-switch p0, :pswitch_data_c

    .line 168
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 166
    :pswitch_5
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    goto :goto_4

    .line 167
    :pswitch_8
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->UNSUPPORTED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    goto :goto_4

    .line 165
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    .registers 2
    .parameter "name"

    .prologue
    .line 152
    const-class v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    .registers 1

    .prologue
    .line 152
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    invoke-virtual {v0}, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->value:I

    return v0
.end method
