.class public final enum Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
.super Ljava/lang/Enum;
.source "LMTTUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LmttUpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

.field public static final enum LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

.field public static final enum LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    const-string v1, "LMTT_MUSIC_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    .line 136
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    const-string v1, "LMTT_CONTACT_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

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
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
    .registers 2
    .parameter "name"

    .prologue
    .line 134
    const-class v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-virtual {v0}, [Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTUpdate$LmttUpdateType:[I

    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 145
    const-string v0, "-1"

    :goto_d
    return-object v0

    .line 141
    :pswitch_e
    const-string v0, "1/music"

    goto :goto_d

    .line 143
    :pswitch_11
    const-string v0, "2/contact"

    goto :goto_d

    .line 139
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method
