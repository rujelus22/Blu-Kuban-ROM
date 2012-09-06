.class Lcom/google/android/apps/common/reflect/ReflectionHelper$3;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/reflect/ReflectionHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$fieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;->this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    iput-object p2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;->val$clazz:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;->val$fieldName:Ljava/lang/String;

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
    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;->call()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;->val$clazz:Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$3;->val$fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
