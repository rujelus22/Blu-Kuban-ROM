.class public LR/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    invoke-static {}, LR/b;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LR/b;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a()Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 23
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 24
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 32
    :goto_b
    return-object v0

    .line 25
    :catch_c
    move-exception v0

    .line 32
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    sget-object v0, LR/b;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    .line 42
    :try_start_4
    sget-object v0, LR/b;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_c} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_d

    .line 57
    :goto_c
    return-void

    .line 47
    :catch_d
    move-exception v0

    .line 56
    :cond_e
    :goto_e
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 44
    :catch_12
    move-exception v0

    goto :goto_e
.end method
