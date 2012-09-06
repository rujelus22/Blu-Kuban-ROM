.class public final enum Lcom/dropbox/android/taskqueue/P;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/taskqueue/P;

.field public static final enum b:Lcom/dropbox/android/taskqueue/P;

.field public static final enum c:Lcom/dropbox/android/taskqueue/P;

.field public static final enum d:Lcom/dropbox/android/taskqueue/P;

.field public static final enum e:Lcom/dropbox/android/taskqueue/P;

.field public static final enum f:Lcom/dropbox/android/taskqueue/P;

.field public static final enum g:Lcom/dropbox/android/taskqueue/P;

.field public static final enum h:Lcom/dropbox/android/taskqueue/P;

.field private static final synthetic i:[Lcom/dropbox/android/taskqueue/P;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "WAITING_FOR_WIFI"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->a:Lcom/dropbox/android/taskqueue/P;

    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "WAITING_FOR_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->b:Lcom/dropbox/android/taskqueue/P;

    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "WAITING_FOR_FASTER_NETWORK"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->c:Lcom/dropbox/android/taskqueue/P;

    .line 52
    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "WAITING_TO_UPLOAD"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->d:Lcom/dropbox/android/taskqueue/P;

    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "WAITING_FOR_BATTERY"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->e:Lcom/dropbox/android/taskqueue/P;

    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "NONE_PENDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->f:Lcom/dropbox/android/taskqueue/P;

    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "UPLOADING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->g:Lcom/dropbox/android/taskqueue/P;

    .line 53
    new-instance v0, Lcom/dropbox/android/taskqueue/P;

    const-string v1, "OUT_OF_QUOTA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/taskqueue/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->h:Lcom/dropbox/android/taskqueue/P;

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dropbox/android/taskqueue/P;

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->a:Lcom/dropbox/android/taskqueue/P;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->b:Lcom/dropbox/android/taskqueue/P;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->c:Lcom/dropbox/android/taskqueue/P;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->d:Lcom/dropbox/android/taskqueue/P;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->e:Lcom/dropbox/android/taskqueue/P;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/taskqueue/P;->f:Lcom/dropbox/android/taskqueue/P;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/android/taskqueue/P;->g:Lcom/dropbox/android/taskqueue/P;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/android/taskqueue/P;->h:Lcom/dropbox/android/taskqueue/P;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/taskqueue/P;->i:[Lcom/dropbox/android/taskqueue/P;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/P;
    .registers 2
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/dropbox/android/taskqueue/P;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/P;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/taskqueue/P;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/dropbox/android/taskqueue/P;->i:[Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v0}, [Lcom/dropbox/android/taskqueue/P;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/taskqueue/P;

    return-object v0
.end method
