.class public final enum Lcom/google/commerce/wireless/topiary/M;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum b:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum c:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum d:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum e:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum f:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum g:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum h:Lcom/google/commerce/wireless/topiary/M;

.field public static final enum i:Lcom/google/commerce/wireless/topiary/M;

.field private static final synthetic j:[Lcom/google/commerce/wireless/topiary/M;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->a:Lcom/google/commerce/wireless/topiary/M;

    .line 13
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->b:Lcom/google/commerce/wireless/topiary/M;

    .line 15
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->c:Lcom/google/commerce/wireless/topiary/M;

    .line 17
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "CLIENT_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->d:Lcom/google/commerce/wireless/topiary/M;

    .line 19
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "UNREACHABLE"

    invoke-direct {v0, v1, v7}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->e:Lcom/google/commerce/wireless/topiary/M;

    .line 21
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "UNAUTHORIZED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->f:Lcom/google/commerce/wireless/topiary/M;

    .line 23
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "STREAM_INTERRUPTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->g:Lcom/google/commerce/wireless/topiary/M;

    .line 25
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "CANCELLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->h:Lcom/google/commerce/wireless/topiary/M;

    .line 27
    new-instance v0, Lcom/google/commerce/wireless/topiary/M;

    const-string v1, "DEADLINE_EXCEEDED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->i:Lcom/google/commerce/wireless/topiary/M;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/commerce/wireless/topiary/M;

    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->a:Lcom/google/commerce/wireless/topiary/M;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->b:Lcom/google/commerce/wireless/topiary/M;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->c:Lcom/google/commerce/wireless/topiary/M;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->d:Lcom/google/commerce/wireless/topiary/M;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->e:Lcom/google/commerce/wireless/topiary/M;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/commerce/wireless/topiary/M;->f:Lcom/google/commerce/wireless/topiary/M;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/commerce/wireless/topiary/M;->g:Lcom/google/commerce/wireless/topiary/M;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/commerce/wireless/topiary/M;->h:Lcom/google/commerce/wireless/topiary/M;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/commerce/wireless/topiary/M;->i:Lcom/google/commerce/wireless/topiary/M;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/commerce/wireless/topiary/M;->j:[Lcom/google/commerce/wireless/topiary/M;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/M;
    .registers 2
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/google/commerce/wireless/topiary/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/M;

    return-object v0
.end method

.method public static values()[Lcom/google/commerce/wireless/topiary/M;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/commerce/wireless/topiary/M;->j:[Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {v0}, [Lcom/google/commerce/wireless/topiary/M;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/commerce/wireless/topiary/M;

    return-object v0
.end method
