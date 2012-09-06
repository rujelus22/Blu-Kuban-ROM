.class Lcom/google/android/apps/common/reflect/ReflectionHelper$5;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/reflect/ReflectionHelper;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
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

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$5;->this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    iput-object p2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$5;->val$field:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$5;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$5;->val$field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$5;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
