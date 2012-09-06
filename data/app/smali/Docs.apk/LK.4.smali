.class public final enum LLK;
.super Ljava/lang/Enum;
.source "AppCacheTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLK;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLK;

.field private static final synthetic a:[LLK;

.field public static final enum b:LLK;

.field public static final enum c:LLK;

.field public static final enum d:LLK;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v6, 0xe

    const/4 v7, 0x0

    .line 41
    new-instance v0, LLK;

    const-string v1, "APP_NAME"

    invoke-static {}, LLJ;->b()LLJ;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "appName"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LLK;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLK;->a:LLK;

    .line 44
    new-instance v0, LLK;

    const-string v1, "APP_VERSION"

    invoke-static {}, LLJ;->b()LLJ;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "appVersion"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LLK;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLK;->b:LLK;

    .line 47
    new-instance v0, LLK;

    const-string v1, "MANIFEST_ETAG"

    invoke-static {}, LLJ;->b()LLJ;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "manifestETag"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v6, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LLK;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLK;->c:LLK;

    .line 50
    new-instance v0, LLK;

    const-string v1, "EXPIRY_DATE"

    invoke-static {}, LLJ;->b()LLJ;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    const/16 v3, 0x17

    new-instance v4, LMn;

    const-string v5, "expiryDate"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v4}, LMn;->b()LMn;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, LLK;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLK;->d:LLK;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [LLK;

    sget-object v1, LLK;->a:LLK;

    aput-object v1, v0, v7

    sget-object v1, LLK;->b:LLK;

    aput-object v1, v0, v8

    sget-object v1, LLK;->c:LLK;

    aput-object v1, v0, v9

    sget-object v1, LLK;->d:LLK;

    aput-object v1, v0, v10

    sput-object v0, LLK;->a:[LLK;

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

    iput-object v0, p0, LLK;->a:LLV;

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLK;
    .registers 2
    .parameter

    .prologue
    .line 40
    const-class v0, LLK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLK;

    return-object v0
.end method

.method public static values()[LLK;
    .registers 1

    .prologue
    .line 40
    sget-object v0, LLK;->a:[LLK;

    invoke-virtual {v0}, [LLK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLK;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, LLK;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, LLK;->a()LLV;

    move-result-object v0

    return-object v0
.end method
