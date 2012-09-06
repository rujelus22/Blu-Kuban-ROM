.class Lcom/android/inputmethod/latin/AssetFileAddress;
.super Ljava/lang/Object;
.source "AssetFileAddress.java"


# instance fields
.field public final mFilename:Ljava/lang/String;

.field public final mLength:J

.field public final mOffset:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6
    .parameter "filename"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/inputmethod/latin/AssetFileAddress;->mFilename:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/android/inputmethod/latin/AssetFileAddress;->mOffset:J

    .line 36
    iput-wide p4, p0, Lcom/android/inputmethod/latin/AssetFileAddress;->mLength:J

    .line 37
    return-void
.end method

.method public static makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .registers 8
    .parameter "filename"

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_4

    .line 43
    :cond_3
    :goto_3
    return-object v0

    .line 41
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    new-instance v0, Lcom/android/inputmethod/latin/AssetFileAddress;

    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/AssetFileAddress;-><init>(Ljava/lang/String;JJ)V

    goto :goto_3
.end method

.method public static makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/android/inputmethod/latin/AssetFileAddress;
    .registers 12
    .parameter "filename"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    .line 48
    if-nez p0, :cond_4

    .line 51
    :cond_3
    :goto_3
    return-object v0

    .line 49
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    new-instance v0, Lcom/android/inputmethod/latin/AssetFileAddress;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/AssetFileAddress;-><init>(Ljava/lang/String;JJ)V

    goto :goto_3
.end method
