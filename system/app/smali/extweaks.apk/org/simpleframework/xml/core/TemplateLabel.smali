.class abstract Lorg/simpleframework/xml/core/TemplateLabel;
.super Ljava/lang/Object;
.source "TemplateLabel.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .registers 2
    .parameter

    .prologue
    .line 73
    return-object p0
.end method

.method public getNames()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TemplateLabel;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TemplateLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TemplateLabel;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isCollection()Z
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public isInline()Z
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isUnion()Z
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method
