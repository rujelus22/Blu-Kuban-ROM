.class public final enum Lcom/android/internal/telephony/DataConnection$LinkStateResult;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LinkStateResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$LinkStateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$LinkStateResult;

.field public static final enum ERR_BadDns:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

.field public static final enum LINK_Down:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

.field public static final enum LINK_Exited:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

.field public static final enum LINK_Up:Lcom/android/internal/telephony/DataConnection$LinkStateResult;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    const-string v1, "LINK_Up"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Up:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    const-string v1, "LINK_Down"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Down:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    const-string v1, "LINK_Exited"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Exited:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    const-string v1, "ERR_BadDns"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Up:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Down:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Exited:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->$VALUES:[Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    .registers 2
    .parameter "name"

    .prologue
    .line 86
    const-class v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->$VALUES:[Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$LinkStateResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 99
    const-string/jumbo v0, "unknown"

    :goto_e
    return-object v0

    .line 95
    :pswitch_f
    const-string v0, "Link Up"

    goto :goto_e

    .line 96
    :pswitch_12
    const-string v0, "Link Down"

    goto :goto_e

    .line 97
    :pswitch_15
    const-string v0, "Link Exited"

    goto :goto_e

    .line 98
    :pswitch_18
    const-string v0, "Bad DNS"

    goto :goto_e

    .line 94
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method
