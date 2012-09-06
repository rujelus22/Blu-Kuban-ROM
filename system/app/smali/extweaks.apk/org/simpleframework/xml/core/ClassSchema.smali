.class Lorg/simpleframework/xml/core/ClassSchema;
.super Ljava/lang/Object;
.source "ClassSchema.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Schema;


# instance fields
.field private final caller:Lorg/simpleframework/xml/core/Caller;

.field private final decorator:Lorg/simpleframework/xml/core/Decorator;

.field private final factory:Lorg/simpleframework/xml/core/Creator;

.field private final primitive:Z

.field private final revision:Lorg/simpleframework/xml/Version;

.field private final section:Lorg/simpleframework/xml/core/Section;

.field private final text:Lorg/simpleframework/xml/core/Label;

.field private final type:Ljava/lang/Class;

.field private final version:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1, p2}, Lorg/simpleframework/xml/core/Scanner;->getSection(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->section:Lorg/simpleframework/xml/core/Section;

    .line 92
    invoke-virtual {p1, p2}, Lorg/simpleframework/xml/core/Scanner;->getCaller(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->caller:Lorg/simpleframework/xml/core/Caller;

    .line 93
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Scanner;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->factory:Lorg/simpleframework/xml/core/Creator;

    .line 94
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Scanner;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->revision:Lorg/simpleframework/xml/Version;

    .line 95
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Scanner;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 96
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Scanner;->isPrimitive()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->primitive:Z

    .line 97
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Scanner;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->version:Lorg/simpleframework/xml/core/Label;

    .line 98
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Scanner;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->text:Lorg/simpleframework/xml/core/Label;

    .line 99
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Scanner;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->type:Ljava/lang/Class;

    .line 100
    return-void
.end method


# virtual methods
.method public getCaller()Lorg/simpleframework/xml/core/Caller;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->caller:Lorg/simpleframework/xml/core/Caller;

    return-object v0
.end method

.method public getCreator()Lorg/simpleframework/xml/core/Creator;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->factory:Lorg/simpleframework/xml/core/Creator;

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getRevision()Lorg/simpleframework/xml/Version;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->revision:Lorg/simpleframework/xml/Version;

    return-object v0
.end method

.method public getSection()Lorg/simpleframework/xml/core/Section;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->section:Lorg/simpleframework/xml/core/Section;

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->text:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public getVersion()Lorg/simpleframework/xml/core/Label;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->version:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public isPrimitive()Z
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ClassSchema;->primitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 211
    const-string v0, "schema for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassSchema;->type:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
