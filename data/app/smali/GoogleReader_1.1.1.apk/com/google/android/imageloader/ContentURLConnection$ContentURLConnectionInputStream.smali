.class Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "ContentURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ContentURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentURLConnectionInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/imageloader/ContentURLConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/imageloader/ContentURLConnection;Ljava/io/InputStream;)V
    .registers 3
    .parameter
    .parameter "in"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionInputStream;->this$0:Lcom/google/android/imageloader/ContentURLConnection;

    .line 125
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 131
    iget-object v0, p0, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionInputStream;->this$0:Lcom/google/android/imageloader/ContentURLConnection;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/imageloader/ContentURLConnection;->mInputStreamClosed:Z
    invoke-static {v0, v1}, Lcom/google/android/imageloader/ContentURLConnection;->access$002(Lcom/google/android/imageloader/ContentURLConnection;Z)Z

    .line 132
    return-void
.end method
