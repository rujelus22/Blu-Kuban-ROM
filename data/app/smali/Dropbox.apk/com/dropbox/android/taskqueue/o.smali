.class public final enum Lcom/dropbox/android/taskqueue/o;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/taskqueue/o;

.field public static final enum b:Lcom/dropbox/android/taskqueue/o;

.field public static final enum c:Lcom/dropbox/android/taskqueue/o;

.field public static final enum d:Lcom/dropbox/android/taskqueue/o;

.field public static final enum e:Lcom/dropbox/android/taskqueue/o;

.field public static final enum f:Lcom/dropbox/android/taskqueue/o;

.field private static final synthetic g:[Lcom/dropbox/android/taskqueue/o;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/dropbox/android/taskqueue/o;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/taskqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    new-instance v0, Lcom/dropbox/android/taskqueue/o;

    const-string v1, "NEED_WIFI"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/taskqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/o;->b:Lcom/dropbox/android/taskqueue/o;

    new-instance v0, Lcom/dropbox/android/taskqueue/o;

    const-string v1, "NEED_CONNECTION"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/taskqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/o;->c:Lcom/dropbox/android/taskqueue/o;

    new-instance v0, Lcom/dropbox/android/taskqueue/o;

    const-string v1, "NEED_FASTER_NETWORK"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/taskqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/o;->d:Lcom/dropbox/android/taskqueue/o;

    new-instance v0, Lcom/dropbox/android/taskqueue/o;

    const-string v1, "NEED_BATTERY"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/taskqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/o;->e:Lcom/dropbox/android/taskqueue/o;

    new-instance v0, Lcom/dropbox/android/taskqueue/o;

    const-string v1, "NEED_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/taskqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/o;->f:Lcom/dropbox/android/taskqueue/o;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/android/taskqueue/o;

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->b:Lcom/dropbox/android/taskqueue/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->c:Lcom/dropbox/android/taskqueue/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->d:Lcom/dropbox/android/taskqueue/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->e:Lcom/dropbox/android/taskqueue/o;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/taskqueue/o;->f:Lcom/dropbox/android/taskqueue/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/taskqueue/o;->g:[Lcom/dropbox/android/taskqueue/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/o;
    .registers 2
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/dropbox/android/taskqueue/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/o;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/taskqueue/o;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->g:[Lcom/dropbox/android/taskqueue/o;

    invoke-virtual {v0}, [Lcom/dropbox/android/taskqueue/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/taskqueue/o;

    return-object v0
.end method
