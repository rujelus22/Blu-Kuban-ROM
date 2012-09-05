.class public Lcom/android/common/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 33
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_d} :catch_e

    .line 37
    :goto_d
    return-void

    .line 34
    :catch_e
    move-exception v0

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
