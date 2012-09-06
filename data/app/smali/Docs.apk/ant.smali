.class public Lant;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final a:LanP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanP",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Lanv;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lanx;->a:Lanx;

    iput-object v0, p0, Lant;->a:Lanv;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LanP;->a(Ljava/lang/Class;)LanP;

    move-result-object v0

    iput-object v0, p0, Lant;->a:LanP;

    .line 112
    invoke-direct {p0}, Lant;->a()I

    move-result v0

    iput v0, p0, Lant;->a:I

    .line 113
    return-void
.end method

.method private constructor <init>(LanP;Lanv;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<TT;>;",
            "Lanv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lant;->a:Lanv;

    .line 128
    invoke-static {p1}, Lapk;->a(LanP;)LanP;

    move-result-object v0

    iput-object v0, p0, Lant;->a:LanP;

    .line 129
    invoke-direct {p0}, Lant;->a()I

    move-result v0

    iput v0, p0, Lant;->a:I

    .line 130
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Lanv;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lant;->a:Lanv;

    .line 121
    invoke-static {p1}, LanP;->a(Ljava/lang/reflect/Type;)LanP;

    move-result-object v0

    invoke-static {v0}, Lapk;->a(LanP;)LanP;

    move-result-object v0

    iput-object v0, p0, Lant;->a:LanP;

    .line 122
    invoke-direct {p0}, Lant;->a()I

    move-result v0

    iput v0, p0, Lant;->a:I

    .line 123
    return-void
.end method

.method private a()I
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lant;->a:LanP;

    invoke-virtual {v0}, LanP;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lant;->a:Lanv;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(LanP;)Lant;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;)",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lant;

    sget-object v1, Lanx;->a:Lanx;

    invoke-direct {v0, p0, v1}, Lant;-><init>(LanP;Lanv;)V

    return-object v0
.end method

.method public static a(LanP;Ljava/lang/Class;)Lant;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lant;

    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lanv;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lant;-><init>(LanP;Lanv;)V

    return-object v0
.end method

.method public static a(LanP;Ljava/lang/annotation/Annotation;)Lant;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lant;

    invoke-static {p1}, Lant;->a(Ljava/lang/annotation/Annotation;)Lanv;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lant;-><init>(LanP;Lanv;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lant;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lant;

    sget-object v1, Lanx;->a:Lanx;

    invoke-direct {v0, p0, v1}, Lant;-><init>(Ljava/lang/reflect/Type;Lanv;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lant;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lant;

    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lanv;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lant;-><init>(Ljava/lang/reflect/Type;Lanv;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lant;

    invoke-static {p1}, Lant;->a(Ljava/lang/annotation/Annotation;)Lanv;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lant;-><init>(Ljava/lang/reflect/Type;Lanv;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Lant;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lant",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lant;

    sget-object v1, Lanx;->a:Lanx;

    invoke-direct {v0, p0, v1}, Lant;-><init>(Ljava/lang/reflect/Type;Lanv;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lant;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lant",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lant;

    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lanv;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lant;-><init>(Ljava/lang/reflect/Type;Lanv;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lant;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lant",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lant;

    invoke-static {p1}, Lant;->a(Ljava/lang/annotation/Annotation;)Lanv;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lant;-><init>(Ljava/lang/reflect/Type;Lanv;)V

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Lanv;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lanv;"
        }
    .end annotation

    .prologue
    .line 353
    const-string v0, "annotation type"

    invoke-static {p0, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {p0}, Lant;->a(Ljava/lang/Class;)V

    .line 355
    invoke-static {p0}, Lant;->b(Ljava/lang/Class;)V

    .line 356
    new-instance v0, Lanw;

    invoke-static {p0}, LanY;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lanw;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method static a(Ljava/lang/annotation/Annotation;)Lanv;
    .registers 3
    .parameter

    .prologue
    .line 337
    const-string v0, "annotation"

    invoke-static {p0, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 339
    invoke-static {v1}, Lant;->a(Ljava/lang/Class;)V

    .line 340
    invoke-static {v1}, Lant;->b(Ljava/lang/Class;)V

    .line 342
    invoke-static {v1}, LanY;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 343
    new-instance v0, Lanw;

    invoke-direct {v0, v1, p0}, Lanw;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    .line 346
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lanu;

    invoke-static {p0}, LanY;->a(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lanu;-><init>(Ljava/lang/annotation/Annotation;)V

    goto :goto_1a
.end method

.method private static a(Ljava/lang/Class;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {p0}, LanY;->b(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not retained at runtime. Please annotate it with @Retention(RUNTIME)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method private static b(Ljava/lang/Class;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {p0}, LanY;->d(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a binding annotation. Please annotate it with @BindingAnnotation."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 371
    return-void
.end method


# virtual methods
.method public final a()LanP;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanP",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lant;->a:LanP;

    return-object v0
.end method

.method public a()Lant;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Lant;

    iget-object v1, p0, Lant;->a:LanP;

    iget-object v2, p0, Lant;->a:Lanv;

    invoke-interface {v2}, Lanv;->a()Lanv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lant;-><init>(LanP;Lanv;)V

    return-object v0
.end method

.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lant;->a:Lanv;

    invoke-interface {v0}, Lanv;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lant;->a:Lanv;

    invoke-interface {v0}, Lanv;->a()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lant;->a:Lanv;

    invoke-interface {v0}, Lanv;->a()Z

    move-result v0

    return v0
.end method

.method public b(LanP;)Lant;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;)",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lant;

    iget-object v1, p0, Lant;->a:Lanv;

    invoke-direct {v0, p1, v1}, Lant;-><init>(LanP;Lanv;)V

    return-object v0
.end method

.method public b(Ljava/lang/reflect/Type;)Lant;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lant",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lant;

    iget-object v1, p0, Lant;->a:Lanv;

    invoke-direct {v0, p1, v1}, Lant;-><init>(Ljava/lang/reflect/Type;Lanv;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p1, p0, :cond_5

    .line 190
    :cond_4
    :goto_4
    return v0

    .line 186
    :cond_5
    instance-of v2, p1, Lant;

    if-nez v2, :cond_b

    move v0, v1

    .line 187
    goto :goto_4

    .line 189
    :cond_b
    check-cast p1, Lant;

    .line 190
    iget-object v2, p0, Lant;->a:Lanv;

    iget-object v3, p1, Lant;->a:Lanv;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lant;->a:LanP;

    iget-object v3, p1, Lant;->a:LanP;

    invoke-virtual {v2, v3}, LanP;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lant;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lant;->a:LanP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lant;->a:Lanv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
