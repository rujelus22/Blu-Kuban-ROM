.class public final enum LMx;
.super Ljava/lang/Enum;
.source "PartialFeedTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LMx;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LMx;

.field private static final synthetic a:[LMx;

.field public static final enum b:LMx;

.field public static final enum c:LMx;

.field public static final enum d:LMx;

.field public static final enum e:LMx;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x14

    .line 37
    new-instance v0, LMx;

    const-string v1, "ACCOUNT_ID"

    invoke-static {}, LMw;->b()LMw;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "accountId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-static {}, LLF;->a()LLF;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LMx;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMx;->a:LMx;

    .line 41
    new-instance v0, LMx;

    const-string v1, "INITIAL_URI"

    invoke-static {}, LMw;->b()LMw;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "initialUri"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LMx;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMx;->b:LMx;

    .line 44
    new-instance v0, LMx;

    const-string v1, "NEXT_URI"

    invoke-static {}, LMw;->b()LMw;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "nextUri"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, LMx;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMx;->c:LMx;

    .line 47
    new-instance v0, LMx;

    const-string v1, "CLIP_TIME"

    invoke-static {}, LMw;->b()LMw;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    const/16 v3, 0x23

    new-instance v4, LMn;

    const-string v5, "clipTime"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, LMx;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMx;->d:LMx;

    .line 50
    new-instance v0, LMx;

    const-string v1, "CACHED_SEARCH_ID"

    const/4 v2, 0x4

    invoke-static {}, LMw;->b()LMw;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "cachedSearchId"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v4}, LMn;->a()LMn;

    move-result-object v4

    invoke-static {}, LLP;->a()LLP;

    move-result-object v5

    invoke-virtual {v4, v5}, LMn;->a(LMa;)LMn;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMx;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMx;->e:LMx;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [LMx;

    sget-object v1, LMx;->a:LMx;

    aput-object v1, v0, v8

    sget-object v1, LMx;->b:LMx;

    aput-object v1, v0, v9

    sget-object v1, LMx;->c:LMx;

    aput-object v1, v0, v10

    sget-object v1, LMx;->d:LMx;

    aput-object v1, v0, v11

    const/4 v1, 0x4

    sget-object v2, LMx;->e:LMx;

    aput-object v2, v0, v1

    sput-object v0, LMx;->a:[LMx;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LMx;->a:LLV;

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMx;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, LMx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LMx;

    return-object v0
.end method

.method public static values()[LMx;
    .registers 1

    .prologue
    .line 36
    sget-object v0, LMx;->a:[LMx;

    invoke-virtual {v0}, [LMx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMx;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, LMx;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, LMx;->a()LLV;

    move-result-object v0

    return-object v0
.end method
