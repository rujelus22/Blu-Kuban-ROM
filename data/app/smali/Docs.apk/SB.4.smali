.class public LSB;
.super Ljava/lang/Object;
.source "DocsListGDataParserFactory.java"

# interfaces
.implements LarP;


# instance fields
.field private final a:Lasu;


# direct methods
.method public constructor <init>(Lasu;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LSB;->a:Lasu;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lasm;
    .registers 5
    .parameter

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, LSB;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v0

    .line 43
    new-instance v1, LSA;

    invoke-direct {v1, p1, v0}, LSA;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 40
    :catch_c
    move-exception v0

    .line 41
    new-instance v1, Lasn;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Class;Ljava/io/InputStream;)Lasm;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 49
    const-class v0, LSs;

    if-ne p1, v0, :cond_9

    .line 50
    invoke-virtual {p0, p2}, LSB;->a(Ljava/io/InputStream;)Lasm;

    move-result-object v0

    return-object v0

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entry class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lase;)Lasv;
    .registers 5
    .parameter

    .prologue
    .line 58
    instance-of v0, p1, LSs;

    if-eqz v0, :cond_e

    .line 59
    check-cast p1, LSs;

    .line 60
    new-instance v0, LSO;

    iget-object v1, p0, LSB;->a:Lasu;

    invoke-direct {v0, v1, p1}, LSO;-><init>(Lasu;LSs;)V

    return-object v0

    .line 63
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Entry class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/Enumeration;)Lasv;
    .registers 4
    .parameter

    .prologue
    .line 69
    new-instance v0, Lasw;

    iget-object v1, p0, LSB;->a:Lasu;

    invoke-direct {v0, p0, v1, p1}, Lasw;-><init>(LarP;Lasu;Ljava/util/Enumeration;)V

    return-object v0
.end method
