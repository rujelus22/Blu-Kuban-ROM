.class Lcom/google/android/apps/common/reflect/ReflectionHelper$1;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/reflect/ReflectionHelper;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;
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
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/reflect/ReflectionHelper;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$1;->this$0:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    iput-object p2, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$1;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/common/reflect/ReflectionHelper$1;->val$className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/common/reflect/ReflectionHelper$1;->call()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
