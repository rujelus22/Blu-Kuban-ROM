.class Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
.super Ljava/lang/Object;
.source "MusicApiClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/api/MusicApiClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodExecutionResult"
.end annotation


# instance fields
.field public mEtag:Ljava/lang/String;

.field public mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3
    .parameter "inputStream"
    .parameter "etag"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 182
    iput-object p2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mEtag:Ljava/lang/String;

    .line 183
    return-void
.end method
