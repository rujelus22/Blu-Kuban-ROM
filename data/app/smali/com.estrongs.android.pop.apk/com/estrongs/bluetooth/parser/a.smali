.class public Lcom/estrongs/bluetooth/parser/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/bluetooth/parser/OBEXElement;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/bluetooth/parser/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/bluetooth/parser/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<!DOCTYPE folder-listing SYSTEM \"obex-folder-listing.dtd\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/bluetooth/parser/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/bluetooth/parser/a;->d:Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/bluetooth/parser/OBEXElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/a;->a()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/estrongs/bluetooth/parser/a;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/bluetooth/parser/a;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v0, "<folder-listing version=\"1.0\">"

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/bluetooth/parser/a;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v0, "  <parent-folder/>"

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/bluetooth/parser/a;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_40

    const-string v0, "</folder-listing>"

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/bluetooth/parser/a;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/a;->b()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_f0

    const-string v2, "folder"

    :goto_55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "size"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "modified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "user-perm"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/bluetooth/parser/a;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_28

    :cond_f0
    const-string v2, "file"

    goto/16 :goto_55
.end method

.method public a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/bluetooth/parser/OBEXElement;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/a;->a()V

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_d
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_10} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_10} :catch_21

    move-result-object v0

    :goto_11
    :try_start_11
    new-instance v1, Lcom/estrongs/bluetooth/parser/b;

    invoke-direct {v1, p0}, Lcom/estrongs/bluetooth/parser/b;-><init>(Lcom/estrongs/bluetooth/parser/a;)V

    invoke-virtual {v0, p1, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_19} :catch_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_23

    :goto_19
    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/a;->b()V

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/a;->a:Ljava/util/ArrayList;

    return-object v0

    :catch_1f
    move-exception v1

    goto :goto_11

    :catch_21
    move-exception v1

    goto :goto_11

    :catch_23
    move-exception v0

    goto :goto_19

    :catch_25
    move-exception v0

    goto :goto_19
.end method

.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/estrongs/bluetooth/parser/a;->d:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/bluetooth/parser/a;->d:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1

    :catch_e
    move-exception v0

    goto :goto_1

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/estrongs/bluetooth/parser/a;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
