.class public final enum LMg;
.super Ljava/lang/Enum;
.source "DocumentContentTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LMg;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LMg;

.field private static final synthetic a:[LMg;

.field public static final enum b:LMg;

.field public static final enum c:LMg;

.field public static final enum d:LMg;

.field public static final enum e:LMg;

.field public static final enum f:LMg;


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

    const/16 v7, 0xe

    .line 42
    new-instance v0, LMg;

    const-string v1, "CONTENT_ETAG"

    invoke-static {}, LMf;->b()LMf;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "contentETag"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LMg;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMg;->a:LMg;

    .line 45
    new-instance v0, LMg;

    const-string v1, "CONTENT_TYPE"

    invoke-static {}, LMf;->b()LMf;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "contentType"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LMg;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMg;->b:LMg;

    .line 48
    new-instance v0, LMg;

    const-string v1, "ENCRYPTION_KEY"

    invoke-static {}, LMf;->b()LMf;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "encryptionKey"

    sget-object v5, LMp;->d:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, LMg;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMg;->c:LMg;

    .line 51
    new-instance v0, LMg;

    const-string v1, "ENCRYPTION_ALGORITHM"

    invoke-static {}, LMf;->b()LMf;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "encryptionAlgorithm"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, LMg;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMg;->d:LMg;

    .line 54
    new-instance v0, LMg;

    const-string v1, "FILE_PATH"

    const/4 v2, 0x4

    invoke-static {}, LMf;->b()LMf;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "filePath"

    sget-object v6, LMp;->c:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3, v7, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMg;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMg;->e:LMg;

    .line 57
    new-instance v0, LMg;

    const-string v1, "LAST_OPENED_TIME"

    const/4 v2, 0x5

    invoke-static {}, LMf;->b()LMf;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "lastOpenedTime"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3, v7, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMg;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMg;->f:LMg;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [LMg;

    sget-object v1, LMg;->a:LMg;

    aput-object v1, v0, v8

    sget-object v1, LMg;->b:LMg;

    aput-object v1, v0, v9

    sget-object v1, LMg;->c:LMg;

    aput-object v1, v0, v10

    sget-object v1, LMg;->d:LMg;

    aput-object v1, v0, v11

    const/4 v1, 0x4

    sget-object v2, LMg;->e:LMg;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, LMg;->f:LMg;

    aput-object v2, v0, v1

    sput-object v0, LMg;->a:[LMg;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LMg;->a:LLV;

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMg;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, LMg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LMg;

    return-object v0
.end method

.method public static values()[LMg;
    .registers 1

    .prologue
    .line 41
    sget-object v0, LMg;->a:[LMg;

    invoke-virtual {v0}, [LMg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMg;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, LMg;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, LMg;->a()LLV;

    move-result-object v0

    return-object v0
.end method
