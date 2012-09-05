.class public Lkw;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Ljava/lang/reflect/Method;

.field protected final b:Ljava/lang/reflect/Field;

.field protected final c:Ljava/lang/String;

.field protected final d:Lnd;

.field protected final e:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Z

.field protected final g:Ljava/lang/Object;

.field protected h:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected i:Lhu;

.field protected j:Lnd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhj;Lhu;Lnd;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lhu;",
            "Lnd;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lkw;->c:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lkw;->e:Lhj;

    .line 124
    iput-object p3, p0, Lkw;->i:Lhu;

    .line 125
    iput-object p4, p0, Lkw;->d:Lnd;

    .line 126
    iput-object p5, p0, Lkw;->a:Ljava/lang/reflect/Method;

    .line 127
    iput-object p6, p0, Lkw;->b:Ljava/lang/reflect/Field;

    .line 128
    iput-boolean p7, p0, Lkw;->f:Z

    .line 129
    iput-object p8, p0, Lkw;->g:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method protected constructor <init>(Lkw;)V
    .registers 3
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iget-object v0, p1, Lkw;->c:Ljava/lang/String;

    iput-object v0, p0, Lkw;->c:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lkw;->e:Lhj;

    iput-object v0, p0, Lkw;->e:Lhj;

    .line 139
    iget-object v0, p1, Lkw;->i:Lhu;

    iput-object v0, p0, Lkw;->i:Lhu;

    .line 140
    iget-object v0, p1, Lkw;->d:Lnd;

    iput-object v0, p0, Lkw;->d:Lnd;

    .line 141
    iget-object v0, p1, Lkw;->a:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lkw;->a:Ljava/lang/reflect/Method;

    .line 142
    iget-object v0, p1, Lkw;->b:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lkw;->b:Ljava/lang/reflect/Field;

    .line 143
    iget-boolean v0, p1, Lkw;->f:Z

    iput-boolean v0, p0, Lkw;->f:Z

    .line 144
    iget-object v0, p1, Lkw;->g:Ljava/lang/Object;

    iput-object v0, p0, Lkw;->g:Ljava/lang/Object;

    .line 145
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lkw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lhj;)Lkw;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkw;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lkw;

    iget-object v1, p0, Lkw;->c:Ljava/lang/String;

    iget-object v3, p0, Lkw;->i:Lhu;

    iget-object v4, p0, Lkw;->d:Lnd;

    iget-object v5, p0, Lkw;->a:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lkw;->b:Ljava/lang/reflect/Field;

    iget-boolean v7, p0, Lkw;->f:Z

    iget-object v8, p0, Lkw;->g:Ljava/lang/Object;

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lkw;-><init>(Ljava/lang/String;Lhj;Lhu;Lnd;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lkw;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lkw;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    :goto_d
    if-nez v0, :cond_27

    .line 243
    iget-boolean v1, p0, Lkw;->f:Z

    if-nez v1, :cond_1f

    .line 244
    iget-object v1, p0, Lkw;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lez;->a(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    .line 272
    :cond_1f
    :goto_1f
    return-void

    .line 240
    :cond_20
    iget-object v0, p0, Lkw;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 250
    :cond_27
    if-ne v0, p1, :cond_31

    .line 251
    new-instance v0, Lhg;

    const-string v1, "Direct self-reference leading to cycle"

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_31
    iget-object v1, p0, Lkw;->g:Ljava/lang/Object;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lkw;->g:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 256
    :cond_3d
    iget-object v1, p0, Lkw;->e:Lhj;

    .line 257
    if-nez v1, :cond_53

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lkw;->j:Lnd;

    if-eqz v2, :cond_60

    .line 260
    iget-object v2, p0, Lkw;->j:Lnd;

    invoke-virtual {v2, v1}, Lnd;->e(Ljava/lang/Class;)Lnd;

    move-result-object v1

    .line 261
    invoke-virtual {p3, v1}, Lhs;->a(Lnd;)Lhj;

    move-result-object v1

    .line 266
    :cond_53
    :goto_53
    iget-object v2, p0, Lkw;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lez;->a(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lkw;->i:Lhu;

    if-nez v2, :cond_65

    .line 268
    invoke-virtual {v1, v0, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_1f

    .line 263
    :cond_60
    invoke-virtual {p3, v1}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v1

    goto :goto_53

    .line 270
    :cond_65
    iget-object v2, p0, Lkw;->i:Lhu;

    invoke-virtual {v1, v0, p2, p3, v2}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V

    goto :goto_1f
.end method

.method public final a(Lnd;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lkw;->j:Lnd;

    .line 178
    return-void
.end method

.method public final a([Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lkw;->h:[Ljava/lang/Class;

    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lkw;->e:Lhj;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Lnd;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lkw;->d:Lnd;

    return-object v0
.end method

.method public final d()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lkw;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 219
    iget-object v0, p0, Lkw;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 221
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lkw;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_a
.end method

.method public final e()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lkw;->h:[Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkw;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Lkw;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_49

    .line 296
    const-string v1, "via method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkw;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkw;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :goto_3f
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_49
    const-string v1, "field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkw;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkw;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f
.end method
