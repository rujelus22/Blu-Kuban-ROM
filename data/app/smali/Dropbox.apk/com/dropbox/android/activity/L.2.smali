.class final enum Lcom/dropbox/android/activity/L;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/L;

.field public static final enum b:Lcom/dropbox/android/activity/L;

.field public static final enum c:Lcom/dropbox/android/activity/L;

.field private static final synthetic d:[Lcom/dropbox/android/activity/L;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/dropbox/android/activity/L;

    const-string v1, "BROWSER"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/L;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/L;->a:Lcom/dropbox/android/activity/L;

    new-instance v0, Lcom/dropbox/android/activity/L;

    const-string v1, "UPLOADS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/L;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/L;->b:Lcom/dropbox/android/activity/L;

    new-instance v0, Lcom/dropbox/android/activity/L;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/L;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/L;->c:Lcom/dropbox/android/activity/L;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/android/activity/L;

    sget-object v1, Lcom/dropbox/android/activity/L;->a:Lcom/dropbox/android/activity/L;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/L;->b:Lcom/dropbox/android/activity/L;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/L;->c:Lcom/dropbox/android/activity/L;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/android/activity/L;->d:[Lcom/dropbox/android/activity/L;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/L;
    .registers 2
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/dropbox/android/activity/L;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/L;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/L;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/dropbox/android/activity/L;->d:[Lcom/dropbox/android/activity/L;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/L;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/L;

    return-object v0
.end method
