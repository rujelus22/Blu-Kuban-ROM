.class public Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
.super Ljava/lang/Object;
.source "ArgumentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/ArgumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgumentFormat"
.end annotation


# instance fields
.field private mandatory:Z

.field private option:Ljava/lang/String;

.field private parameter:Z

.field private params:[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

.field private vararg:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 347
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$002(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-boolean p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->vararg:Z

    return p1
.end method

.method static access$100(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 347
    iget-boolean v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->parameter:Z

    return v0
.end method

.method static access$102(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-boolean p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->parameter:Z

    return p1
.end method

.method static access$202(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-boolean p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->mandatory:Z

    return p1
.end method

.method static access$300(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 347
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->option:Ljava/lang/String;

    return-object v0
.end method

.method static access$302(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-object p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->option:Ljava/lang/String;

    return-object p1
.end method

.method static access$802(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-object p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->params:[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    return-object p1
.end method


# virtual methods
.method public getOption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->option:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->params:[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    return-object v0
.end method

.method public isMandatory()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->mandatory:Z

    return v0
.end method

.method public isParameter()Z
    .registers 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->parameter:Z

    return v0
.end method

.method public isVariableLength()Z
    .registers 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->vararg:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ArgumentFormat[option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->option:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",parameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->parameter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",vararg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->vararg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",mandatatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->mandatory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->params:[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    if-nez v0, :cond_50

    const-string v0, "<null>"

    :goto_41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->params:[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method
