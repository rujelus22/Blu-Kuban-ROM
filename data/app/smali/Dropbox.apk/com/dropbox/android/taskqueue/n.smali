.class public final enum Lcom/dropbox/android/taskqueue/n;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/taskqueue/n;

.field public static final enum b:Lcom/dropbox/android/taskqueue/n;

.field public static final enum c:Lcom/dropbox/android/taskqueue/n;

.field private static final synthetic d:[Lcom/dropbox/android/taskqueue/n;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/dropbox/android/taskqueue/n;

    const-string v1, "SUCCEEDED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/taskqueue/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    .line 53
    new-instance v0, Lcom/dropbox/android/taskqueue/n;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/taskqueue/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    .line 54
    new-instance v0, Lcom/dropbox/android/taskqueue/n;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/taskqueue/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/taskqueue/n;->c:Lcom/dropbox/android/taskqueue/n;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/android/taskqueue/n;

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->b:Lcom/dropbox/android/taskqueue/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->c:Lcom/dropbox/android/taskqueue/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/android/taskqueue/n;->d:[Lcom/dropbox/android/taskqueue/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/n;
    .registers 2
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/dropbox/android/taskqueue/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/n;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/taskqueue/n;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/dropbox/android/taskqueue/n;->d:[Lcom/dropbox/android/taskqueue/n;

    invoke-virtual {v0}, [Lcom/dropbox/android/taskqueue/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/taskqueue/n;

    return-object v0
.end method
