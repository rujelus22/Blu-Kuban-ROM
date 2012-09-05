.class final Lcom/google/common/collect/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/reflect/Field;

.field static final b:Ljava/lang/reflect/Field;

.field static final c:Ljava/lang/reflect/Field;

.field static final d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1905
    const-string v0, "segmentShift"

    invoke-static {v0}, Lcom/google/common/collect/bc;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/bc;->a:Ljava/lang/reflect/Field;

    .line 1906
    const-string v0, "segmentMask"

    invoke-static {v0}, Lcom/google/common/collect/bc;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/bc;->b:Ljava/lang/reflect/Field;

    .line 1907
    const-string v0, "segments"

    invoke-static {v0}, Lcom/google/common/collect/bc;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/bc;->c:Ljava/lang/reflect/Field;

    .line 1908
    const-string v0, "strategy"

    invoke-static {v0}, Lcom/google/common/collect/bc;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/bc;->d:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 1903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter

    .prologue
    .line 1912
    :try_start_0
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1913
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1914
    return-object v0

    .line 1915
    :catch_b
    move-exception v0

    .line 1916
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
