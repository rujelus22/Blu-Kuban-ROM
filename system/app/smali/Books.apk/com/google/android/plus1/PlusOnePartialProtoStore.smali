.class public Lcom/google/android/plus1/PlusOnePartialProtoStore;
.super Lcom/google/android/plus1/PlusOneProtoStore;
.source "PlusOnePartialProtoStore.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "relativePath"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/PlusOneProtoStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .parameter "baseDirectory"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneProtoStore;-><init>(Ljava/io/File;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected copyStoreIntoProto(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;)V
    .registers 4
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/plus1/PlusOnePartialProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/plus1/PlusOneProtoUtils;->copyStoreIntoProto(Lcom/google/android/plus1/PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;Z)V

    .line 42
    return-void
.end method
