.class Lorg/simpleframework/xml/core/Structure;
.super Ljava/lang/Object;


# instance fields
.field private final model:Lorg/simpleframework/xml/core/Model;

.field private final primitive:Z

.field private final text:Lorg/simpleframework/xml/core/Label;

.field private final version:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Label;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    iput-object p2, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Structure;->model:Lorg/simpleframework/xml/core/Model;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Structure;->text:Lorg/simpleframework/xml/core/Label;

    return-void
.end method


# virtual methods
.method public getRevision()Lorg/simpleframework/xml/Version;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    const-class v1, Lorg/simpleframework/xml/Version;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Version;

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getSection(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Section;
    .registers 4

    new-instance v0, Lorg/simpleframework/xml/core/ModelSection;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Structure;->model:Lorg/simpleframework/xml/core/Model;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Model;)V

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Structure;->text:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public getVersion()Lorg/simpleframework/xml/core/Label;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public isPrimitive()Z
    .registers 2

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    return v0
.end method
