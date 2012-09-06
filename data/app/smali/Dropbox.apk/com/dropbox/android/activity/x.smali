.class final enum Lcom/dropbox/android/activity/x;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/x;

.field public static final enum b:Lcom/dropbox/android/activity/x;

.field public static final enum c:Lcom/dropbox/android/activity/x;

.field public static final enum d:Lcom/dropbox/android/activity/x;

.field private static final synthetic e:[Lcom/dropbox/android/activity/x;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/dropbox/android/activity/x;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/x;->a:Lcom/dropbox/android/activity/x;

    new-instance v0, Lcom/dropbox/android/activity/x;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/x;->b:Lcom/dropbox/android/activity/x;

    new-instance v0, Lcom/dropbox/android/activity/x;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/x;->c:Lcom/dropbox/android/activity/x;

    new-instance v0, Lcom/dropbox/android/activity/x;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/activity/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/x;->d:Lcom/dropbox/android/activity/x;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/android/activity/x;

    sget-object v1, Lcom/dropbox/android/activity/x;->a:Lcom/dropbox/android/activity/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/x;->b:Lcom/dropbox/android/activity/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/x;->c:Lcom/dropbox/android/activity/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/activity/x;->d:Lcom/dropbox/android/activity/x;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/android/activity/x;->e:[Lcom/dropbox/android/activity/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/x;
    .registers 2
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/dropbox/android/activity/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/x;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/x;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/dropbox/android/activity/x;->e:[Lcom/dropbox/android/activity/x;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/x;

    return-object v0
.end method
