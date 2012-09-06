.class public LLH;
.super LMa;
.source "AclTable.java"


# static fields
.field private static final a:LLH;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, LLH;

    invoke-direct {v0}, LLH;-><init>()V

    sput-object v0, LLH;->a:LLH;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, LMa;-><init>()V

    .line 29
    return-void
.end method

.method public static a()LLH;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LLH;->a:LLH;

    return-object v0
.end method

.method static synthetic b()LLH;
    .registers 1

    .prologue
    .line 15
    sget-object v0, LLH;->a:LLH;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "Acl"

    return-object v0
.end method

.method a()[LLI;
    .registers 2

    .prologue
    .line 33
    invoke-static {}, LLI;->values()[LLI;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, LLH;->a()[LLI;

    move-result-object v0

    return-object v0
.end method
