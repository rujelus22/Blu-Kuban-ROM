.class final Lorg/simpleframework/xml/core/LabelFactory;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;
    .registers 5

    instance-of v0, p0, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_e

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementLabel;

    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_d
    return-object v0

    :cond_e
    instance-of v0, p0, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_1c

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListLabel;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_1c
    instance-of v0, p0, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2a

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementArrayLabel;

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_2a
    instance-of v0, p0, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_38

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapLabel;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_38
    instance-of v0, p0, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_48

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementUnion;

    const-class v3, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_48
    instance-of v0, p0, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_58

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementListUnion;

    const-class v3, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_58
    instance-of v0, p0, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_68

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v3, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_68
    instance-of v0, p0, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_76

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/AttributeLabel;

    const-class v2, Lorg/simpleframework/xml/Attribute;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_76
    instance-of v0, p0, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_84

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/VersionLabel;

    const-class v2, Lorg/simpleframework/xml/Version;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_84
    instance-of v0, p0, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_93

    new-instance v0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/TextLabel;

    const-class v2, Lorg/simpleframework/xml/Text;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_d

    :cond_93
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Annotation %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;
    .registers 3

    invoke-static {p0}, Lorg/simpleframework/xml/core/LabelFactory;->getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_12
    return-object v0
.end method

.method public static getInstance(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelFactory;->getInstance(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelFactory;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    move-object v0, v1

    goto :goto_6
.end method

.method private static getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/simpleframework/xml/core/LabelFactory;->getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz p2, :cond_19

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    :goto_18
    return-object v0

    :cond_19
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    goto :goto_18
.end method
