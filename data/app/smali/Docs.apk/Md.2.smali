.class public final enum LMd;
.super Ljava/lang/Enum;
.source "DocListDatabase.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LMd;",
        ">;",
        "Laga",
        "<",
        "LMa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LMd;

.field private static final synthetic a:[LMd;

.field public static final enum b:LMd;

.field public static final enum c:LMd;

.field public static final enum d:LMd;

.field public static final enum e:LMd;

.field public static final enum f:LMd;

.field public static final enum g:LMd;

.field public static final enum h:LMd;

.field public static final enum i:LMd;

.field public static final enum j:LMd;

.field public static final enum k:LMd;

.field public static final enum l:LMd;

.field public static final enum m:LMd;

.field public static final enum n:LMd;


# instance fields
.field private final a:LMa;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    new-instance v0, LMd;

    const-string v1, "ACCOUNT"

    invoke-static {}, LLF;->a()LLF;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->a:LMd;

    .line 103
    new-instance v0, LMd;

    const-string v1, "ACCOUNT_METADATA"

    invoke-static {}, LLD;->a()LLD;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->b:LMd;

    .line 104
    new-instance v0, LMd;

    const-string v1, "DOCUMENT_CONTENT"

    invoke-static {}, LMf;->a()LMf;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->c:LMd;

    .line 105
    new-instance v0, LMd;

    const-string v1, "ENTRY"

    invoke-static {}, LMj;->a()LMj;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->d:LMd;

    .line 106
    new-instance v0, LMd;

    const-string v1, "COLLECTION"

    invoke-static {}, LLR;->a()LLR;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->e:LMd;

    .line 107
    new-instance v0, LMd;

    const-string v1, "DOCUMENT"

    const/4 v2, 0x5

    invoke-static {}, LMh;->a()LMh;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->f:LMd;

    .line 108
    new-instance v0, LMd;

    const-string v1, "CONTAINS_ID"

    const/4 v2, 0x6

    invoke-static {}, LLT;->a()LLT;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->g:LMd;

    .line 109
    new-instance v0, LMd;

    const-string v1, "APP_CACHE"

    const/4 v2, 0x7

    invoke-static {}, LLJ;->a()LLJ;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->h:LMd;

    .line 110
    new-instance v0, LMd;

    const-string v1, "CACHE_LIST"

    const/16 v2, 0x8

    invoke-static {}, LLL;->a()LLL;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->i:LMd;

    .line 111
    new-instance v0, LMd;

    const-string v1, "ACL"

    const/16 v2, 0x9

    invoke-static {}, LLH;->a()LLH;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->j:LMd;

    .line 112
    new-instance v0, LMd;

    const-string v1, "PENDING_OPERATION"

    const/16 v2, 0xa

    invoke-static {}, LMy;->a()LMy;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->k:LMd;

    .line 113
    new-instance v0, LMd;

    const-string v1, "CACHED_SEARCH"

    const/16 v2, 0xb

    invoke-static {}, LLP;->a()LLP;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->l:LMd;

    .line 114
    new-instance v0, LMd;

    const-string v1, "CACHED_SEARCH_RESULT"

    const/16 v2, 0xc

    invoke-static {}, LLN;->a()LLN;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->m:LMd;

    .line 115
    new-instance v0, LMd;

    const-string v1, "PARTIAL_FEED"

    const/16 v2, 0xd

    invoke-static {}, LMw;->a()LMw;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LMd;-><init>(Ljava/lang/String;ILMa;)V

    sput-object v0, LMd;->n:LMd;

    .line 101
    const/16 v0, 0xe

    new-array v0, v0, [LMd;

    sget-object v1, LMd;->a:LMd;

    aput-object v1, v0, v4

    sget-object v1, LMd;->b:LMd;

    aput-object v1, v0, v5

    sget-object v1, LMd;->c:LMd;

    aput-object v1, v0, v6

    sget-object v1, LMd;->d:LMd;

    aput-object v1, v0, v7

    sget-object v1, LMd;->e:LMd;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LMd;->f:LMd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LMd;->g:LMd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LMd;->h:LMd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LMd;->i:LMd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LMd;->j:LMd;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LMd;->k:LMd;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LMd;->l:LMd;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, LMd;->m:LMd;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, LMd;->n:LMd;

    aput-object v2, v0, v1

    sput-object v0, LMd;->a:[LMd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILMa;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, LMd;->a:LMa;

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMd;
    .registers 2
    .parameter

    .prologue
    .line 101
    const-class v0, LMd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LMd;

    return-object v0
.end method

.method public static values()[LMd;
    .registers 1

    .prologue
    .line 101
    sget-object v0, LMd;->a:[LMd;

    invoke-virtual {v0}, [LMd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMd;

    return-object v0
.end method


# virtual methods
.method public a()LMa;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, LMd;->a:LMa;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, LMd;->a()LMa;

    move-result-object v0

    return-object v0
.end method
