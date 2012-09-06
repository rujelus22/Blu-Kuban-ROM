.class final enum Lcom/dropbox/android/activity/delegate/G;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/delegate/G;

.field public static final enum b:Lcom/dropbox/android/activity/delegate/G;

.field public static final enum c:Lcom/dropbox/android/activity/delegate/G;

.field private static final synthetic d:[Lcom/dropbox/android/activity/delegate/G;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/dropbox/android/activity/delegate/G;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/G;->a:Lcom/dropbox/android/activity/delegate/G;

    .line 109
    new-instance v0, Lcom/dropbox/android/activity/delegate/G;

    const-string v1, "ALREADY_EXISTS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/delegate/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/G;->b:Lcom/dropbox/android/activity/delegate/G;

    .line 110
    new-instance v0, Lcom/dropbox/android/activity/delegate/G;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/delegate/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/G;->c:Lcom/dropbox/android/activity/delegate/G;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/android/activity/delegate/G;

    sget-object v1, Lcom/dropbox/android/activity/delegate/G;->a:Lcom/dropbox/android/activity/delegate/G;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/delegate/G;->b:Lcom/dropbox/android/activity/delegate/G;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/delegate/G;->c:Lcom/dropbox/android/activity/delegate/G;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/android/activity/delegate/G;->d:[Lcom/dropbox/android/activity/delegate/G;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/G;
    .registers 2
    .parameter

    .prologue
    .line 107
    const-class v0, Lcom/dropbox/android/activity/delegate/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/G;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/delegate/G;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/android/activity/delegate/G;->d:[Lcom/dropbox/android/activity/delegate/G;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/delegate/G;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/delegate/G;

    return-object v0
.end method
