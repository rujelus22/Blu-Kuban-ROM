.class public final enum LLQ;
.super Ljava/lang/Enum;
.source "CachedSearchTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLQ;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLQ;

.field private static final synthetic a:[LLQ;

.field public static final enum b:LLQ;

.field public static final enum c:LLQ;

.field public static final enum d:LLQ;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xe

    .line 38
    new-instance v0, LLQ;

    const-string v1, "ACCOUNT_ID"

    invoke-static {}, LLP;->b()LLP;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "accountId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-static {}, LLF;->a()LLF;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LLQ;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLQ;->a:LLQ;

    .line 43
    new-instance v0, LLQ;

    const-string v1, "QUERY"

    invoke-static {}, LLP;->b()LLP;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "query"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LLQ;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLQ;->b:LLQ;

    .line 46
    new-instance v0, LLQ;

    const-string v1, "TIMESTAMP"

    invoke-static {}, LLP;->b()LLP;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "timestamp"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LLQ;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLQ;->c:LLQ;

    .line 50
    new-instance v0, LLQ;

    const-string v1, "COMPLETED"

    invoke-static {}, LLP;->b()LLP;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "completed"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, LLQ;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLQ;->d:LLQ;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [LLQ;

    sget-object v1, LLQ;->a:LLQ;

    aput-object v1, v0, v7

    sget-object v1, LLQ;->b:LLQ;

    aput-object v1, v0, v8

    sget-object v1, LLQ;->c:LLQ;

    aput-object v1, v0, v9

    sget-object v1, LLQ;->d:LLQ;

    aput-object v1, v0, v10

    sput-object v0, LLQ;->a:[LLQ;

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

    iput-object v0, p0, LLQ;->a:LLV;

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLQ;
    .registers 2
    .parameter

    .prologue
    .line 37
    const-class v0, LLQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLQ;

    return-object v0
.end method

.method public static values()[LLQ;
    .registers 1

    .prologue
    .line 37
    sget-object v0, LLQ;->a:[LLQ;

    invoke-virtual {v0}, [LLQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLQ;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, LLQ;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, LLQ;->a()LLV;

    move-result-object v0

    return-object v0
.end method
