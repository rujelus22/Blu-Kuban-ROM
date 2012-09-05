.class public final Lcom/google/android/apps/plus/network/StreamBuilder;
.super Lorg/apache/http/entity/StringEntity;
.source "StreamBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter "sb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;->setContentType(Ljava/lang/String;)V

    .line 26
    return-void
.end method
