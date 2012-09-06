.class Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ContentURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ContentURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentURLConnectionOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/imageloader/ContentURLConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/imageloader/ContentURLConnection;Ljava/io/OutputStream;)V
    .registers 3
    .parameter
    .parameter "out"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionOutputStream;->this$0:Lcom/google/android/imageloader/ContentURLConnection;

    .line 138
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
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
    .line 143
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 144
    iget-object v0, p0, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionOutputStream;->this$0:Lcom/google/android/imageloader/ContentURLConnection;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/imageloader/ContentURLConnection;->mOutputStreamClosed:Z
    invoke-static {v0, v1}, Lcom/google/android/imageloader/ContentURLConnection;->access$102(Lcom/google/android/imageloader/ContentURLConnection;Z)Z

    .line 145
    return-void
.end method
