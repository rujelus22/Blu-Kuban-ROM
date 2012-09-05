.class public final enum Lcom/widevine/drm/internal/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/widevine/drm/internal/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/widevine/drm/internal/q;

.field public static final enum b:Lcom/widevine/drm/internal/q;

.field private static enum c:Lcom/widevine/drm/internal/q;

.field private static enum d:Lcom/widevine/drm/internal/q;

.field private static enum e:Lcom/widevine/drm/internal/q;

.field private static enum f:Lcom/widevine/drm/internal/q;

.field private static enum g:Lcom/widevine/drm/internal/q;

.field private static final synthetic h:[Lcom/widevine/drm/internal/q;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/widevine/drm/internal/q;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/widevine/drm/internal/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/q;->c:Lcom/widevine/drm/internal/q;

    new-instance v0, Lcom/widevine/drm/internal/q;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/widevine/drm/internal/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/q;->a:Lcom/widevine/drm/internal/q;

    new-instance v0, Lcom/widevine/drm/internal/q;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v5}, Lcom/widevine/drm/internal/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/q;->b:Lcom/widevine/drm/internal/q;

    new-instance v0, Lcom/widevine/drm/internal/q;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/widevine/drm/internal/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/q;->d:Lcom/widevine/drm/internal/q;

    new-instance v0, Lcom/widevine/drm/internal/q;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v7}, Lcom/widevine/drm/internal/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/q;->e:Lcom/widevine/drm/internal/q;

    new-instance v0, Lcom/widevine/drm/internal/q;

    const-string v1, "VERBOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/q;->f:Lcom/widevine/drm/internal/q;

    new-instance v0, Lcom/widevine/drm/internal/q;

    const-string v1, "ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drm/internal/q;->g:Lcom/widevine/drm/internal/q;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/widevine/drm/internal/q;

    sget-object v1, Lcom/widevine/drm/internal/q;->c:Lcom/widevine/drm/internal/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/widevine/drm/internal/q;->a:Lcom/widevine/drm/internal/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/widevine/drm/internal/q;->b:Lcom/widevine/drm/internal/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/widevine/drm/internal/q;->d:Lcom/widevine/drm/internal/q;

    aput-object v1, v0, v6

    sget-object v1, Lcom/widevine/drm/internal/q;->e:Lcom/widevine/drm/internal/q;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/widevine/drm/internal/q;->f:Lcom/widevine/drm/internal/q;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/widevine/drm/internal/q;->g:Lcom/widevine/drm/internal/q;

    aput-object v2, v0, v1

    sput-object v0, Lcom/widevine/drm/internal/q;->h:[Lcom/widevine/drm/internal/q;

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

.method public static valueOf(Ljava/lang/String;)Lcom/widevine/drm/internal/q;
    .registers 2

    const-class v0, Lcom/widevine/drm/internal/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/widevine/drm/internal/q;

    return-object v0
.end method

.method public static values()[Lcom/widevine/drm/internal/q;
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/q;->h:[Lcom/widevine/drm/internal/q;

    invoke-virtual {v0}, [Lcom/widevine/drm/internal/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/widevine/drm/internal/q;

    return-object v0
.end method
