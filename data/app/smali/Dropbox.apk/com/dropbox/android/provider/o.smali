.class final enum Lcom/dropbox/android/provider/o;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/provider/o;

.field public static final enum b:Lcom/dropbox/android/provider/o;

.field public static final enum c:Lcom/dropbox/android/provider/o;

.field public static final enum d:Lcom/dropbox/android/provider/o;

.field public static final enum e:Lcom/dropbox/android/provider/o;

.field private static final synthetic f:[Lcom/dropbox/android/provider/o;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/dropbox/android/provider/o;

    const-string v1, "BASE"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/provider/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/o;->a:Lcom/dropbox/android/provider/o;

    new-instance v0, Lcom/dropbox/android/provider/o;

    const-string v1, "INTERNAL_ROOT"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/provider/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/o;->b:Lcom/dropbox/android/provider/o;

    new-instance v0, Lcom/dropbox/android/provider/o;

    const-string v1, "SD_CARD_ROOT"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/provider/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/o;->c:Lcom/dropbox/android/provider/o;

    new-instance v0, Lcom/dropbox/android/provider/o;

    const-string v1, "INTERNAL_DIR"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/provider/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/o;->d:Lcom/dropbox/android/provider/o;

    new-instance v0, Lcom/dropbox/android/provider/o;

    const-string v1, "SD_CARD_DIR"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/provider/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/provider/o;->e:Lcom/dropbox/android/provider/o;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/android/provider/o;

    sget-object v1, Lcom/dropbox/android/provider/o;->a:Lcom/dropbox/android/provider/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/provider/o;->b:Lcom/dropbox/android/provider/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/provider/o;->c:Lcom/dropbox/android/provider/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/provider/o;->d:Lcom/dropbox/android/provider/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/provider/o;->e:Lcom/dropbox/android/provider/o;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/android/provider/o;->f:[Lcom/dropbox/android/provider/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/provider/o;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/android/provider/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/o;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/provider/o;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/dropbox/android/provider/o;->f:[Lcom/dropbox/android/provider/o;

    invoke-virtual {v0}, [Lcom/dropbox/android/provider/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/provider/o;

    return-object v0
.end method
