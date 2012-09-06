.class public abstract Lcom/google/api/client/json/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(D)V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(J)V
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8
    .parameter

    .prologue
    .line 104
    if-nez p1, :cond_3

    .line 162
    :goto_2
    return-void

    .line 107
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 108
    invoke-static {p1}, Lcom/google/api/client/util/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 109
    invoke-virtual {p0}, Lcom/google/api/client/json/d;->f()V

    goto :goto_2

    .line 110
    :cond_11
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 111
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/api/client/json/d;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_1b
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_25

    .line 113
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/google/api/client/json/d;->a(Ljava/math/BigDecimal;)V

    goto :goto_2

    .line 114
    :cond_25
    instance-of v1, p1, Ljava/math/BigInteger;

    if-eqz v1, :cond_2f

    .line 115
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/google/api/client/json/d;->a(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 116
    :cond_2f
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_3d

    .line 118
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/json/d;->a(D)V

    goto :goto_2

    .line 119
    :cond_3d
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4b

    .line 120
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/json/d;->a(J)V

    goto :goto_2

    .line 121
    :cond_4b
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_59

    .line 123
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/d;->a(F)V

    goto :goto_2

    .line 124
    :cond_59
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_65

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_65

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_6f

    .line 125
    :cond_65
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/d;->a(I)V

    goto :goto_2

    .line 126
    :cond_6f
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7d

    .line 127
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/d;->a(Z)V

    goto :goto_2

    .line 128
    :cond_7d
    instance-of v1, p1, Lcom/google/api/client/util/DateTime;

    if-eqz v1, :cond_8c

    .line 129
    check-cast p1, Lcom/google/api/client/util/DateTime;

    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/d;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 130
    :cond_8c
    instance-of v1, p1, Ljava/lang/Iterable;

    if-nez v1, :cond_96

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 131
    :cond_96
    invoke-virtual {p0}, Lcom/google/api/client/json/d;->b()V

    .line 132
    invoke-static {p1}, Lcom/google/api/client/util/u;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 133
    invoke-virtual {p0, v1}, Lcom/google/api/client/json/d;->a(Ljava/lang/Object;)V

    goto :goto_a1

    .line 135
    :cond_af
    invoke-virtual {p0}, Lcom/google/api/client/json/d;->c()V

    goto/16 :goto_2

    .line 136
    :cond_b4
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 137
    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lcom/google/api/client/util/n;->a(Ljava/lang/Enum;)Lcom/google/api/client/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-nez v0, :cond_cb

    .line 139
    invoke-virtual {p0}, Lcom/google/api/client/json/d;->f()V

    goto/16 :goto_2

    .line 141
    :cond_cb
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/d;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 144
    :cond_d0
    invoke-virtual {p0}, Lcom/google/api/client/json/d;->d()V

    .line 145
    invoke-static {v0}, Lcom/google/api/client/util/g;->a(Ljava/lang/Class;)Lcom/google/api/client/util/g;

    move-result-object v2

    .line 146
    invoke-static {p1}, Lcom/google/api/client/util/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e3
    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_118

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_e3

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_111

    .line 151
    invoke-virtual {v2, v0}, Lcom/google/api/client/util/g;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 152
    if-eqz v4, :cond_111

    const-class v5, Lcom/google/api/client/json/g;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_111

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_111
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/d;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/google/api/client/json/d;->a(Ljava/lang/Object;)V

    goto :goto_e3

    .line 160
    :cond_118
    invoke-virtual {p0}, Lcom/google/api/client/json/d;->e()V

    goto/16 :goto_2
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/math/BigDecimal;)V
.end method

.method public abstract a(Ljava/math/BigInteger;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public g()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method
