.class public final Lcom/sdgtl/mediahub/spr/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/a;->a:Z

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/a;->c:Z

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/a;->d:Z

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/a;->e:Z

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->a:Z

    if-eqz v0, :cond_1f

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/a;->c:Z

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/a;->d:Z

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    :goto_16
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->n()Z

    move-result v0

    if-nez v0, :cond_1e

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    :cond_1e
    return-void

    :cond_1f
    sput-boolean v2, Lcom/sdgtl/mediahub/spr/a;->c:Z

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/a;->d:Z

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    goto :goto_16
.end method
