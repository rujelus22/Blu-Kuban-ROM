.class public final enum LMi;
.super Ljava/lang/Enum;
.source "DocumentTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LMi;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LMi;

.field private static final synthetic a:[LMi;

.field public static final enum b:LMi;

.field public static final enum c:LMi;

.field public static final enum d:LMi;

.field public static final enum e:LMi;

.field public static final enum f:LMi;

.field public static final enum g:LMi;

.field public static final enum h:LMi;

.field public static final enum i:LMi;

.field public static final enum j:LMi;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0xe

    const/4 v8, 0x0

    .line 43
    new-instance v0, LMi;

    const-string v1, "DO_SYNC"

    invoke-static {}, LMh;->b()LMh;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "doSync"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->a:LMi;

    .line 46
    new-instance v0, LMi;

    const-string v1, "ENTRY_ID"

    invoke-static {}, LMh;->b()LMh;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "entryId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v3, v4}, LMn;->a([Ljava/lang/String;)LMn;

    move-result-object v3

    invoke-static {}, LMj;->a()LMj;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->b:LMi;

    .line 50
    new-instance v0, LMi;

    const-string v1, "CONTENT_ID"

    invoke-static {}, LMh;->b()LMh;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "contentId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-static {}, LMf;->a()LMf;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, LMo;->b:LMo;

    invoke-virtual {v3, v4, v5, v6}, LMn;->a(LMa;LLV;LMo;)LMn;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->c:LMi;

    .line 59
    new-instance v0, LMi;

    const-string v1, "PDF_CONTENT_ID"

    invoke-static {}, LMh;->b()LMh;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    const/16 v3, 0x1e

    new-instance v4, LMn;

    const-string v5, "pdfContentId"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-static {}, LMf;->a()LMf;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, LMo;->b:LMo;

    invoke-virtual {v4, v5, v6, v7}, LMn;->a(LMa;LLV;LMo;)LMn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v12, v2}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->d:LMi;

    .line 63
    new-instance v0, LMi;

    const-string v1, "HTML_URI"

    const/4 v2, 0x4

    invoke-static {}, LMh;->b()LMh;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "htmlUri"

    sget-object v6, LMp;->c:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3, v9, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->e:LMi;

    .line 66
    new-instance v0, LMi;

    const-string v1, "APP_ID"

    const/4 v2, 0x5

    invoke-static {}, LMh;->b()LMh;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "appId"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-static {}, LLJ;->a()LLJ;

    move-result-object v5

    invoke-virtual {v4, v5}, LMn;->a(LMa;)LMn;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->f:LMi;

    .line 70
    new-instance v0, LMi;

    const-string v1, "PIN_RETRY_COUNT"

    const/4 v2, 0x6

    invoke-static {}, LMh;->b()LMh;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    const/16 v4, 0x18

    new-instance v5, LMn;

    const-string v6, "pinRetryCount"

    sget-object v7, LMp;->a:LMp;

    invoke-direct {v5, v6, v7}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v5

    invoke-virtual {v5}, LMn;->b()LMn;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->g:LMi;

    .line 73
    new-instance v0, LMi;

    const-string v1, "MD5_CHECKSUM"

    const/4 v2, 0x7

    invoke-static {}, LMh;->b()LMh;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    const/16 v4, 0x19

    new-instance v5, LMn;

    const-string v6, "md5Checksum"

    sget-object v7, LMp;->c:LMp;

    invoke-direct {v5, v6, v7}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3, v4, v5}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->h:LMi;

    .line 76
    new-instance v0, LMi;

    const-string v1, "CONTENT_FRESH"

    const/16 v2, 0x8

    invoke-static {}, LMh;->b()LMh;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    const/16 v4, 0x19

    new-instance v5, LMn;

    const-string v6, "contentFresh"

    sget-object v7, LMp;->a:LMp;

    invoke-direct {v5, v6, v7}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v5

    invoke-virtual {v5}, LMn;->b()LMn;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->i:LMi;

    .line 79
    new-instance v0, LMi;

    const-string v1, "PDF_CONTENT_FRESH"

    const/16 v2, 0x9

    invoke-static {}, LMh;->b()LMh;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    const/16 v4, 0x1e

    new-instance v5, LMn;

    const-string v6, "pdfContentFresh"

    sget-object v7, LMp;->a:LMp;

    invoke-direct {v5, v6, v7}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v5

    invoke-virtual {v5}, LMn;->b()LMn;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMi;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LMi;->j:LMi;

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [LMi;

    sget-object v1, LMi;->a:LMi;

    aput-object v1, v0, v8

    sget-object v1, LMi;->b:LMi;

    aput-object v1, v0, v10

    sget-object v1, LMi;->c:LMi;

    aput-object v1, v0, v11

    sget-object v1, LMi;->d:LMi;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v2, LMi;->e:LMi;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, LMi;->f:LMi;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LMi;->g:LMi;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LMi;->h:LMi;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LMi;->i:LMi;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LMi;->j:LMi;

    aput-object v2, v0, v1

    sput-object v0, LMi;->a:[LMi;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LMi;->a:LLV;

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMi;
    .registers 2
    .parameter

    .prologue
    .line 42
    const-class v0, LMi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LMi;

    return-object v0
.end method

.method public static values()[LMi;
    .registers 1

    .prologue
    .line 42
    sget-object v0, LMi;->a:[LMi;

    invoke-virtual {v0}, [LMi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMi;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, LMi;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, LMi;->a()LLV;

    move-result-object v0

    return-object v0
.end method
