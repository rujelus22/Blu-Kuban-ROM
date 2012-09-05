.class final enum Lcom/cooliris/media/HudLayer$ShareType;
.super Ljava/lang/Enum;
.source "HudLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/HudLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cooliris/media/HudLayer$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum MULTI_SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum SHARE_ALL:Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum SHARE_DEFAULT:Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum SHARE_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum SHARE_PLAY:Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum SHARE_PLAY_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum SHARE_SEND:Lcom/cooliris/media/HudLayer$ShareType;

.field public static final enum SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "SHARE_DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DEFAULT:Lcom/cooliris/media/HudLayer$ShareType;

    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "SHARE_ALL"

    invoke-direct {v0, v1, v4}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_ALL:Lcom/cooliris/media/HudLayer$ShareType;

    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "SHARE_SEND"

    invoke-direct {v0, v1, v5}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND:Lcom/cooliris/media/HudLayer$ShareType;

    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "SHARE_PLAY"

    invoke-direct {v0, v1, v6}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY:Lcom/cooliris/media/HudLayer$ShareType;

    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "MULTI_SHARE_SEND_DIALOG"

    invoke-direct {v0, v1, v7}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->MULTI_SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "SHARE_SEND_DIALOG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "SHARE_PLAY_DIALOG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    new-instance v0, Lcom/cooliris/media/HudLayer$ShareType;

    const-string v1, "SHARE_DIALOG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/HudLayer$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    .line 270
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/cooliris/media/HudLayer$ShareType;

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DEFAULT:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_ALL:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->MULTI_SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cooliris/media/HudLayer$ShareType;->$VALUES:[Lcom/cooliris/media/HudLayer$ShareType;

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
    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cooliris/media/HudLayer$ShareType;
    .registers 2
    .parameter

    .prologue
    .line 270
    const-class v0, Lcom/cooliris/media/HudLayer$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HudLayer$ShareType;

    return-object v0
.end method

.method public static values()[Lcom/cooliris/media/HudLayer$ShareType;
    .registers 1

    .prologue
    .line 270
    sget-object v0, Lcom/cooliris/media/HudLayer$ShareType;->$VALUES:[Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v0}, [Lcom/cooliris/media/HudLayer$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooliris/media/HudLayer$ShareType;

    return-object v0
.end method
