.class public final Lcom/google/common/base/x;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/base/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/p;->a(Ljava/lang/String;)Lcom/google/common/base/p;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/x;->a:Lcom/google/common/base/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/p;
    .registers 1

    sget-object v0, Lcom/google/common/base/x;->a:Lcom/google/common/base/p;

    return-object v0
.end method

.method public static a(Lcom/google/common/base/w;Lcom/google/common/base/w;)Lcom/google/common/base/w;
    .registers 5

    new-instance v2, Lcom/google/common/base/z;

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/w;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/w;

    invoke-static {v0, v1}, Lcom/google/common/base/x;->b(Lcom/google/common/base/w;Lcom/google/common/base/w;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/common/base/z;-><init>(Ljava/util/List;Lcom/google/common/base/y;)V

    return-object v2
.end method

.method private static b(Lcom/google/common/base/w;Lcom/google/common/base/w;)Ljava/util/List;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
