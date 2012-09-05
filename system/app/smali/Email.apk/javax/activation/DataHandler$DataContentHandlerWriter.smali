.class Ljavax/activation/DataHandler$DataContentHandlerWriter;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/activation/DataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataContentHandlerWriter"
.end annotation


# instance fields
.field dch:Ljavax/activation/DataContentHandler;

.field mimeType:Ljava/lang/String;

.field object:Ljava/lang/Object;

.field out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->dch:Ljavax/activation/DataContentHandler;

    .line 186
    iput-object p2, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->object:Ljava/lang/Object;

    .line 187
    iput-object p3, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->mimeType:Ljava/lang/String;

    .line 188
    iput-object p4, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    .line 189
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->dch:Ljavax/activation/DataContentHandler;

    iget-object v1, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->object:Ljava/lang/Object;

    iget-object v2, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->mimeType:Ljava/lang/String;

    iget-object v3, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-interface {v0, v1, v2, v3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_11

    .line 204
    :try_start_b
    iget-object v0, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_23

    .line 210
    :goto_10
    return-void

    .line 197
    :catch_11
    move-exception v0

    .line 204
    :try_start_12
    iget-object v0, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_10

    .line 206
    :catch_18
    move-exception v0

    goto :goto_10

    .line 202
    :catchall_1a
    move-exception v0

    .line 204
    :try_start_1b
    iget-object v1, p0, Ljavax/activation/DataHandler$DataContentHandlerWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_21

    .line 208
    :goto_20
    throw v0

    .line 206
    :catch_21
    move-exception v1

    goto :goto_20

    :catch_23
    move-exception v0

    goto :goto_10
.end method
