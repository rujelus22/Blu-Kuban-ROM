.class public Lcom/android/exchange/adapter/LogAdapter$LogParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "LogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/LogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/LogAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/LogAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 4
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/exchange/adapter/LogAdapter$LogParser;->this$0:Lcom/android/exchange/adapter/LogAdapter;

    .line 85
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 87
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public commit()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public parse()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "LogParser"

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/LogAdapter$LogParser;->setLoggingTag(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/LogAdapter$LogParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    .line 99
    invoke-virtual {p0}, Lcom/android/exchange/adapter/LogAdapter$LogParser;->skipTag()V

    .line 103
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method
