.class Lcom/google/android/apps/common/reflect/ReflectionHelper$7;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/reflect/ReflectionHelper;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$7;->this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    iput-object p2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$7;->val$constructor:Ljava/lang/reflect/Constructor;

    iput-object p3, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$7;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$7;->val$constructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$7;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
