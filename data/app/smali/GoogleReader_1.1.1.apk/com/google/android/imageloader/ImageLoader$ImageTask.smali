.class Lcom/google/android/imageloader/ImageLoader$ImageTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
        "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/imageloader/ImageLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/imageloader/ImageLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/imageloader/ImageLoader;Lcom/google/android/imageloader/ImageLoader$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;-><init>(Lcom/google/android/imageloader/ImageLoader;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 859
    check-cast p1, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->doInBackground([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Ljava/lang/Void;
    .registers 8
    .parameter "requests"

    .prologue
    .line 898
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_19

    aget-object v3, v0, v1

    .line 899
    .local v3, request:Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-virtual {v3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->execute()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 900
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 898
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 903
    .end local v3           #request:Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    :cond_19
    const/4 v4, 0x0

    return-object v4
.end method

.method public final varargs executeOnThreadPool([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Landroid/os/AsyncTask;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_a

    .line 865
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 887
    :goto_9
    return-object v0

    .line 866
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_15

    .line 868
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_9

    .line 873
    :cond_15
    :try_start_15
    const-class v0, Landroid/os/AsyncTask;

    const-string v1, "executeOnExecutor"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/concurrent/Executor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 875
    const-class v1, Landroid/os/AsyncTask;

    const-string v2, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 876
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 877
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_43} :catch_45
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_43} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_43} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_43} :catch_60

    move-object v0, p0

    .line 887
    goto :goto_9

    .line 878
    :catch_45
    move-exception v0

    .line 879
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 880
    :catch_4e
    move-exception v0

    .line 881
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected NoSuchFieldException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 882
    :catch_57
    move-exception v0

    .line 883
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 884
    :catch_60
    move-exception v0

    .line 885
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 859
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-static {v0}, Lcom/google/android/imageloader/ImageLoader;->access$1110(Lcom/google/android/imageloader/ImageLoader;)I

    .line 916
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-virtual {v0}, Lcom/google/android/imageloader/ImageLoader;->flushRequests()V

    .line 917
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-static {v0}, Lcom/google/android/imageloader/ImageLoader;->access$1108(Lcom/google/android/imageloader/ImageLoader;)I

    .line 894
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V
    .registers 6
    .parameter "values"

    .prologue
    .line 908
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_d

    aget-object v3, v0, v1

    .line 909
    .local v3, request:Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-virtual {v3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->publishResult()V

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 911
    .end local v3           #request:Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    :cond_d
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 859
    check-cast p1, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->onProgressUpdate([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    return-void
.end method
