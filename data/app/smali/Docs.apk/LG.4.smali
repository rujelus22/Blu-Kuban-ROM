.class public final enum LLG;
.super Ljava/lang/Enum;
.source "AccountTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLG;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLG;

.field private static final synthetic a:[LLG;

.field public static final enum b:LLG;

.field public static final enum c:LLG;

.field public static final enum d:LLG;

.field public static final enum e:LLG;

.field public static final enum f:LLG;

.field public static final enum g:LLG;


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

    .line 43
    new-instance v0, LLG;

    const-string v1, "ACCOUNT_HOLDER_NAME"

    invoke-static {}, LLF;->b()LLF;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "accountHolderName"

    sget-object v5, LMp;->c:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v3, v4}, LMn;->a([Ljava/lang/String;)LMn;

    move-result-object v3

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LLG;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLG;->a:LLG;

    .line 47
    new-instance v0, LLG;

    const-string v1, "LAST_SYNC_TIME"

    invoke-static {}, LLF;->b()LLF;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "lastSyncTime"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LLG;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLG;->b:LLG;

    .line 50
    new-instance v0, LLG;

    const-string v1, "FOLDER_SYNC_CLIP_TIME"

    invoke-static {}, LLF;->b()LLF;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "folderSyncClipTime"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, LLG;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLG;->c:LLG;

    .line 53
    new-instance v0, LLG;

    const-string v1, "DOCUMENT_SYNC_CLIP_TIME"

    invoke-static {}, LLF;->b()LLF;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "documentSyncClipTime"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, LLG;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLG;->d:LLG;

    .line 56
    new-instance v0, LLG;

    const-string v1, "LAST_SYNC_ETAG"

    const/4 v2, 0x4

    invoke-static {}, LLF;->b()LLF;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "lastSyncEtag"

    sget-object v6, LMp;->c:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3, v7, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LLG;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLG;->e:LLG;

    .line 59
    new-instance v0, LLG;

    const-string v1, "LAST_SYNC_CHANGE_STAMP"

    const/4 v2, 0x5

    invoke-static {}, LLF;->b()LLF;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "lastSyncChangeStamp"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v4}, LMn;->b()LMn;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LLG;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLG;->f:LLG;

    .line 63
    new-instance v0, LLG;

    const-string v1, "SYNC_IN_PROGRESS"

    const/4 v2, 0x6

    invoke-static {}, LLF;->b()LLF;

    move-result-object v3

    invoke-static {v3}, LLX;->a(LMa;)LLX;

    move-result-object v3

    new-instance v4, LMn;

    const-string v5, "syncInProgress"

    sget-object v6, LMp;->a:LMp;

    invoke-direct {v4, v5, v6}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v4}, LMn;->b()LMn;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, LMn;->a(Ljava/lang/Object;)LMn;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, LLX;->a(ILMn;)LLX;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LLG;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLG;->g:LLG;

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [LLG;

    sget-object v1, LLG;->a:LLG;

    aput-object v1, v0, v8

    sget-object v1, LLG;->b:LLG;

    aput-object v1, v0, v9

    sget-object v1, LLG;->c:LLG;

    aput-object v1, v0, v10

    sget-object v1, LLG;->d:LLG;

    aput-object v1, v0, v11

    const/4 v1, 0x4

    sget-object v2, LLG;->e:LLG;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, LLG;->f:LLG;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LLG;->g:LLG;

    aput-object v2, v0, v1

    sput-object v0, LLG;->a:[LLG;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LLG;->a:LLV;

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLG;
    .registers 2
    .parameter

    .prologue
    .line 42
    const-class v0, LLG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLG;

    return-object v0
.end method

.method public static values()[LLG;
    .registers 1

    .prologue
    .line 42
    sget-object v0, LLG;->a:[LLG;

    invoke-virtual {v0}, [LLG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLG;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, LLG;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, LLG;->a()LLV;

    move-result-object v0

    return-object v0
.end method
