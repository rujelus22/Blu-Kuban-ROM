.class final enum Lcom/dropbox/android/service/y;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/service/y;

.field public static final enum b:Lcom/dropbox/android/service/y;

.field public static final enum c:Lcom/dropbox/android/service/y;

.field private static final synthetic d:[Lcom/dropbox/android/service/y;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/dropbox/android/service/y;

    const-string v1, "TAP_AUTO_CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/service/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/service/y;->a:Lcom/dropbox/android/service/y;

    new-instance v0, Lcom/dropbox/android/service/y;

    const-string v1, "TAP_NON_CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/service/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/service/y;->b:Lcom/dropbox/android/service/y;

    new-instance v0, Lcom/dropbox/android/service/y;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/service/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/service/y;->c:Lcom/dropbox/android/service/y;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/android/service/y;

    sget-object v1, Lcom/dropbox/android/service/y;->a:Lcom/dropbox/android/service/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/service/y;->b:Lcom/dropbox/android/service/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/service/y;->c:Lcom/dropbox/android/service/y;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/android/service/y;->d:[Lcom/dropbox/android/service/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/service/y;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/dropbox/android/service/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/y;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/service/y;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/dropbox/android/service/y;->d:[Lcom/dropbox/android/service/y;

    invoke-virtual {v0}, [Lcom/dropbox/android/service/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/service/y;

    return-object v0
.end method
