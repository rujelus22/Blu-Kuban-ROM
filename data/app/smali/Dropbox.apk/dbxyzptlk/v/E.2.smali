.class final Ldbxyzptlk/v/E;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final a:Ljava/lang/reflect/Field;

.field static final b:Ljava/lang/reflect/Field;

.field static final c:Ljava/lang/reflect/Field;

.field static final d:Ljava/lang/reflect/Field;

.field static final e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 703
    const-string v0, "keyStrength"

    invoke-static {v0}, Ldbxyzptlk/v/E;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/E;->a:Ljava/lang/reflect/Field;

    .line 704
    const-string v0, "valueStrength"

    invoke-static {v0}, Ldbxyzptlk/v/E;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/E;->b:Ljava/lang/reflect/Field;

    .line 705
    const-string v0, "expirationNanos"

    invoke-static {v0}, Ldbxyzptlk/v/E;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/E;->c:Ljava/lang/reflect/Field;

    .line 706
    const-string v0, "internals"

    invoke-static {v0}, Ldbxyzptlk/v/E;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/E;->d:Ljava/lang/reflect/Field;

    .line 707
    const-string v0, "map"

    invoke-static {v0}, Ldbxyzptlk/v/E;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/v/E;->e:Ljava/lang/reflect/Field;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter

    .prologue
    .line 711
    :try_start_0
    const-class v0, Ldbxyzptlk/v/C;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 712
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_b

    .line 713
    return-object v0

    .line 714
    :catch_b
    move-exception v0

    .line 715
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
