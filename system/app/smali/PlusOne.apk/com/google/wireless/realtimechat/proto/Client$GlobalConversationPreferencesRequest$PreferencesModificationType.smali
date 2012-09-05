.class public final enum Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferencesModificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

.field public static final enum ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

.field public static final enum REMOVE:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;",
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21042
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21043
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->REMOVE:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21040
    new-array v0, v4, [Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->REMOVE:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21065
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 21074
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21075
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->value:I

    .line 21076
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2
    .parameter "value"

    .prologue
    .line 21053
    packed-switch p0, :pswitch_data_c

    .line 21056
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 21054
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    goto :goto_4

    .line 21055
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->REMOVE:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    goto :goto_4

    .line 21053
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2
    .parameter

    .prologue
    .line 21040
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 1

    .prologue
    .line 21040
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 21050
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->value:I

    return v0
.end method
