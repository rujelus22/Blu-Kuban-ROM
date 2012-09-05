.class public Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
.super Ljava/lang/Object;
.source "ArgumentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/ArgumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgumentParameter"
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pattern:Ljava/util/regex/Pattern;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 382
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$402(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-object p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->name:Ljava/lang/String;

    return-object p1
.end method

.method static access$500(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)Ljava/util/regex/Pattern;
    .registers 2
    .parameter "x0"

    .prologue
    .line 382
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static access$502(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-object p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->pattern:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static access$602(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->type:I

    return p1
.end method

.method static access$702(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-object p1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->defaultValue:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ArgumentParameter[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",patttern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->pattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_43

    const/4 v0, 0x0

    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->defaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method
