.class public Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditorCompat"
.end annotation


# instance fields
.field private mActualMetadataEditor:Ljava/lang/Object;

.field private mApplyMethod:Ljava/lang/reflect/Method;

.field private mClearMethod:Ljava/lang/reflect/Method;

.field private mPutBitmapMethod:Ljava/lang/reflect/Method;

.field private mPutLongMethod:Ljava/lang/reflect/Method;

.field private mPutStringMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/google/android/music/RemoteControlClientCompat;


# direct methods
.method private constructor <init>(Lcom/google/android/music/RemoteControlClientCompat;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->this$0:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lcom/google/android/music/RemoteControlClientCompat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote Control API\'s exist, should not be given a null MetadataEditor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_15
    invoke-static {}, Lcom/google/android/music/RemoteControlClientCompat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 146
    :try_start_1f
    const-string v1, "putString"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    .line 148
    const-string v1, "putBitmap"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    .line 150
    const-string v1, "putLong"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    .line 152
    const-string v1, "clear"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mClearMethod:Ljava/lang/reflect/Method;

    .line 153
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_74} :catch_77

    .line 158
    :cond_74
    iput-object p2, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    .line 160
    return-void

    .line 154
    :catch_77
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/google/android/music/RemoteControlClientCompat;Ljava/lang/Object;Lcom/google/android/music/RemoteControlClientCompat$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/google/android/music/RemoteControlClientCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    .prologue
    .line 206
    invoke-static {}, Lcom/google/android/music/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 208
    :try_start_6
    iget-object v2, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 213
    :cond_10
    return-void

    .line 209
    :catch_11
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putBitmap(ILandroid/graphics/Bitmap;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;
    .registers 9
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 174
    invoke-static {}, Lcom/google/android/music/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 176
    :try_start_6
    iget-object v1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 181
    :cond_1a
    return-object p0

    .line 177
    :catch_1b
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putLong(IJ)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;
    .registers 10
    .parameter "key"
    .parameter "value"

    .prologue
    .line 185
    invoke-static {}, Lcom/google/android/music/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 187
    :try_start_6
    iget-object v1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 192
    :cond_1e
    return-object p0

    .line 188
    :catch_1f
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;
    .registers 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 163
    invoke-static {}, Lcom/google/android/music/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 165
    :try_start_6
    iget-object v1, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 170
    :cond_1a
    return-object p0

    .line 166
    :catch_1b
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
