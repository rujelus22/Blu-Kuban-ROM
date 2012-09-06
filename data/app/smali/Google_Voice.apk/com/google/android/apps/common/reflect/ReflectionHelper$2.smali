.class Lcom/google/android/apps/common/reflect/ReflectionHelper$2;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$parameterTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    iput-object p2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->val$clazz:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->val$methodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->val$parameterTypes:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->call()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->val$clazz:Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$2;->val$parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
