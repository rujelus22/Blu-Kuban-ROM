.class Lcom/google/android/apps/books/render/WebViewRenderer$ThrowingDataSource;
.super Ljava/lang/Object;
.source "WebViewRenderer.java"

# interfaces
.implements Lcom/google/android/apps/books/render/ReaderDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThrowingDataSource"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRenderer$ThrowingDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "volumeId"
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported operation getResourceContentUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSegmentContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "volumeId"
    .parameter "segmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported operation getSegmentContent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
