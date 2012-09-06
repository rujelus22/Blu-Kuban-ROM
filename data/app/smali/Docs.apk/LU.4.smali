.class public final enum LLU;
.super Ljava/lang/Enum;
.source "ContainsIdTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLU;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLU;

.field private static final synthetic a:[LLU;

.field public static final enum b:LLU;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    new-instance v0, LLU;

    const-string v1, "ENTRY_ID"

    invoke-static {}, LLT;->b()LLT;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "entryId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-static {}, LMj;->a()LMj;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, LLU;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLU;->a:LLU;

    .line 47
    new-instance v0, LLU;

    const-string v1, "COLLECTION_ID"

    invoke-static {}, LLT;->b()LLT;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "collectionId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-static {}, LLR;->a()LLR;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LLU;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLU;->b:LLU;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [LLU;

    sget-object v1, LLU;->a:LLU;

    aput-object v1, v0, v6

    sget-object v1, LLU;->b:LLU;

    aput-object v1, v0, v7

    sput-object v0, LLU;->a:[LLU;

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

    iput-object v0, p0, LLU;->a:LLV;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLU;
    .registers 2
    .parameter

    .prologue
    .line 42
    const-class v0, LLU;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLU;

    return-object v0
.end method

.method public static values()[LLU;
    .registers 1

    .prologue
    .line 42
    sget-object v0, LLU;->a:[LLU;

    invoke-virtual {v0}, [LLU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLU;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, LLU;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, LLU;->a()LLV;

    move-result-object v0

    return-object v0
.end method
