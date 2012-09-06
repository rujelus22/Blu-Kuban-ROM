.class Lcom/google/common/base/Flags$2;
.super Lcom/google/common/flags/Flag;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Flags;->registerMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Flags;

.field final synthetic val$flagName:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/base/Flags;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/common/base/Flags$2;->this$0:Lcom/google/common/base/Flags;

    iput-object p3, p0, Lcom/google/common/base/Flags$2;->val$method:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/google/common/base/Flags$2;->val$object:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/common/base/Flags$2;->val$flagName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/google/common/base/Flags$2;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "value"

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/google/common/base/Flags$2;->val$method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/common/base/Flags$2;->val$object:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/base/Flags$2;->val$flagName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_21

    .line 373
    return-object p1

    .line 374
    :catch_13
    move-exception v0

    .line 375
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 376
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_1a
    move-exception v0

    .line 377
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 378
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_21
    move-exception v0

    .line 379
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
