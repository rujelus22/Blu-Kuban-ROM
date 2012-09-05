.class public final enum Lcom/android/internal/telephony/DataConnection$DataState;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$DataState;

.field public static final enum ACTIVATING:Lcom/android/internal/telephony/DataConnection$DataState;

.field public static final enum ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$DataState;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/DataConnection$DataState;

.field public static final enum FAILED:Lcom/android/internal/telephony/DataConnection$DataState;

.field public static final enum INACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DataState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->INACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DataState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->ACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DataState;

    const-string v1, "ACTIVATING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$DataState;

    .line 156
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DataState;

    const-string v1, "ACTIVATING_PPP"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnection$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$DataState;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DataState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnection$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->DISCONNECTING:Lcom/android/internal/telephony/DataConnection$DataState;

    .line 158
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DataState;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->FAILED:Lcom/android/internal/telephony/DataConnection$DataState;

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$DataState;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$DataState;->INACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$DataState;->ACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$DataState;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$DataState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnection$DataState;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$DataState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnection$DataState;->DISCONNECTING:Lcom/android/internal/telephony/DataConnection$DataState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnection$DataState;->FAILED:Lcom/android/internal/telephony/DataConnection$DataState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->$VALUES:[Lcom/android/internal/telephony/DataConnection$DataState;

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
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$DataState;
    .registers 2
    .parameter "name"

    .prologue
    .line 152
    const-class v0, Lcom/android/internal/telephony/DataConnection$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection$DataState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$DataState;
    .registers 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->$VALUES:[Lcom/android/internal/telephony/DataConnection$DataState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$DataState;

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    .prologue
    .line 178
    sget-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->ACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isInactive()Z
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/android/internal/telephony/DataConnection$DataState;->INACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 173
    const-string v0, "inactive"

    :goto_d
    return-object v0

    .line 163
    :pswitch_e
    const-string v0, "active"

    goto :goto_d

    .line 165
    :pswitch_11
    const-string/jumbo v0, "setting up"

    goto :goto_d

    .line 167
    :pswitch_15
    const-string v0, "activing ppp"

    goto :goto_d

    .line 169
    :pswitch_18
    const-string v0, "disconnecting"

    goto :goto_d

    .line 171
    :pswitch_1b
    const-string v0, "failed"

    goto :goto_d

    .line 161
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
