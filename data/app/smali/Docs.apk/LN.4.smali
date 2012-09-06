.class public final LLN;
.super LMa;
.source "CachedSearchResultTable.java"


# static fields
.field private static final a:LLN;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, LLN;

    invoke-direct {v0}, LLN;-><init>()V

    sput-object v0, LLN;->a:LLN;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, LMa;-><init>()V

    .line 25
    return-void
.end method

.method public static a()LLN;
    .registers 1

    .prologue
    .line 28
    sget-object v0, LLN;->a:LLN;

    return-object v0
.end method

.method static synthetic b()LLN;
    .registers 1

    .prologue
    .line 20
    sget-object v0, LLN;->a:LLN;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "CachedSearchResult"

    return-object v0
.end method

.method a()[LLO;
    .registers 2

    .prologue
    .line 38
    invoke-static {}, LLO;->values()[LLO;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, LLN;->a()[LLO;

    move-result-object v0

    return-object v0
.end method
