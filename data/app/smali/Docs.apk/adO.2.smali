.class public abstract LadO;
.super Ljava/lang/Object;
.source "JsonGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
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

.method public abstract a(LalC;)V
.end method

.method public abstract a(LalE;)V
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8
    .parameter

    .prologue
    .line 125
    if-nez p1, :cond_3

    .line 187
    :goto_2
    return-void

    .line 128
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 129
    invoke-static {p1}, Laeh;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 130
    invoke-virtual {p0}, LadO;->f()V

    goto :goto_2

    .line 131
    :cond_11
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 132
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LadO;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 133
    :cond_1b
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_25

    .line 134
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, LadO;->a(Ljava/math/BigDecimal;)V

    goto :goto_2

    .line 135
    :cond_25
    instance-of v1, p1, Ljava/math/BigInteger;

    if-eqz v1, :cond_2f

    .line 136
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, LadO;->a(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 137
    :cond_2f
    instance-of v1, p1, LalC;

    if-eqz v1, :cond_39

    .line 138
    check-cast p1, LalC;

    invoke-virtual {p0, p1}, LadO;->a(LalC;)V

    goto :goto_2

    .line 139
    :cond_39
    instance-of v1, p1, LalE;

    if-eqz v1, :cond_43

    .line 140
    check-cast p1, LalE;

    invoke-virtual {p0, p1}, LadO;->a(LalE;)V

    goto :goto_2

    .line 141
    :cond_43
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_51

    .line 143
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LadO;->a(D)V

    goto :goto_2

    .line 144
    :cond_51
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5f

    .line 145
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LadO;->a(J)V

    goto :goto_2

    .line 146
    :cond_5f
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_6d

    .line 148
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LadO;->a(F)V

    goto :goto_2

    .line 149
    :cond_6d
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_79

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_79

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_83

    .line 150
    :cond_79
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LadO;->a(I)V

    goto :goto_2

    .line 151
    :cond_83
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_92

    .line 152
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LadO;->a(Z)V

    goto/16 :goto_2

    .line 153
    :cond_92
    instance-of v1, p1, Laem;

    if-eqz v1, :cond_a1

    .line 154
    check-cast p1, Laem;

    invoke-virtual {p1}, Laem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LadO;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 155
    :cond_a1
    instance-of v1, p1, Ljava/lang/Iterable;

    if-nez v1, :cond_ab

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 156
    :cond_ab
    invoke-virtual {p0}, LadO;->b()V

    .line 157
    invoke-static {p1}, Laez;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-virtual {p0, v1}, LadO;->a(Ljava/lang/Object;)V

    goto :goto_b6

    .line 160
    :cond_c4
    invoke-virtual {p0}, LadO;->c()V

    goto/16 :goto_2

    .line 161
    :cond_c9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 162
    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Laen;->a(Ljava/lang/Enum;)Laen;

    move-result-object v0

    invoke-virtual {v0}, Laen;->a()Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_e0

    .line 164
    invoke-virtual {p0}, LadO;->f()V

    goto/16 :goto_2

    .line 166
    :cond_e0
    invoke-virtual {p0, v0}, LadO;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    :cond_e5
    invoke-virtual {p0}, LadO;->d()V

    .line 170
    invoke-static {v0}, Laef;->a(Ljava/lang/Class;)Laef;

    move-result-object v2

    .line 171
    invoke-static {p1}, Laeh;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f8
    :goto_f8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_f8

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_126

    .line 176
    invoke-virtual {v2, v0}, Laef;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 177
    if-eqz v4, :cond_126

    const-class v5, LadS;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_126

    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_126
    invoke-virtual {p0, v0}, LadO;->a(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, v1}, LadO;->a(Ljava/lang/Object;)V

    goto :goto_f8

    .line 185
    :cond_12d
    invoke-virtual {p0}, LadO;->e()V

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
    .line 202
    return-void
.end method
