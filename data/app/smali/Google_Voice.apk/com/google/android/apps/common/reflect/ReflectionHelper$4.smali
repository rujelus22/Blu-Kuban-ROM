.class Lcom/google/android/apps/common/reflect/ReflectionHelper$4;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/reflect/ReflectionHelper;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$instance:Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;->this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    iput-object p2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;->val$instance:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;->val$method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;->val$instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$4;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
