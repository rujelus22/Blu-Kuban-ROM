.class Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;
.super Ljava/lang/Object;
.source "LabelFactory.java"


# instance fields
.field public entry:Ljava/lang/Class;

.field public label:Ljava/lang/Class;

.field public type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p3, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->entry:Ljava/lang/Class;

    .line 221
    iput-object p2, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->label:Ljava/lang/Class;

    .line 222
    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->type:Ljava/lang/Class;

    .line 223
    return-void
.end method

.method private getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 6
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->type:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->type:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->entry:Ljava/lang/Class;

    if-eqz v0, :cond_d

    .line 234
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->label:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->entry:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 236
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->label:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_c
.end method
