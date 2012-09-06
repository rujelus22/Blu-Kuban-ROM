.class public LMh;
.super LMa;
.source "DocumentTable.java"


# static fields
.field private static final a:LMh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, LMh;

    invoke-direct {v0}, LMh;-><init>()V

    sput-object v0, LMh;->a:LMh;

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

.method public static a()LMh;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LMh;->a:LMh;

    return-object v0
.end method

.method static synthetic b()LMh;
    .registers 1

    .prologue
    .line 15
    sget-object v0, LMh;->a:LMh;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string v0, "Document"

    return-object v0
.end method

.method a()[LMi;
    .registers 2

    .prologue
    .line 31
    invoke-static {}, LMi;->values()[LMi;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, LMh;->a()[LMi;

    move-result-object v0

    return-object v0
.end method
