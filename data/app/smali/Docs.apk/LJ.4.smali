.class public LLJ;
.super LMa;
.source "AppCacheTable.java"


# static fields
.field private static final a:LLJ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, LLJ;

    invoke-direct {v0}, LLJ;-><init>()V

    sput-object v0, LLJ;->a:LLJ;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, LMa;-><init>()V

    return-void
.end method

.method public static a()LLJ;
    .registers 1

    .prologue
    .line 24
    sget-object v0, LLJ;->a:LLJ;

    return-object v0
.end method

.method static synthetic b()LLJ;
    .registers 1

    .prologue
    .line 15
    sget-object v0, LLJ;->a:LLJ;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const-string v0, "App"

    return-object v0
.end method

.method a()[LLK;
    .registers 2

    .prologue
    .line 29
    invoke-static {}, LLK;->values()[LLK;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, LLJ;->a()[LLK;

    move-result-object v0

    return-object v0
.end method
