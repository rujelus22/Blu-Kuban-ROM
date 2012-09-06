.class Lcom/google/android/apps/googlevoice/util/Delegator$1;
.super Ljava/lang/Object;
.source "Delegator.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/util/Delegator;->adapt(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/util/Delegator;

.field final synthetic val$delegate:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/util/Delegator;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/util/Delegator$1;->this$0:Lcom/google/android/apps/googlevoice/util/Delegator;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/util/Delegator$1;->val$delegate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    const-string v0, "getDelegate"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_16

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/Delegator$1;->val$delegate:Ljava/lang/Object;

    .line 80
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/Delegator$1;->val$delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/Delegator$1;->val$delegate:Ljava/lang/Object;

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15
.end method
