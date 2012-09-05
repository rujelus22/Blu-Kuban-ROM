.class public final enum Lcom/widevine/drm/internal/z;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/widevine/drm/internal/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/widevine/drm/internal/z;

.field public static final enum b:Lcom/widevine/drm/internal/z;

.field private static final synthetic c:[Lcom/widevine/drm/internal/z;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/widevine/drm/internal/z;

    const-string v1, "CRC_32"

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/z;->a:Lcom/widevine/drm/internal/z;

    new-instance v0, Lcom/widevine/drm/internal/z;

    const-string v1, "SHA_256"

    invoke-direct {v0, v1, v3}, Lcom/widevine/drm/internal/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/z;->b:Lcom/widevine/drm/internal/z;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/widevine/drm/internal/z;

    sget-object v1, Lcom/widevine/drm/internal/z;->a:Lcom/widevine/drm/internal/z;

    aput-object v1, v0, v2

    sget-object v1, Lcom/widevine/drm/internal/z;->b:Lcom/widevine/drm/internal/z;

    aput-object v1, v0, v3

    sput-object v0, Lcom/widevine/drm/internal/z;->c:[Lcom/widevine/drm/internal/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/widevine/drm/internal/z;
    .registers 2

    const-class v0, Lcom/widevine/drm/internal/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/widevine/drm/internal/z;

    return-object v0
.end method

.method public static values()[Lcom/widevine/drm/internal/z;
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/z;->c:[Lcom/widevine/drm/internal/z;

    invoke-virtual {v0}, [Lcom/widevine/drm/internal/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/widevine/drm/internal/z;

    return-object v0
.end method
