.class public Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;
.super Landroid/content/ContentProvider;
.source "MxPreviewContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 50
    const-string v0, "content://com.sec.android.app.myfiles.provider.preview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 52
    new-instance v0, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    .line 60
    sget-object v0, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider.preview"

    const-string v2, "image"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider.preview"

    const-string v2, "audio"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider.preview"

    const-string v2, "video"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider.preview"

    const-string v2, "file"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 254
    return-void
.end method

.method private static decodePerc(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 145
    const-string v0, "<PERC>"

    const-string v1, "%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<SHARP>"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodePerc(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 141
    const-string v0, "%"

    const-string v1, "<PERC>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    const-string v2, "<SHARP>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyFilesImageUriFromFile(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "file"

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->encodePerc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 167
    .local v0, uri:Landroid/net/Uri;
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 85
    sget-object v1, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 87
    .local v0, match:I
    packed-switch v0, :pswitch_data_2e

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :pswitch_22
    const-string v1, "vnd.android.cursor.dir/image"

    .line 95
    :goto_24
    return-object v1

    .line 91
    :pswitch_25
    const-string v1, "vnd.android.cursor.dir/audio"

    goto :goto_24

    .line 93
    :pswitch_28
    const-string v1, "vnd.android.cursor.dir/video"

    goto :goto_24

    .line 95
    :pswitch_2b
    const-string v1, "vnd.android.cursor.dir/*"

    goto :goto_24

    .line 87
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 103
    sget-object v5, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 105
    .local v3, match:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->decodePerc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, filePath:Ljava/lang/String;
    const-string v5, "[MyFiles]"

    const-string v6, "ParcelFileDescriptor openFile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    packed-switch v3, :pswitch_data_66

    .line 126
    :goto_18
    const-string v5, "[MyFiles]"

    const-string v6, "ParcelFileDescriptor openFile#2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, f:Ljava/io/File;
    const/4 v4, 0x0

    .line 133
    .local v4, parcel:Landroid/os/ParcelFileDescriptor;
    const/high16 v5, 0x1000

    :try_start_27
    invoke-static {v1, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_60

    move-result-object v4

    .line 137
    :goto_2b
    return-object v4

    .line 112
    .end local v1           #f:Ljava/io/File;
    .end local v4           #parcel:Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string v5, "image"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    goto :goto_18

    .line 115
    :pswitch_39
    const-string v5, "audio"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    goto :goto_18

    .line 118
    :pswitch_46
    const-string v5, "video"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    goto :goto_18

    .line 121
    :pswitch_53
    const-string v5, "file"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 134
    .restart local v1       #f:Ljava/io/File;
    .restart local v4       #parcel:Landroid/os/ParcelFileDescriptor;
    :catch_60
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2b

    .line 110
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_39
        :pswitch_46
        :pswitch_53
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x0

    .line 225
    sget-object v1, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->mUriMatcher:Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider$MyFilesUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 227
    .local v0, match:I
    packed-switch v0, :pswitch_data_12

    .line 238
    const-string v1, "[MyFiles]"

    const-string v2, "Cna\'t handle this Uri on MyFiles provider"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :pswitch_11
    return-object v3

    .line 227
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method
