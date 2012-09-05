.class public Lka$a;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lka",
        "<",
        "Lka$a;",
        ">;"
    }
.end annotation

.annotation runtime Lfm;
    b = .enum Lfm$a;->PUBLIC_ONLY:Lfm$a;
    c = .enum Lfm$a;->PUBLIC_ONLY:Lfm$a;
    d = .enum Lfm$a;->ANY:Lfm$a;
    e = .enum Lfm$a;->ANY:Lfm$a;
    f = .enum Lfm$a;->PUBLIC_ONLY:Lfm$a;
.end annotation


# static fields
.field protected static final a:Lka$a;


# instance fields
.field protected final b:Lfm$a;

.field protected final c:Lfm$a;

.field protected final d:Lfm$a;

.field protected final e:Lfm$a;

.field protected final f:Lfm$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 145
    new-instance v1, Lka$a;

    const-class v0, Lka$a;

    const-class v2, Lfm;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-direct {v1, v0}, Lka$a;-><init>(Lfm;)V

    sput-object v1, Lka$a;->a:Lka$a;

    return-void
.end method

.method private constructor <init>(Lfm$a;Lfm$a;Lfm$a;Lfm$a;Lfm$a;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lka$a;->b:Lfm$a;

    .line 178
    iput-object p2, p0, Lka$a;->c:Lfm$a;

    .line 179
    iput-object p3, p0, Lka$a;->d:Lfm$a;

    .line 180
    iput-object p4, p0, Lka$a;->e:Lfm$a;

    .line 181
    iput-object p5, p0, Lka$a;->f:Lfm$a;

    .line 182
    return-void
.end method

.method private constructor <init>(Lfm;)V
    .registers 4
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-interface {p1}, Lfm;->a()[Lfw;

    move-result-object v0

    .line 165
    sget-object v1, Lfw;->GETTER:Lfw;

    invoke-static {v0, v1}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Lfm;->b()Lfm$a;

    move-result-object v1

    :goto_13
    iput-object v1, p0, Lka$a;->b:Lfm$a;

    .line 166
    sget-object v1, Lfw;->IS_GETTER:Lfw;

    invoke-static {v0, v1}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p1}, Lfm;->c()Lfm$a;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lka$a;->c:Lfm$a;

    .line 167
    sget-object v1, Lfw;->SETTER:Lfw;

    invoke-static {v0, v1}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p1}, Lfm;->d()Lfm$a;

    move-result-object v1

    :goto_2f
    iput-object v1, p0, Lka$a;->d:Lfm$a;

    .line 168
    sget-object v1, Lfw;->CREATOR:Lfw;

    invoke-static {v0, v1}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Lfm;->e()Lfm$a;

    move-result-object v1

    :goto_3d
    iput-object v1, p0, Lka$a;->e:Lfm$a;

    .line 169
    sget-object v1, Lfw;->FIELD:Lfw;

    invoke-static {v0, v1}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Lfm;->f()Lfm$a;

    move-result-object v0

    :goto_4b
    iput-object v0, p0, Lka$a;->f:Lfm$a;

    .line 170
    return-void

    .line 165
    :cond_4e
    sget-object v1, Lfm$a;->NONE:Lfm$a;

    goto :goto_13

    .line 166
    :cond_51
    sget-object v1, Lfm$a;->NONE:Lfm$a;

    goto :goto_21

    .line 167
    :cond_54
    sget-object v1, Lfm$a;->NONE:Lfm$a;

    goto :goto_2f

    .line 168
    :cond_57
    sget-object v1, Lfm$a;->NONE:Lfm$a;

    goto :goto_3d

    .line 169
    :cond_5a
    sget-object v0, Lfm$a;->NONE:Lfm$a;

    goto :goto_4b
.end method

.method public static a()Lka$a;
    .registers 1

    .prologue
    .line 153
    sget-object v0, Lka$a;->a:Lka$a;

    return-object v0
.end method

