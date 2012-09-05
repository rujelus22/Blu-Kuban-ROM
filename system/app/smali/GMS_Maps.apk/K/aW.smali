.class LK/aW;
.super LK/bz;


# static fields
.field static final a:LK/aW;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LK/aW;

    invoke-direct {v0}, LK/aW;-><init>()V

    sput-object v0, LK/aW;->a:LK/aW;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-static {}, LK/bp;->e()LK/bp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, LK/bz;-><init>(LK/bp;ILjava/util/Comparator;)V

    return-void
.end method
