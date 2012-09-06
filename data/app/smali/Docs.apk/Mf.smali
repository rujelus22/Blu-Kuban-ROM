.class public LMf;
.super LMa;
.source "DocumentContentTable.java"


# static fields
.field private static final a:LMf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, LMf;

    invoke-direct {v0}, LMf;-><init>()V

    sput-object v0, LMf;->a:LMf;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, LMa;-><init>()V

    .line 26
    return-void
.end method

.method public static a()LMf;
    .registers 1

    .prologue
    .line 21
    sget-object v0, LMf;->a:LMf;

    return-object v0
.end method

.method static synthetic b()LMf;
    .registers 1

    .prologue
    .line 16
    sget-object v0, LMf;->a:LMf;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "DocumentContent"

    return-object v0
.end method

.method a()[LMg;
    .registers 2

    .prologue
    .line 30
    invoke-static {}, LMg;->values()[LMg;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, LMf;->a()[LMg;

    move-result-object v0

    return-object v0
.end method
