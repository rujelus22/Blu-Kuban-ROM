.class public final enum Lcom/widevine/drm/internal/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/widevine/drm/internal/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/widevine/drm/internal/e;

.field public static final enum b:Lcom/widevine/drm/internal/e;

.field public static final enum c:Lcom/widevine/drm/internal/e;

.field private static final synthetic d:[Lcom/widevine/drm/internal/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/widevine/drm/internal/e;

    const-string v1, "Absent"

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/e;->a:Lcom/widevine/drm/internal/e;

    new-instance v0, Lcom/widevine/drm/internal/e;

    const-string v1, "WaitingOnKey"

    invoke-direct {v0, v1, v3}, Lcom/widevine/drm/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/e;->b:Lcom/widevine/drm/internal/e;

    new-instance v0, Lcom/widevine/drm/internal/e;

    const-string v1, "Received"

    invoke-direct {v0, v1, v4}, Lcom/widevine/drm/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/e;->c:Lcom/widevine/drm/internal/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/widevine/drm/internal/e;

    sget-object v1, Lcom/widevine/drm/internal/e;->a:Lcom/widevine/drm/internal/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/widevine/drm/internal/e;->b:Lcom/widevine/drm/internal/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/widevine/drm/internal/e;->c:Lcom/widevine/drm/internal/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/widevine/drm/internal/e;->d:[Lcom/widevine/drm/internal/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/widevine/drm/internal/e;
    .registers 2

    const-class v0, Lcom/widevine/drm/internal/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/widevine/drm/internal/e;

    return-object v0
.end method

.method public static values()[Lcom/widevine/drm/internal/e;
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/e;->d:[Lcom/widevine/drm/internal/e;

    invoke-virtual {v0}, [Lcom/widevine/drm/internal/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/widevine/drm/internal/e;

    return-object v0
.end method
