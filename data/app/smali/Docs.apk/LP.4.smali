.class public final LLP;
.super LMa;
.source "CachedSearchTable.java"


# static fields
.field private static final a:LLP;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, LLP;

    invoke-direct {v0}, LLP;-><init>()V

    sput-object v0, LLP;->a:LLP;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, LMa;-><init>()V

    .line 21
    return-void
.end method

.method public static a()LLP;
    .registers 1

    .prologue
    .line 24
    sget-object v0, LLP;->a:LLP;

    return-object v0
.end method

.method static synthetic b()LLP;
    .registers 1

    .prologue
    .line 17
    sget-object v0, LLP;->a:LLP;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string v0, "CachedSearch"

    return-object v0
.end method

.method a()[LLQ;
    .registers 2

    .prologue
    .line 34
    invoke-static {}, LLQ;->values()[LLQ;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, LLP;->a()[LLQ;

    move-result-object v0

    return-object v0
.end method
