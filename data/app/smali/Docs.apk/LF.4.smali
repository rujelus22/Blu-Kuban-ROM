.class public final LLF;
.super LMa;
.source "AccountTable.java"


# static fields
.field private static final a:LLF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, LLF;

    invoke-direct {v0}, LLF;-><init>()V

    sput-object v0, LLF;->a:LLF;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, LMa;-><init>()V

    .line 27
    return-void
.end method

.method public static a()LLF;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LLF;->a:LLF;

    return-object v0
.end method

.method static synthetic b()LLF;
    .registers 1

    .prologue
    .line 15
    sget-object v0, LLF;->a:LLF;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string v0, "Account"

    return-object v0
.end method

.method a()[LLG;
    .registers 2

    .prologue
    .line 31
    invoke-static {}, LLG;->values()[LLG;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, LLF;->a()[LLG;

    move-result-object v0

    return-object v0
.end method