.method private static a([Lfw;Lfw;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 295
    array-length v0, p0

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 296
    if-eq v2, p1, :cond_d

    sget-object v3, Lfw;->ALL:Lfw;

    if-ne v2, v3, :cond_f

    :cond_d
    const/4 v0, 0x1

    .line 298
    :goto_e
    return v0

    .line 295
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    move v0, v4

    .line 298
    goto :goto_e
.end method

.method private f(Lfm$a;)Lka$a;
    .registers 8
    .parameter

    .prologue
    .line 213
    sget-object v0, Lfm$a;->DEFAULT:Lfm$a;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lka$a;->a:Lka$a;

    iget-object v0, v0, Lka$a;->b:Lfm$a;

    move-object v1, v0

    .line 214
    :goto_9
    iget-object v0, p0, Lka$a;->b:Lfm$a;

    if-ne v0, v1, :cond_f

    move-object v0, p0

    .line 215
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lka$a;

    iget-object v2, p0, Lka$a;->c:Lfm$a;

    iget-object v3, p0, Lka$a;->d:Lfm$a;

    iget-object v4, p0, Lka$a;->e:Lfm$a;

    iget-object v5, p0, Lka$a;->f:Lfm$a;

    invoke-direct/range {v0 .. v5}, Lka$a;-><init>(Lfm$a;Lfm$a;Lfm$a;Lfm$a;Lfm$a;)V

    goto :goto_e

    :cond_1d
    move-object v1, p1

    goto :goto_9
.end method

.method private g(Lfm$a;)Lka$a;
    .registers 8
    .parameter

    .prologue
    .line 219
    sget-object v0, Lfm$a;->DEFAULT:Lfm$a;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lka$a;->a:Lka$a;

    iget-object v0, v0, Lka$a;->c:Lfm$a;

    move-object v2, v0

    .line 220
    :goto_9
    iget-object v0, p0, Lka$a;->c:Lfm$a;

    if-ne v0, v2, :cond_f

    move-object v0, p0

    .line 221
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lka$a;

    iget-object v1, p0, Lka$a;->b:Lfm$a;

    iget-object v3, p0, Lka$a;->d:Lfm$a;

    iget-object v4, p0, Lka$a;->e:Lfm$a;

    iget-object v5, p0, Lka$a;->f:Lfm$a;

    invoke-direct/range {v0 .. v5}, Lka$a;-><init>(Lfm$a;Lfm$a;Lfm$a;Lfm$a;Lfm$a;)V

    goto :goto_e

    :cond_1d
    move-object v2, p1

    goto :goto_9
.end method

.method private h(Lfm$a;)Lka$a;
    .registers 8
    .parameter

    .prologue
    .line 225
    sget-object v0, Lfm$a;->DEFAULT:Lfm$a;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lka$a;->a:Lka$a;

    iget-object v0, v0, Lka$a;->d:Lfm$a;

    move-object v3, v0

    .line 226
    :goto_9
    iget-object v0, p0, Lka$a;->d:Lfm$a;

    if-ne v0, v3, :cond_f

    move-object v0, p0

    .line 227
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lka$a;

    iget-object v1, p0, Lka$a;->b:Lfm$a;

    iget-object v2, p0, Lka$a;->c:Lfm$a;

    iget-object v4, p0, Lka$a;->e:Lfm$a;

    iget-object v5, p0, Lka$a;->f:Lfm$a;

    invoke-direct/range {v0 .. v5}, Lka$a;-><init>(Lfm$a;Lfm$a;Lfm$a;Lfm$a;Lfm$a;)V

    goto :goto_e

    :cond_1d
    move-object v3, p1

    goto :goto_9
.end method

.method private i(Lfm$a;)Lka$a;
    .registers 8
    .parameter

    .prologue
    .line 231
    sget-object v0, Lfm$a;->DEFAULT:Lfm$a;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lka$a;->a:Lka$a;

    iget-object v0, v0, Lka$a;->e:Lfm$a;

    move-object v4, v0

    .line 232
    :goto_9
    iget-object v0, p0, Lka$a;->e:Lfm$a;

    if-ne v0, v4, :cond_f

    move-object v0, p0

    .line 233
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lka$a;

    iget-object v1, p0, Lka$a;->b:Lfm$a;

    iget-object v2, p0, Lka$a;->c:Lfm$a;

    iget-object v3, p0, Lka$a;->d:Lfm$a;

    iget-object v5, p0, Lka$a;->f:Lfm$a;

    invoke-direct/range {v0 .. v5}, Lka$a;-><init>(Lfm$a;Lfm$a;Lfm$a;Lfm$a;Lfm$a;)V

    goto :goto_e

    :cond_1d
    move-object v4, p1

    goto :goto_9
.end method

.method private j(Lfm$a;)Lka$a;
    .registers 8
    .parameter

    .prologue
    .line 237
    sget-object v0, Lfm$a;->DEFAULT:Lfm$a;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lka$a;->a:Lka$a;

    iget-object v0, v0, Lka$a;->f:Lfm$a;

    move-object v5, v0

    .line 238
    :goto_9
    iget-object v0, p0, Lka$a;->f:Lfm$a;

    if-ne v0, v5, :cond_f

    move-object v0, p0

    .line 239
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lka$a;

    iget-object v1, p0, Lka$a;->b:Lfm$a;

    iget-object v2, p0, Lka$a;->c:Lfm$a;

    iget-object v3, p0, Lka$a;->d:Lfm$a;

    iget-object v4, p0, Lka$a;->e:Lfm$a;

    invoke-direct/range {v0 .. v5}, Lka$a;-><init>(Lfm$a;Lfm$a;Lfm$a;Lfm$a;Lfm$a;)V

    goto :goto_e

    :cond_1d
    move-object v5, p1

    goto :goto_9
.end method


# virtual methods
.method public final bridge synthetic a(Lfm$a;)Lka;
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lka$a;->f(Lfm$a;)Lka$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lfm;)Lka;
    .registers 5
    .parameter

    .prologue
    .line 125
    if-nez p1, :cond_4

    move-object v0, p0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p1}, Lfm;->a()[Lfw;

    move-result-object v0

    sget-object v1, Lfw;->GETTER:Lfw;

    invoke-static {v0, v1}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p1}, Lfm;->b()Lfm$a;

    move-result-object v1

    :goto_14
    invoke-direct {p0, v1}, Lka$a;->f(Lfm$a;)Lka$a;

    move-result-object v1

    sget-object v2, Lfw;->IS_GETTER:Lfw;

    invoke-static {v0, v2}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {p1}, Lfm;->c()Lfm$a;

    move-result-object v2

    :goto_24
    invoke-direct {v1, v2}, Lka$a;->g(Lfm$a;)Lka$a;

    move-result-object v1

    sget-object v2, Lfw;->SETTER:Lfw;

    invoke-static {v0, v2}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {p1}, Lfm;->d()Lfm$a;

    move-result-object v2

    :goto_34
    invoke-direct {v1, v2}, Lka$a;->h(Lfm$a;)Lka$a;

    move-result-object v1

    sget-object v2, Lfw;->CREATOR:Lfw;

    invoke-static {v0, v2}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {p1}, Lfm;->e()Lfm$a;

    move-result-object v2

    :goto_44
    invoke-direct {v1, v2}, Lka$a;->i(Lfm$a;)Lka$a;

    move-result-object v1

    sget-object v2, Lfw;->FIELD:Lfw;

    invoke-static {v0, v2}, Lka$a;->a([Lfw;Lfw;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p1}, Lfm;->f()Lfm$a;

    move-result-object v0

    :goto_54
    invoke-direct {v1, v0}, Lka$a;->j(Lfm$a;)Lka$a;

    move-result-object v0

    goto :goto_3

    :cond_59
    sget-object v1, Lfm$a;->NONE:Lfm$a;

    goto :goto_14

    :cond_5c
    sget-object v2, Lfm$a;->NONE:Lfm$a;

    goto :goto_24

    :cond_5f
    sget-object v2, Lfm$a;->NONE:Lfm$a;

    goto :goto_34

    :cond_62
    sget-object v2, Lfm$a;->NONE:Lfm$a;

    goto :goto_44

    :cond_65
    sget-object v0, Lfm$a;->NONE:Lfm$a;

    goto :goto_54
.end method

.method public final a(Ljn;)Z
    .registers 4
    .parameter

    .prologue
    .line 261
    invoke-virtual {p1}, Ljn;->d()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lka$a;->f:Lfm$a;

    invoke-virtual {v1, v0}, Lfm$a;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljo;)Z
    .registers 4
    .parameter

    .prologue
    .line 253
    invoke-virtual {p1}, Ljo;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    iget-object v1, p0, Lka$a;->e:Lfm$a;

    invoke-virtual {v1, v0}, Lfm$a;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljp;)Z
    .registers 4
    .parameter

    .prologue
    .line 268
    iget-object v0, p1, Ljp;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lka$a;->b:Lfm$a;

    invoke-virtual {v1, v0}, Lfm$a;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Lfm$a;)Lka;
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lka$a;->g(Lfm$a;)Lka$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljp;)Z
    .registers 4
    .parameter

    .prologue
    .line 276
    iget-object v0, p1, Ljp;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lka$a;->c:Lfm$a;

    invoke-virtual {v1, v0}, Lfm$a;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c(Lfm$a;)Lka;
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lka$a;->h(Lfm$a;)Lka$a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljp;)Z
    .registers 4
    .parameter

    .prologue
    .line 284
    iget-object v0, p1, Ljp;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lka$a;->d:Lfm$a;

    invoke-virtual {v1, v0}, Lfm$a;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d(Lfm$a;)Lka;
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lka$a;->i(Lfm$a;)Lka$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e(Lfm$a;)Lka;
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lka$a;->j(Lfm$a;)Lka$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Visibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " getter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lka$a;->b:Lfm$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGetter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lka$a;->c:Lfm$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lka$a;->d:Lfm$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lka$a;->e:Lfm$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lka$a;->f:Lfm$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
