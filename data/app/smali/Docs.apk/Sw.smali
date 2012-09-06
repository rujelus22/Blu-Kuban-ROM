.class public LSw;
.super Ljava/lang/Object;
.source "AccountMetadataGDataParserFactory.java"

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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, LSw;->a:Lasu;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)LSv;
    .registers 5
    .parameter

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, LSw;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v0

    .line 40
    new-instance v1, LSv;

    invoke-direct {v1, p1, v0}, LSv;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 37
    :catch_c
    move-exception v0

    .line 38
    new-instance v1, Lasn;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Class;Ljava/io/InputStream;)LSv;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 47
    const-class v0, LSp;

    if-ne p1, v0, :cond_9

    .line 48
    invoke-virtual {p0, p2}, LSw;->a(Ljava/io/InputStream;)LSv;

    move-result-object v0

    return-object v0

    .line 50
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

.method public bridge synthetic a(Ljava/lang/Class;Ljava/io/InputStream;)Lasm;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, LSw;->a(Ljava/lang/Class;Ljava/io/InputStream;)LSv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lase;)Lasv;
    .registers 4
    .parameter

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot serialize"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/Enumeration;)Lasv;
    .registers 4
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot serialize"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
