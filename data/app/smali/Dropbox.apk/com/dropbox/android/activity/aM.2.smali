.class final enum Lcom/dropbox/android/activity/aM;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/aM;

.field public static final enum b:Lcom/dropbox/android/activity/aM;

.field public static final enum c:Lcom/dropbox/android/activity/aM;

.field private static final synthetic d:[Lcom/dropbox/android/activity/aM;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    new-instance v0, Lcom/dropbox/android/activity/aM;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/aM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aM;->a:Lcom/dropbox/android/activity/aM;

    .line 349
    new-instance v0, Lcom/dropbox/android/activity/aM;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/aM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aM;->b:Lcom/dropbox/android/activity/aM;

    .line 350
    new-instance v0, Lcom/dropbox/android/activity/aM;

    const-string v1, "SIGNUP"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/aM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aM;->c:Lcom/dropbox/android/activity/aM;

    .line 347
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/android/activity/aM;

    sget-object v1, Lcom/dropbox/android/activity/aM;->a:Lcom/dropbox/android/activity/aM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/aM;->b:Lcom/dropbox/android/activity/aM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/aM;->c:Lcom/dropbox/android/activity/aM;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/android/activity/aM;->d:[Lcom/dropbox/android/activity/aM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/aM;
    .registers 2
    .parameter

    .prologue
    .line 347
    const-class v0, Lcom/dropbox/android/activity/aM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/aM;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/aM;
    .registers 1

    .prologue
    .line 347
    sget-object v0, Lcom/dropbox/android/activity/aM;->d:[Lcom/dropbox/android/activity/aM;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/aM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/aM;

    return-object v0
.end method
