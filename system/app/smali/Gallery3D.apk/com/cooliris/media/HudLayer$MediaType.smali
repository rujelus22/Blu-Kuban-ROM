.class final enum Lcom/cooliris/media/HudLayer$MediaType;
.super Ljava/lang/Enum;
.source "HudLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/HudLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cooliris/media/HudLayer$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cooliris/media/HudLayer$MediaType;

.field public static final enum MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

.field public static final enum MEDIA_MIXED:Lcom/cooliris/media/HudLayer$MediaType;

.field public static final enum MEDIA_VIDEO:Lcom/cooliris/media/HudLayer$MediaType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    new-instance v0, Lcom/cooliris/media/HudLayer$MediaType;

    const-string v1, "MEDIA_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/HudLayer$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

    new-instance v0, Lcom/cooliris/media/HudLayer$MediaType;

    const-string v1, "MEDIA_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/HudLayer$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_VIDEO:Lcom/cooliris/media/HudLayer$MediaType;

    new-instance v0, Lcom/cooliris/media/HudLayer$MediaType;

    const-string v1, "MEDIA_MIXED"

    invoke-direct {v0, v1, v4}, Lcom/cooliris/media/HudLayer$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_MIXED:Lcom/cooliris/media/HudLayer$MediaType;

    .line 274
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cooliris/media/HudLayer$MediaType;

    sget-object v1, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_IMAGE:Lcom/cooliris/media/HudLayer$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_VIDEO:Lcom/cooliris/media/HudLayer$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cooliris/media/HudLayer$MediaType;->MEDIA_MIXED:Lcom/cooliris/media/HudLayer$MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cooliris/media/HudLayer$MediaType;->$VALUES:[Lcom/cooliris/media/HudLayer$MediaType;

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
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cooliris/media/HudLayer$MediaType;
    .registers 2
    .parameter

    .prologue
    .line 274
    const-class v0, Lcom/cooliris/media/HudLayer$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HudLayer$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/cooliris/media/HudLayer$MediaType;
    .registers 1

    .prologue
    .line 274
    sget-object v0, Lcom/cooliris/media/HudLayer$MediaType;->$VALUES:[Lcom/cooliris/media/HudLayer$MediaType;

    invoke-virtual {v0}, [Lcom/cooliris/media/HudLayer$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooliris/media/HudLayer$MediaType;

    return-object v0
.end method
