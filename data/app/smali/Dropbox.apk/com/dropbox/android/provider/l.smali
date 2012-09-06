.class public final enum Lcom/dropbox/android/provider/l;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/provider/l;

.field public static final enum b:Lcom/dropbox/android/provider/l;

.field public static final enum c:Lcom/dropbox/android/provider/l;

.field public static final enum d:Lcom/dropbox/android/provider/l;

.field public static final enum e:Lcom/dropbox/android/provider/l;

.field public static final enum f:Lcom/dropbox/android/provider/l;

.field public static final enum g:Lcom/dropbox/android/provider/l;

.field private static final synthetic h:[Lcom/dropbox/android/provider/l;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/dropbox/android/provider/l;

    const-string v1, "ENTRY"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/provider/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/l;->a:Lcom/dropbox/android/provider/l;

    new-instance v0, Lcom/dropbox/android/provider/l;

    const-string v1, "DIRECTORY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/provider/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    new-instance v0, Lcom/dropbox/android/provider/l;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/provider/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/l;->c:Lcom/dropbox/android/provider/l;

    new-instance v0, Lcom/dropbox/android/provider/l;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/provider/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/l;->d:Lcom/dropbox/android/provider/l;

    new-instance v0, Lcom/dropbox/android/provider/l;

    const-string v1, "SEARCH_SUGGEST"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/provider/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/l;->e:Lcom/dropbox/android/provider/l;

    new-instance v0, Lcom/dropbox/android/provider/l;

    const-string v1, "QUERY_STATUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/provider/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/l;->f:Lcom/dropbox/android/provider/l;

    new-instance v0, Lcom/dropbox/android/provider/l;

    const-string v1, "CLEAR_DB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/provider/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/l;->g:Lcom/dropbox/android/provider/l;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/android/provider/l;

    sget-object v1, Lcom/dropbox/android/provider/l;->a:Lcom/dropbox/android/provider/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/provider/l;->c:Lcom/dropbox/android/provider/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/provider/l;->d:Lcom/dropbox/android/provider/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/provider/l;->e:Lcom/dropbox/android/provider/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/provider/l;->f:Lcom/dropbox/android/provider/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/android/provider/l;->g:Lcom/dropbox/android/provider/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/provider/l;->h:[Lcom/dropbox/android/provider/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/provider/l;
    .registers 2
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/dropbox/android/provider/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/l;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/provider/l;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/android/provider/l;->h:[Lcom/dropbox/android/provider/l;

    invoke-virtual {v0}, [Lcom/dropbox/android/provider/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/provider/l;

    return-object v0
.end method
