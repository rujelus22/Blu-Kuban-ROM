.class public Lcom/infraware/common/define/CMDefine$MimeInfo;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeInfo"
.end annotation


# instance fields
.field public contentUri:Landroid/net/Uri;

.field public fileName:Ljava/lang/String;

.field public fileUri:Landroid/net/Uri;

.field public id:I

.field public mediaType:I

.field public mediaUri:Landroid/net/Uri;

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/common/define/CMDefine$MimeInfo;->id:I

    .line 256
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$MimeInfo;->fileName:Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/define/CMDefine$MimeInfo;->fileUri:Landroid/net/Uri;

    .line 259
    iput-object v1, p0, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaUri:Landroid/net/Uri;

    .line 260
    iput-object v1, p0, Lcom/infraware/common/define/CMDefine$MimeInfo;->contentUri:Landroid/net/Uri;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 262
    return-void
.end method
