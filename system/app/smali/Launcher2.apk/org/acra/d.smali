.class public final Lorg/acra/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()I
    .registers 2

    .prologue
    .line 40
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_c} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_26

    move-result v0

    .line 52
    :goto_d
    return v0

    .line 43
    :catch_e
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    .line 45
    :catch_16
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    .line 47
    :catch_1e
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    .line 49
    :catch_26
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method
