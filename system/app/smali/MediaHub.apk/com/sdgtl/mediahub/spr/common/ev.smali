.class public final Lcom/sdgtl/mediahub/spr/common/ev;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/ArrayList;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sdgtl/mediahub/spr/common/ev;->b:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/sdgtl/mediahub/spr/common/ev;->c:I

    sput-object v1, Lcom/sdgtl/mediahub/spr/common/ev;->d:Ljava/lang/String;

    sput-object v1, Lcom/sdgtl/mediahub/spr/common/ev;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/ev;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/ev;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/sdgtl/mediahub/spr/common/ev;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/ev;->b:Ljava/lang/String;

    return-void
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/common/ev;->c:I

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/ev;->d:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/ev;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/ev;->e:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/ev;->e:Ljava/lang/String;

    return-object v0
.end method
