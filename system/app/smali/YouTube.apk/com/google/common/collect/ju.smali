.class final Lcom/google/common/collect/ju;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/common/collect/ju;->a:Ljava/lang/reflect/Field;

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/common/collect/ju;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ju;->a:Ljava/lang/reflect/Field;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_a

    .line 228
    return-void

    .line 226
    :catch_a
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ju;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_6

    .line 220
    return-void

    .line 218
    :catch_6
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
