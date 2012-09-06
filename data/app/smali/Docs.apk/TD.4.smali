.class public final enum LTD;
.super Ljava/lang/Enum;
.source "ContentSyncTasks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LTD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LTD;

.field private static final synthetic a:[LTD;

.field public static final enum b:LTD;

.field public static final enum c:LTD;

.field public static final enum d:LTD;

.field public static final enum e:LTD;

.field public static final enum f:LTD;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, LTD;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, LTD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTD;->a:LTD;

    .line 26
    new-instance v0, LTD;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v4}, LTD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTD;->b:LTD;

    .line 28
    new-instance v0, LTD;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, LTD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTD;->c:LTD;

    .line 30
    new-instance v0, LTD;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, LTD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTD;->d:LTD;

    .line 32
    new-instance v0, LTD;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v7}, LTD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTD;->e:LTD;

    .line 34
    new-instance v0, LTD;

    const-string v1, "NULL_LAST_STATUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LTD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTD;->f:LTD;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [LTD;

    sget-object v1, LTD;->a:LTD;

    aput-object v1, v0, v3

    sget-object v1, LTD;->b:LTD;

    aput-object v1, v0, v4

    sget-object v1, LTD;->c:LTD;

    aput-object v1, v0, v5

    sget-object v1, LTD;->d:LTD;

    aput-object v1, v0, v6

    sget-object v1, LTD;->e:LTD;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LTD;->f:LTD;

    aput-object v2, v0, v1

    sput-object v0, LTD;->a:[LTD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LTD;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, LTD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LTD;

    return-object v0
.end method

.method public static values()[LTD;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LTD;->a:[LTD;

    invoke-virtual {v0}, [LTD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LTD;

    return-object v0
.end method
