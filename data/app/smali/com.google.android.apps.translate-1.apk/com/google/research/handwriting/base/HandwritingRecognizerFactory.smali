.class public Lcom/google/research/handwriting/base/HandwritingRecognizerFactory;
.super Ljava/lang/Object;
.source "HandwritingRecognizerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandwritingRecognizerFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/research/handwriting/base/HandwritingRecognizer;
    .registers 8
    .parameter "spec"

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 34
    .local v1, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/handwriting/base/HandwritingRecognizer;

    .line 35
    .local v3, result:Lcom/google/research/handwriting/base/HandwritingRecognizer;
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasSecondaryRecognizer()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 37
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getSecondaryRecognizer()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v4

    invoke-static {v4}, Lcom/google/research/handwriting/base/HandwritingRecognizerFactory;->create(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->setSecondaryRecognizer(Lcom/google/research/handwriting/base/HandwritingRecognizer;)V
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_31} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_31} :catch_45
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_31} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_31} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_31} :catch_60

    .line 55
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #result:Lcom/google/research/handwriting/base/HandwritingRecognizer;
    :cond_31
    :goto_31
    return-object v3

    .line 41
    :catch_32
    move-exception v2

    .line 42
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :goto_3a
    const/4 v3, 0x0

    goto :goto_31

    .line 43
    :catch_3c
    move-exception v2

    .line 44
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 45
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_45
    move-exception v2

    .line 46
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "IllegalArgumentException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 47
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_4e
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "InstantiationException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 49
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_57
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 51
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_60
    move-exception v2

    .line 52
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method public static create(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Landroid/content/Context;)Lcom/google/research/handwriting/base/HandwritingRecognizer;
    .registers 9
    .parameter "spec"
    .parameter "context"

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 73
    .local v1, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/handwriting/base/HandwritingRecognizer;

    .line 74
    .local v3, result:Lcom/google/research/handwriting/base/HandwritingRecognizer;
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasSecondaryRecognizer()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 76
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getSecondaryRecognizer()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/research/handwriting/base/HandwritingRecognizerFactory;->create(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Landroid/content/Context;)Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->setSecondaryRecognizer(Lcom/google/research/handwriting/base/HandwritingRecognizer;)V
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_39} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_39} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_39} :catch_4d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_39} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_39} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_39} :catch_68

    .line 94
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #result:Lcom/google/research/handwriting/base/HandwritingRecognizer;
    :cond_39
    :goto_39
    return-object v3

    .line 80
    :catch_3a
    move-exception v2

    .line 81
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :goto_42
    const/4 v3, 0x0

    goto :goto_39

    .line 82
    :catch_44
    move-exception v2

    .line 83
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 84
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_4d
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "IllegalArgumentException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 86
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_56
    move-exception v2

    .line 87
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "InstantiationException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 88
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_5f
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 90
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_68
    move-exception v2

    .line 91
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "HandwritingRecognizerFactory"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method
