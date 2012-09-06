.class final Lcom/google/common/base/Flags$3;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Flags;->registerUpdateFlags(Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Ljava/lang/reflect/Method;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/common/base/Flags$3;->val$m:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/google/common/base/Flags$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/google/common/base/Flags$3;->val$m:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/common/base/Flags$3;->val$object:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_16

    .line 450
    return-void

    .line 445
    :catch_b
    move-exception v0

    .line 446
    .local v0, exc:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 447
    .end local v0           #exc:Ljava/lang/IllegalAccessException;
    :catch_16
    move-exception v0

    .line 448
    .local v0, exc:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
