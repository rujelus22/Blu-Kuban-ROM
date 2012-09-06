.class public final enum LLS;
.super Ljava/lang/Enum;
.source "CollectionTable.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LLS;",
        ">;",
        "Laga",
        "<",
        "LLV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LLS;

.field private static final synthetic a:[LLS;

.field public static final enum b:LLS;

.field public static final enum c:LLS;


# instance fields
.field private final a:LLV;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0xe

    const/4 v6, 0x0

    .line 121
    new-instance v0, LLS;

    const-string v1, "DAYS_TO_SYNC"

    invoke-static {}, LLR;->b()LLR;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "daysToSync"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, LLS;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLS;->a:LLS;

    .line 124
    new-instance v0, LLS;

    const-string v1, "SYNC_NEW_DOCS_BY_DEFAULT"

    invoke-static {}, LLR;->b()LLR;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "syncNewDocsByDefault"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, LLS;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLS;->b:LLS;

    .line 127
    new-instance v0, LLS;

    const-string v1, "ENTRY_ID"

    invoke-static {}, LLR;->b()LLR;

    move-result-object v2

    invoke-static {v2}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    const-string v4, "entryId"

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v3}, LMn;->b()LMn;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, LMn;->a([Ljava/lang/String;)LMn;

    move-result-object v3

    invoke-static {}, LMj;->a()LMj;

    move-result-object v4

    invoke-virtual {v3, v4}, LMn;->a(LMa;)LMn;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, LLS;-><init>(Ljava/lang/String;ILLX;)V

    sput-object v0, LLS;->c:LLS;

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [LLS;

    sget-object v1, LLS;->a:LLS;

    aput-object v1, v0, v6

    sget-object v1, LLS;->b:LLS;

    aput-object v1, v0, v8

    sget-object v1, LLS;->c:LLS;

    aput-object v1, v0, v9

    sput-object v0, LLS;->a:[LLS;

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
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p3}, LLX;->a()LLV;

    move-result-object v0

    iput-object v0, p0, LLS;->a:LLV;

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLS;
    .registers 2
    .parameter

    .prologue
    .line 120
    const-class v0, LLS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LLS;

    return-object v0
.end method

.method public static values()[LLS;
    .registers 1

    .prologue
    .line 120
    sget-object v0, LLS;->a:[LLS;

    invoke-virtual {v0}, [LLS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLS;

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, LLS;->a:LLV;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, LLS;->a()LLV;

    move-result-object v0

    return-object v0
.end method
