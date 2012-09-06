.class public LMw;
.super LMa;
.source "PartialFeedTable.java"


# static fields
.field private static final a:LMw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, LMw;

    invoke-direct {v0}, LMw;-><init>()V

    sput-object v0, LMw;->a:LMw;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, LMa;-><init>()V

    .line 20
    return-void
.end method

.method public static a()LMw;
    .registers 1

    .prologue
    .line 23
    sget-object v0, LMw;->a:LMw;

    return-object v0
.end method

.method static synthetic b()LMw;
    .registers 1

    .prologue
    .line 16
    sget-object v0, LMw;->a:LMw;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const-string v0, "PartialFeed"

    return-object v0
.end method

.method a()[LMx;
    .registers 2

    .prologue
    .line 33
    invoke-static {}, LMx;->values()[LMx;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, LMw;->a()[LMx;

    move-result-object v0

    return-object v0
.end method
