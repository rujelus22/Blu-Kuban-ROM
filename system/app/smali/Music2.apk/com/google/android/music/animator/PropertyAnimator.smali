.class public Lcom/google/android/music/animator/PropertyAnimator;
.super Lcom/google/android/music/animator/Animator;
.source "PropertyAnimator.java"


# instance fields
.field private getterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGetter:Ljava/lang/reflect/Method;

.field private mPropertyName:Ljava/lang/String;

.field private mSetter:Ljava/lang/reflect/Method;

.field private mTarget:Ljava/lang/Object;

.field private setterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;FF)V
    .registers 7
    .parameter "duration"
    .parameter "target"
    .parameter "propertyName"
    .parameter "valueFrom"
    .parameter "valueTo"

    .prologue
    .line 86
    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/music/animator/Animator;-><init>(IFF)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/PropertyAnimator;->setterPropertyMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/PropertyAnimator;->getterPropertyMap:Ljava/util/HashMap;

    .line 87
    iput-object p2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;II)V
    .registers 7
    .parameter "duration"
    .parameter "target"
    .parameter "propertyName"
    .parameter "valueFrom"
    .parameter "valueTo"

    .prologue
    .line 110
    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/music/animator/Animator;-><init>(III)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/PropertyAnimator;->setterPropertyMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/PropertyAnimator;->getterPropertyMap:Ljava/util/HashMap;

    .line 111
    iput-object p2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    .line 112
    iput-object p3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private getPropertyFunction(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 11
    .parameter "prefix"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, returnVal:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, firstLetter:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, theRest:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, setterName:Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/Class;

    .line 58
    .local v0, args:[Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/google/android/music/animator/PropertyAnimator;->getValueType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v0, v8

    .line 60
    :try_start_30
    iget-object v6, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_39} :catch_3b

    move-result-object v3

    .line 64
    :goto_3a
    return-object v3

    .line 61
    :catch_3b
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/NoSuchMethodException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find setter for property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3a
.end method


# virtual methods
.method animateValue(F)V
    .registers 8
    .parameter "fraction"

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/google/android/music/animator/Animator;->animateValue(F)V

    .line 252
    iget-object v1, p0, Lcom/google/android/music/animator/PropertyAnimator;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_18

    .line 255
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/animator/PropertyAnimator;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/animator/PropertyAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_18} :catch_1e

    .line 262
    :cond_18
    :goto_18
    return-void

    .line 256
    :catch_19
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_18

    .line 258
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1e
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_18
.end method

.method initAnimation()V
    .registers 6

    .prologue
    .line 177
    invoke-super {p0}, Lcom/google/android/music/animator/Animator;->initAnimation()V

    .line 178
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mSetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3f

    .line 179
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->setterPropertyMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 180
    .local v1, propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_22

    .line 181
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    iput-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mSetter:Ljava/lang/reflect/Method;

    .line 182
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_22

    .line 225
    .end local v1           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_21
    :goto_21
    return-void

    .line 185
    .restart local v1       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_22
    const-string v2, "set"

    invoke-direct {p0, v2}, Lcom/google/android/music/animator/PropertyAnimator;->getPropertyFunction(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mSetter:Ljava/lang/reflect/Method;

    .line 186
    if-nez v1, :cond_38

    .line 187
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 188
    .restart local v1       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->setterPropertyMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_38
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mSetter:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v1           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/music/animator/PropertyAnimator;->getValueFrom()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/music/animator/PropertyAnimator;->getValueTo()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    .line 195
    :cond_4b
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_86

    .line 196
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->getterPropertyMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 197
    .restart local v1       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_69

    .line 198
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    iput-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    .line 199
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_21

    .line 202
    :cond_69
    const-string v2, "get"

    invoke-direct {p0, v2}, Lcom/google/android/music/animator/PropertyAnimator;->getPropertyFunction(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    .line 203
    if-nez v1, :cond_7f

    .line 204
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 205
    .restart local v1       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->getterPropertyMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_7f
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mPropertyName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v1           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_86
    :try_start_86
    invoke-virtual {p0}, Lcom/google/android/music/animator/PropertyAnimator;->getValueFrom()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9a

    .line 211
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/music/animator/PropertyAnimator;->setValueFrom(Ljava/lang/Object;)V

    .line 212
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/music/animator/PropertyAnimator;->getValueTo()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    .line 213
    iget-object v2, p0, Lcom/google/android/music/animator/PropertyAnimator;->mGetter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/music/animator/PropertyAnimator;->mTarget:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/music/animator/PropertyAnimator;->setValueTo(Ljava/lang/Object;)V
    :try_end_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_ae} :catch_b0
    .catch Ljava/lang/IllegalAccessException; {:try_start_86 .. :try_end_ae} :catch_b6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_86 .. :try_end_ae} :catch_bc

    goto/16 :goto_21

    .line 214
    :catch_b0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_21

    .line 217
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_b6
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_21

    .line 220
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_bc
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_21
.end method
