.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 196
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 197
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 205
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 206
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 187
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 188
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 4
    .parameter "text"
    .parameter "intent"
    .parameter "uri"

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 215
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 216
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 217
    return-void
.end method


# virtual methods
.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 13
    .parameter "context"

    .prologue
    .line 264
    iget-object v7, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    .line 265
    iget-object v7, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 327
    :cond_6
    :goto_6
    return-object v7

    .line 269
    :cond_7
    iget-object v7, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_81

    .line 274
    const/4 v6, 0x0

    .line 277
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string/jumbo v9, "text/*"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 279
    .local v2, descr:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    .line 280
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 283
    .local v5, reader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    .local v1, builder:Ljava/lang/StringBuilder;
    const/16 v7, 0x2000

    new-array v0, v7, [C

    .line 286
    .local v0, buffer:[C
    :goto_30
    invoke-virtual {v5, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, len:I
    if-lez v4, :cond_48

    .line 287
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_3a} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_3a} :catch_54
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3a} :catch_66

    goto :goto_30

    .line 291
    .end local v0           #buffer:[C
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #descr:Landroid/content/res/AssetFileDescriptor;
    .end local v4           #len:I
    .end local v5           #reader:Ljava/io/InputStreamReader;
    :catch_3b
    move-exception v7

    .line 307
    if-eqz v6, :cond_41

    .line 309
    :try_start_3e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_92

    .line 317
    :cond_41
    :goto_41
    iget-object v7, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 289
    .restart local v0       #buffer:[C
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #descr:Landroid/content/res/AssetFileDescriptor;
    .restart local v4       #len:I
    .restart local v5       #reader:Ljava/io/InputStreamReader;
    :cond_48
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4b} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_4b} :catch_54
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_66

    move-result-object v7

    .line 307
    if-eqz v6, :cond_6

    .line 309
    :try_start_4e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_6

    .line 310
    :catch_52
    move-exception v8

    goto :goto_6

    .line 295
    .end local v0           #buffer:[C
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #descr:Landroid/content/res/AssetFileDescriptor;
    .end local v4           #len:I
    .end local v5           #reader:Ljava/io/InputStreamReader;
    :catch_54
    move-exception v3

    .line 298
    .local v3, e:Ljava/lang/SecurityException;
    :try_start_55
    const-string v7, "ClippedData"

    const-string v8, "SecurityException occurs. Just ignore it. "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v7, ""
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_7a

    .line 307
    if-eqz v6, :cond_6

    .line 309
    :try_start_60
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_6

    .line 310
    :catch_64
    move-exception v8

    goto :goto_6

    .line 301
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_66
    move-exception v3

    .line 303
    .local v3, e:Ljava/io/IOException;
    :try_start_67
    const-string v7, "ClippedData"

    const-string v8, "Failure loading text"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_7a

    move-result-object v7

    .line 307
    if-eqz v6, :cond_6

    .line 309
    :try_start_74
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_6

    .line 310
    :catch_78
    move-exception v8

    goto :goto_6

    .line 307
    .end local v3           #e:Ljava/io/IOException;
    :catchall_7a
    move-exception v7

    if-eqz v6, :cond_80

    .line 309
    :try_start_7d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_94

    .line 311
    :cond_80
    :goto_80
    throw v7

    .line 322
    .end local v6           #stream:Ljava/io/FileInputStream;
    :cond_81
    iget-object v7, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v7, :cond_8e

    .line 323
    iget-object v7, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 327
    :cond_8e
    const-string v7, ""

    goto/16 :goto_6

    .line 310
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_92
    move-exception v7

    goto :goto_41

    :catch_94
    move-exception v8

    goto :goto_80
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method
