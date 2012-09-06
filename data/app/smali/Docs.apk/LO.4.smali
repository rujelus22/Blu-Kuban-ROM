.class public final enum LLO;
.super Ljava/lang/Enum;
.source "CachedSearchResultTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLO;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLO;

.field private static final synthetic a:[LLO;

.field public static final enum b:LLO;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    new-instance v0, LLO;

    const-string v1, "CACHED_SEARCH_ID"

    invoke-static {}, LLN;->b()LLN;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "cachedSearchId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-static {}, LLP;->a()LLP;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, LLO;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLO;->a:LLO;

    .line 49
    new-instance v0, LLO;

    const-string v1, "RESOURCE_ID"

    invoke-static {}, LLN;->b()LLN;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "resourceId"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LLO;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLO;->b:LLO;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [LLO;

    sget-object v1, LLO;->a:LLO;

    aput-object v1, v0, v6

    sget-object v1, LLO;->b:LLO;

    aput-object v1, v0, v7

    sput-object v0, LLO;->a:[LLO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILLX;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLX;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LLO;->a:LLV;

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLO;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, LLO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLO;

    return-object v0
.end method

.method public static values()[LLO;
    .registers 1

    .prologue
    .line 41
    sget-object v0, LLO;->a:[LLO;

    invoke-virtual {v0}, [LLO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLO;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, LLO;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, LLO;->a()LLV;

    move-result-object v0

    return-object v0
.end method
