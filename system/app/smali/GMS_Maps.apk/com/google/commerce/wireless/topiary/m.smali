.class Lcom/google/commerce/wireless/topiary/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:J

.field private static c:Landroid/os/Debug$MemoryInfo;

.field private static d:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    sput-wide v0, Lcom/google/commerce/wireless/topiary/m;->a:J

    .line 21
    sput-wide v0, Lcom/google/commerce/wireless/topiary/m;->b:J

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/google/commerce/wireless/topiary/m;->c:Landroid/os/Debug$MemoryInfo;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/google/commerce/wireless/topiary/m;->d:Landroid/app/ActivityManager;

    if-nez v0, :cond_e

    .line 28
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/google/commerce/wireless/topiary/m;->d:Landroid/app/ActivityManager;

    .line 31
    :cond_e
    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 92
    return-void
.end method
