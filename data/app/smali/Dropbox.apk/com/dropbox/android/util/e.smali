.class public final enum Lcom/dropbox/android/util/e;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/util/e;

.field public static final enum b:Lcom/dropbox/android/util/e;

.field public static final enum c:Lcom/dropbox/android/util/e;

.field public static final enum d:Lcom/dropbox/android/util/e;

.field private static final synthetic e:[Lcom/dropbox/android/util/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/dropbox/android/util/e;

    const-string v1, "NO_CONFLICTS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/util/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/e;->a:Lcom/dropbox/android/util/e;

    .line 113
    new-instance v0, Lcom/dropbox/android/util/e;

    const-string v1, "OVERWRITE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/util/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    .line 114
    new-instance v0, Lcom/dropbox/android/util/e;

    const-string v1, "UPLOAD_NEW_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/util/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/e;->c:Lcom/dropbox/android/util/e;

    .line 115
    new-instance v0, Lcom/dropbox/android/util/e;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/util/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/e;->d:Lcom/dropbox/android/util/e;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/android/util/e;

    sget-object v1, Lcom/dropbox/android/util/e;->a:Lcom/dropbox/android/util/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/util/e;->c:Lcom/dropbox/android/util/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/util/e;->d:Lcom/dropbox/android/util/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/android/util/e;->e:[Lcom/dropbox/android/util/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/util/e;
    .registers 2
    .parameter

    .prologue
    .line 111
    const-class v0, Lcom/dropbox/android/util/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/e;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/util/e;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/android/util/e;->e:[Lcom/dropbox/android/util/e;

    invoke-virtual {v0}, [Lcom/dropbox/android/util/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/util/e;

    return-object v0
.end method
