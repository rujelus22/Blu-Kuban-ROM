.class public Lcom/sec/android/app/snsaccountli/util/SnsAccountLiUtil;
.super Ljava/lang/Object;
.source "SnsAccountLiUtil.java"


# static fields
.field private static mbIsLoggable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/snsaccountli/util/SnsAccountLiUtil;->mbIsLoggable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggable()Z
    .registers 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/sec/android/app/snsaccountli/util/SnsAccountLiUtil;->mbIsLoggable:Z

    return v0
.end method

.method public static setDebugMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 13
    sput-boolean p0, Lcom/sec/android/app/snsaccountli/util/SnsAccountLiUtil;->mbIsLoggable:Z

    .line 14
    const-string v0, "SnsAccountLi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mbIsLoggable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/snsaccountli/util/SnsAccountLiUtil;->mbIsLoggable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method
