.class public final enum LLM;
.super Ljava/lang/Enum;
.source "CacheListTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLM;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLM;

.field private static final synthetic a:[LLM;

.field public static final enum b:LLM;


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
    new-instance v0, LLM;

    const-string v1, "APP_ID"

    invoke-static {}, LLL;->b()LLL;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "appId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-static {}, LLJ;->a()LLJ;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, LLM;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLM;->a:LLM;

    .line 47
    new-instance v0, LLM;

    const-string v1, "CONTENT_ID"

    invoke-static {}, LLL;->b()LLL;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "contentId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-static {}, LMf;->a()LMf;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LLM;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLM;->b:LLM;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [LLM;

    sget-object v1, LLM;->a:LLM;

    aput-object v1, v0, v6

    sget-object v1, LLM;->b:LLM;

    aput-object v1, v0, v7

    sput-object v0, LLM;->a:[LLM;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LLM;->a:LLV;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLM;
    .registers 2
    .parameter

    .prologue
    .line 40
    const-class v0, LLM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLM;

    return-object v0
.end method

.method public static values()[LLM;
    .registers 1

    .prologue
    .line 40
    sget-object v0, LLM;->a:[LLM;

    invoke-virtual {v0}, [LLM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLM;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, LLM;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, LLM;->a()LLV;

    move-result-object v0

    return-object v0
.end method
