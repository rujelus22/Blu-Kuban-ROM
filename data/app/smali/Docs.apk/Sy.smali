.class public LSy;
.super Ljava/lang/Object;
.source "AclGDataParserFactory.java"

# interfaces
.implements LarP;


# instance fields
.field private final a:Lasu;

.field private final a:LeZ;


# direct methods
.method public constructor <init>(Lasu;LeZ;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, LSy;->a:Lasu;

    .line 37
    iput-object p2, p0, LSy;->a:LeZ;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lase;)LSz;
    .registers 5
    .parameter

    .prologue
    .line 63
    instance-of v0, p1, LSq;

    if-eqz v0, :cond_e

    .line 64
    check-cast p1, LSq;

    .line 65
    new-instance v0, LSN;

    iget-object v1, p0, LSy;->a:Lasu;

    invoke-direct {v0, v1, p1}, LSN;-><init>(Lasu;LSq;)V

    return-object v0

    .line 68
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

.method public a(Ljava/io/InputStream;)Lasm;
    .registers 5
    .parameter

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, LSy;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_e

    move-result-object v0

    .line 48
    new-instance v1, LSx;

    iget-object v2, p0, LSy;->a:LeZ;

    invoke-direct {v1, p1, v0, v2}, LSx;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;LeZ;)V

    return-object v1

    .line 45
    :catch_e
    move-exception v0

    .line 46
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
    .line 54
    const-class v0, LSq;

    if-ne p1, v0, :cond_9

    .line 55
    invoke-virtual {p0, p2}, LSy;->a(Ljava/io/InputStream;)Lasm;

    move-result-object v0

    return-object v0

    .line 57
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

.method public bridge synthetic a(Lase;)Lasv;
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, LSy;->a(Lase;)LSz;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Enumeration;)Lasv;
    .registers 4
    .parameter

    .prologue
    .line 74
    new-instance v0, LSC;

    iget-object v1, p0, LSy;->a:Lasu;

    invoke-direct {v0, p0, v1, p1}, LSC;-><init>(LarP;Lasu;Ljava/util/Enumeration;)V

    return-object v0
.end method
