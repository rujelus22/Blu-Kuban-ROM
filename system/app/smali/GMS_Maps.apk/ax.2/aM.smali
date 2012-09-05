.class Lax/aM;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lax/aM;


# instance fields
.field private final b:Lax/aL;

.field private final c:Lax/aL;

.field private final d:Lax/aL;

.field private final e:Lax/aL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lax/aM;

    invoke-direct {v0}, Lax/aM;-><init>()V

    sput-object v0, Lax/aM;->a:Lax/aM;

    return-void
.end method

.method private constructor <init>()V
    .registers 14

    const v12, 0x7f020271

    const v7, 0x7f020217

    const v11, 0x7f020215

    const v10, 0x7f0201d4

    const-wide/16 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lax/aL;

    const-wide/16 v1, 0x1

    const/16 v3, 0x30e

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f020216

    sget-object v9, Lax/aN;->b:Lax/aN;

    move v8, v7

    invoke-direct/range {v0 .. v9}, Lax/aL;-><init>(JLjava/lang/String;JIIILax/aN;)V

    iput-object v0, p0, Lax/aM;->b:Lax/aL;

    new-instance v0, Lax/aL;

    const-wide/16 v1, 0x2

    const/16 v3, 0x94

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0201d3

    sget-object v9, Lax/aN;->b:Lax/aN;

    move v7, v10

    move v8, v10

    invoke-direct/range {v0 .. v9}, Lax/aL;-><init>(JLjava/lang/String;JIIILax/aN;)V

    iput-object v0, p0, Lax/aM;->c:Lax/aL;

    new-instance v0, Lax/aL;

    const-wide/16 v1, 0x1c

    const/16 v3, 0x31e

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f020214

    sget-object v9, Lax/aN;->a:Lax/aN;

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v9}, Lax/aL;-><init>(JLjava/lang/String;JIIILax/aN;)V

    iput-object v0, p0, Lax/aM;->d:Lax/aL;

    new-instance v0, Lax/aL;

    const-wide/16 v1, 0x1f

    const/16 v3, 0x30f

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f020272

    sget-object v9, Lax/aN;->a:Lax/aN;

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v9}, Lax/aL;-><init>(JLjava/lang/String;JIIILax/aN;)V

    iput-object v0, p0, Lax/aM;->e:Lax/aL;

    return-void
.end method

.method static a()Lax/aM;
    .registers 1

    sget-object v0, Lax/aM;->a:Lax/aM;

    return-object v0
.end method


# virtual methods
.method b()Lax/aL;
    .registers 2

    iget-object v0, p0, Lax/aM;->b:Lax/aL;

    return-object v0
.end method

.method c()Lax/aL;
    .registers 2

    iget-object v0, p0, Lax/aM;->c:Lax/aL;

    return-object v0
.end method
