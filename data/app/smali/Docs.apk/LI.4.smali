.class public final enum LLI;
.super Ljava/lang/Enum;
.source "AclTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLI;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLI;

.field private static final synthetic a:[LLI;

.field public static final enum b:LLI;

.field public static final enum c:LLI;

.field public static final enum d:LLI;


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

    .line 45
    new-instance v0, LLI;

    const-string v1, "RESOURCE_ID"

    invoke-static {}, LLH;->b()LLH;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "resourceId"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->a()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LLI;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLI;->a:LLI;

    .line 48
    new-instance v0, LLI;

    const-string v1, "ACCOUNT_NAME"

    invoke-static {}, LLH;->b()LLH;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "accountName"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LLI;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLI;->b:LLI;

    .line 51
    new-instance v0, LLI;

    const-string v1, "ROLE"

    invoke-static {}, LLH;->b()LLH;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "role"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LLI;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLI;->c:LLI;

    .line 54
    new-instance v0, LLI;

    const-string v1, "SCOPE"

    invoke-static {}, LLH;->b()LLH;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "scope"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, LLI;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLI;->d:LLI;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [LLI;

    sget-object v1, LLI;->a:LLI;

    aput-object v1, v0, v7

    sget-object v1, LLI;->b:LLI;

    aput-object v1, v0, v8

    sget-object v1, LLI;->c:LLI;

    aput-object v1, v0, v9

    sget-object v1, LLI;->d:LLI;

    aput-object v1, v0, v10

    sput-object v0, LLI;->a:[LLI;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LLI;->a:LLV;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLI;
    .registers 2
    .parameter

    .prologue
    .line 44
    const-class v0, LLI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLI;

    return-object v0
.end method

.method public static values()[LLI;
    .registers 1

    .prologue
    .line 44
    sget-object v0, LLI;->a:[LLI;

    invoke-virtual {v0}, [LLI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLI;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, LLI;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, LLI;->a()LLV;

    move-result-object v0

    return-object v0
.end method
