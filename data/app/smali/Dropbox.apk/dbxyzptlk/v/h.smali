.class final Ldbxyzptlk/v/h;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final a:Ljava/lang/reflect/Field;

.field static final b:Ljava/lang/reflect/Field;

.field static final c:Ljava/lang/reflect/Field;

.field static final d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1971
    const-string v0, "segmentShift"

    invoke-static {v0}, Ldbxyzptlk/v/h;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/h;->a:Ljava/lang/reflect/Field;

    .line 1972
    const-string v0, "segmentMask"

    invoke-static {v0}, Ldbxyzptlk/v/h;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/h;->b:Ljava/lang/reflect/Field;

    .line 1973
    const-string v0, "segments"

    invoke-static {v0}, Ldbxyzptlk/v/h;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/h;->c:Ljava/lang/reflect/Field;

    .line 1974
    const-string v0, "strategy"

    invoke-static {v0}, Ldbxyzptlk/v/h;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/h;->d:Ljava/lang/reflect/Field;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter

    .prologue
    .line 1978
    :try_start_0
    const-class v0, Ldbxyzptlk/v/e;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1979
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1980
    return-object v0

    .line 1981
    :catch_b
    move-exception v0

    .line 1982
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
