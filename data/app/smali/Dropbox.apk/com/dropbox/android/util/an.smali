.class public final Lcom/dropbox/android/util/an;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/an;->a:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/an;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/dropbox/android/util/an;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 23
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 25
    sget-object v2, Lcom/dropbox/android/util/an;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 26
    sget-object v0, Lcom/dropbox/android/util/an;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 33
    :goto_19
    return-object v0

    .line 28
    :cond_1a
    if-eqz v0, :cond_2a

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    sget-object v2, Lcom/dropbox/android/util/an;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 33
    :cond_2a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    const-string p1, "package_icon"

    .line 77
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_4x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dropbox/android/util/an;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p1, :cond_4

    .line 69
    :goto_3
    return v0

    .line 42
    :cond_4
    const-string v1, "package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 44
    const-string p1, "package_icon"

    .line 47
    :cond_e
    sget-object v1, Lcom/dropbox/android/util/an;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 49
    sget-object v0, Lcom/dropbox/android/util/an;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 53
    :cond_23
    :try_start_23
    const-class v1, Lcom/dropbox/android/h;

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 58
    sget-object v2, Lcom/dropbox/android/util/an;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_37} :catch_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_23 .. :try_end_37} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_37} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_37} :catch_4f

    move v0, v1

    .line 59
    goto :goto_3

    .line 60
    :catch_39
    move-exception v1

    .line 61
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_3

    .line 63
    :catch_44
    move-exception v1

    .line 64
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_3

    .line 65
    :catch_4f
    move-exception v1

    .line 66
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_3

    .line 62
    :catch_5a
    move-exception v1

    goto :goto_3
.end method
