.class public Lcom/google/android/music/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static final sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/android/music/SharedPreferencesCompat;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .parameter "editor"

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/music/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    .line 36
    :try_start_4
    sget-object v0, Lcom/google/android/music/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_c} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_d

    .line 45
    :goto_c
    return-void

    .line 40
    :catch_d
    move-exception v0

    .line 44
    :cond_e
    :goto_e
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 38
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_13

    .line 24
    :try_start_6
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 25
    .local v0, cls:Ljava/lang/Class;
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_12

    move-result-object v1

    .line 30
    :goto_11
    return-object v1

    .line 26
    :catch_12
    move-exception v1

    .line 30
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method
