.class public final enum LLE;
.super Ljava/lang/Enum;
.source "AccountMetadataTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLE;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLE;

.field private static final synthetic a:[LLE;

.field public static final enum b:LLE;

.field public static final enum c:LLE;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xe

    .line 44
    new-instance v0, LLE;

    const-string v1, "ACCOUNT_ID"

    invoke-static {}, LLD;->b()LLD;

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

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LLE;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLE;->a:LLE;

    .line 48
    new-instance v0, LLE;

    const-string v1, "CAPABILITY_CONTENT"

    invoke-static {}, LLD;->b()LLD;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "capabilityContent"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LLE;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLE;->b:LLE;

    .line 51
    new-instance v0, LLE;

    const-string v1, "LAST_UPDATED_TIME"

    invoke-static {}, LLD;->b()LLD;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "lastUpdatedDate"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LLE;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLE;->c:LLE;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [LLE;

    sget-object v1, LLE;->a:LLE;

    aput-object v1, v0, v7

    sget-object v1, LLE;->b:LLE;

    aput-object v1, v0, v8

    sget-object v1, LLE;->c:LLE;

    aput-object v1, v0, v9

    sput-object v0, LLE;->a:[LLE;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LLE;->a:LLV;

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLE;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-class v0, LLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLE;

    return-object v0
.end method

.method public static values()[LLE;
    .registers 1

    .prologue
    .line 43
    sget-object v0, LLE;->a:[LLE;

    invoke-virtual {v0}, [LLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLE;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, LLE;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, LLE;->a()LLV;

    move-result-object v0

    return-object v0
.end method
