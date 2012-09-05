.class public Lcom/infraware/filemanager/manager/IconManager;
.super Ljava/lang/Object;
.source "IconManager.java"


# static fields
.field public static final ICON_RES_AUDIO:I = 0x7f0200ac

.field public static final ICON_RES_BOXNET:I = 0x7f0200ad

.field public static final ICON_RES_CSV:I = 0x7f0200af

.field public static final ICON_RES_DOC:I = 0x7f0200dc

.field public static final ICON_RES_DOCX:I = 0x7f0200b0

.field public static final ICON_RES_ETC:I = 0x7f0200b5

.field public static final ICON_RES_EXE:I = 0x7f0200c0

.field public static final ICON_RES_FOLDER:I = 0x7f0200b8

.field public static final ICON_RES_GOOGLE:I = 0x7f0200ba

.field public static final ICON_RES_HTML:I = 0x7f0200c0

.field public static final ICON_RES_HWP:I = 0x7f0200bb

.field public static final ICON_RES_ICS:I = 0x7f0200be

.field public static final ICON_RES_IMG:I = 0x7f0200bf

.field public static final ICON_RES_OTHER:I = 0x7f0200c3

.field public static final ICON_RES_PARENT:I = 0x7f0200b9

.field public static final ICON_RES_PDF:I = 0x7f0200c4

.field public static final ICON_RES_PPS:I = 0x7f0200c7

.field public static final ICON_RES_PPSX:I = 0x7f0200ca

.field public static final ICON_RES_PPT:I = 0x7f0200c7

.field public static final ICON_RES_PPTX:I = 0x7f0200ca

.field public static final ICON_RES_RTF:I = 0x7f0200ce

.field public static final ICON_RES_STILL:I = 0x7f0200c2

.field public static final ICON_RES_TXT:I = 0x7f0200d4

.field public static final ICON_RES_VCARD:I = 0x7f0200ae

.field public static final ICON_RES_VCS:I = 0x7f0200d8

.field public static final ICON_RES_VIDEO:I = 0x7f0200d9

.field public static final ICON_RES_VNT:I = 0x7f0200da

.field public static final ICON_RES_VTS:I = 0x7f0200db

.field public static final ICON_RES_XLS:I = 0x7f0200cf

.field public static final ICON_RES_XLSX:I = 0x7f0200df

.field public static final ICON_RES_XML:I = 0x7f0200e2

.field public static final ICON_RES_ZIP:I = 0x7f0200e3

.field public static final TYPE_RES_AUDIO:I = 0x7f08008d

.field public static final TYPE_RES_CSV:I = 0x7f080090

.field public static final TYPE_RES_DOC:I = 0x7f080002

.field public static final TYPE_RES_DOCX:I = 0x7f080005

.field public static final TYPE_RES_ETC:I = 0x7f080094

.field public static final TYPE_RES_EXE:I = 0x7f08008c

.field public static final TYPE_RES_HTML:I = 0x7f080089

.field public static final TYPE_RES_HWP:I = 0x7f08008a

.field public static final TYPE_RES_ICS:I = 0x7f080094

.field public static final TYPE_RES_IMG:I = 0x7f080088

.field public static final TYPE_RES_OTHER:I = 0x7f08008f

.field public static final TYPE_RES_PDF:I = 0x7f080003

.field public static final TYPE_RES_PPS:I = 0x7f080008

.field public static final TYPE_RES_PPSX:I = 0x7f080009

.field public static final TYPE_RES_PPT:I = 0x7f080004

.field public static final TYPE_RES_PPTX:I = 0x7f080007

.field public static final TYPE_RES_RTF:I = 0x7f080092

.field public static final TYPE_RES_STILL:I = 0x7f080088

.field public static final TYPE_RES_TXT:I = 0x7f080087

.field public static final TYPE_RES_VCARD:I = 0x7f080022

.field public static final TYPE_RES_VCS:I = 0x7f080093

.field public static final TYPE_RES_VIDEO:I = 0x7f08008e

.field public static final TYPE_RES_VNT:I = 0x7f080094

.field public static final TYPE_RES_VTS:I = 0x7f080094

.field public static final TYPE_RES_XLS:I = 0x7f080001

.field public static final TYPE_RES_XLSX:I = 0x7f080006

.field public static final TYPE_RES_XML:I = 0x7f080091

.field public static final TYPE_RES_ZIP:I = 0x7f08008b

.field private static mBmpIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mFileIconManager:Lcom/infraware/filemanager/manager/IconManager;

.field private static mResIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mResTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mFileIconManager:Lcom/infraware/filemanager/manager/IconManager;

    .line 23
    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    .line 24
    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    .line 25
    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "aCtx"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    .line 33
    invoke-static {p1}, Lcom/infraware/filemanager/manager/IconManager;->loadIconResourceToMap(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;
    .registers 3
    .parameter "aCtx"

    .prologue
    .line 38
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mFileIconManager:Lcom/infraware/filemanager/manager/IconManager;

    if-nez v0, :cond_13

    .line 39
    const-class v1, Lcom/infraware/filemanager/manager/IconManager;

    monitor-enter v1

    .line 40
    :try_start_7
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mFileIconManager:Lcom/infraware/filemanager/manager/IconManager;

    if-nez v0, :cond_12

    .line 41
    new-instance v0, Lcom/infraware/filemanager/manager/IconManager;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/manager/IconManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/filemanager/manager/IconManager;->mFileIconManager:Lcom/infraware/filemanager/manager/IconManager;

    .line 39
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 45
    :cond_13
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mFileIconManager:Lcom/infraware/filemanager/manager/IconManager;

    return-object v0

    .line 39
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static isExcutable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .parameter "aCtx"
    .parameter "ext"

    .prologue
    const/4 v3, 0x0

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/infraware/common/util/Utils;->getMimeTypeInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, type:Ljava/lang/String;
    if-nez v2, :cond_f

    .line 188
    :cond_e
    :goto_e
    return v3

    .line 183
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://mnt/sdcard/a."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, Apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_e

    .line 188
    const/4 v3, 0x1

    goto :goto_e
.end method

.method private static loadIconResourceToMap(Landroid/content/Context;)V
    .registers 10
    .parameter "aCtx"

    .prologue
    const v8, 0x7f0200bf

    const v7, 0x7f08008d

    const v6, 0x7f08008e

    const v5, 0x7f0200ac

    const v4, 0x7f0200d9

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 203
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "doc"

    const v3, 0x7f080002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "doc"

    const v3, 0x7f0200dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200dc

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "docx"

    const v3, 0x7f080005

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "docx"

    const v3, 0x7f0200b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200b0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "xls"

    const v3, 0x7f080001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "xls"

    const v3, 0x7f0200cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200cf

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "xlsx"

    const v3, 0x7f080006

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "xlsx"

    const v3, 0x7f0200df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200df

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "ppt"

    const v3, 0x7f080004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "ppt"

    const v3, 0x7f0200c7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200c7

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "pptx"

    const v3, 0x7f080007

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "pptx"

    const v3, 0x7f0200ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200ca

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "pdf"

    const v3, 0x7f080003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "pdf"

    const v3, 0x7f0200c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200c4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "hwp"

    const v3, 0x7f08008a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "hwp"

    const v3, 0x7f0200bb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200bb

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "txt"

    const v3, 0x7f080087

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "txt"

    const v3, 0x7f0200d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200d4

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    const-string v2, "zip"

    const v3, 0x7f08008b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    const-string v2, "zip"

    const v3, 0x7f0200e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200e3

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "csv"

    const v2, 0x7f0200af

    const v3, 0x7f080090

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 250
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200af

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "xml"

    const v2, 0x7f0200e2

    const v3, 0x7f080091

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 259
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200e2

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "rtf"

    const v2, 0x7f0200ce

    const v3, 0x7f080092

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 268
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200ce

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v1, "pps"

    const v2, 0x7f0200c7

    const v3, 0x7f080008

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 280
    const-string v1, "ppsx"

    const v2, 0x7f0200ca

    const v3, 0x7f080009

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 283
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200c7

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200ca

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "htm"

    const v2, 0x7f0200c0

    const v3, 0x7f080089

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 288
    const-string v1, "html"

    const v2, 0x7f0200c0

    const v3, 0x7f080089

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 289
    const-string v1, "mht"

    const v2, 0x7f0200c0

    const v3, 0x7f080089

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 290
    const-string v1, "mhtml"

    const v2, 0x7f0200c0

    const v3, 0x7f080089

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 291
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200c0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "apk"

    const v2, 0x7f0200c0

    const v3, 0x7f08008c

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 295
    const-string v1, "exe"

    const v2, 0x7f0200c0

    const v3, 0x7f08008c

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 296
    const-string v1, "com"

    const v2, 0x7f0200c0

    const v3, 0x7f08008c

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 297
    const-string v1, "pkg"

    const v2, 0x7f0200c0

    const v3, 0x7f08008c

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 298
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200c0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "aac"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 302
    const-string v1, "amr"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 303
    const-string v1, "imy"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 304
    const-string v1, "mp3"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 305
    const-string v1, "wma"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 306
    const-string v1, "wav"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 307
    const-string v1, "ogg"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 308
    const-string v1, "mid"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 309
    const-string v1, "midi"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 310
    const-string v1, "m4a"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 311
    const-string v1, "mmf"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 312
    const-string v1, "xmf"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 313
    const-string v1, "3ga"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 314
    const-string v1, "flac"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 315
    const-string v1, "qcp"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 316
    const-string v1, "mpga"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 317
    const-string v1, "mxmf"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 318
    const-string v1, "odf"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 319
    const-string v1, "dcf"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 320
    const-string v1, "rtx"

    invoke-static {p0, v1, v5, v7}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 321
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "avi"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 325
    const-string v1, "mp4"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 326
    const-string v1, "mpg"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 327
    const-string v1, "mpeg"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 328
    const-string v1, "mkv"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 329
    const-string v1, "mov"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 330
    const-string v1, "divx"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 331
    const-string v1, "3gp"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 332
    const-string v1, "3gpp"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 333
    const-string v1, "3g2"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 334
    const-string v1, "asf"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 335
    const-string v1, "wmv"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 336
    const-string v1, "m4v"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 337
    const-string v1, "k3g"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 338
    const-string v1, "skm"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 339
    const-string v1, "ts"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 340
    const-string v1, "flv"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 341
    const-string v1, "dmb"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 342
    const-string v1, "mp2"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 343
    const-string v1, "webm"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 344
    const-string v1, "f4v"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 345
    const-string v1, "ogm"

    invoke-static {p0, v1, v4, v6}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 347
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v1, "vcf"

    const v2, 0x7f0200ae

    const v3, 0x7f080022

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 351
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200ae

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "ico"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 355
    const-string v1, "img"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 356
    const-string v1, "tga"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 357
    const-string v1, "jpeg"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 358
    const-string v1, "jpg"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 359
    const-string v1, "bmp"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 360
    const-string v1, "gif"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 361
    const-string v1, "png"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 362
    const-string v1, "wbmp"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 363
    const-string v1, "pcx"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 364
    const-string v1, "wmf"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 365
    const-string v1, "emf"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 366
    const-string v1, "tif"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 367
    const-string v1, "tiff"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 368
    const-string v1, "mpo"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 369
    const-string v1, "dci"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 370
    const-string v1, "jps"

    const v2, 0x7f080088

    invoke-static {p0, v1, v8, v2}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 371
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "wpg"

    const v2, 0x7f0200c3

    const v3, 0x7f08008f

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 375
    const-string v1, "gul"

    const v2, 0x7f0200c3

    const v3, 0x7f08008f

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 376
    const-string v1, "dot"

    const v2, 0x7f0200dc

    const v3, 0x7f08008f

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 377
    const-string v1, "pot"

    const v2, 0x7f0200c7

    const v3, 0x7f08008f

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 378
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200c3

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "vnt"

    const v2, 0x7f0200da

    const v3, 0x7f080094

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 382
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200da

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "vcs"

    const v2, 0x7f0200d8

    const v3, 0x7f080093

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 386
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200d8

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200b5

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v1, "vts"

    const v2, 0x7f0200db

    const v3, 0x7f080094

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 393
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200db

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "ics"

    const v2, 0x7f0200be

    const v3, 0x7f080094

    invoke-static {p0, v1, v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->setResMap(Landroid/content/Context;Ljava/lang/String;II)V

    .line 397
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0200be

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    return-void
.end method

.method private static setResMap(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 6
    .parameter "aCtx"
    .parameter "ext"
    .parameter "iconRes"
    .parameter "typeRes"

    .prologue
    .line 193
    invoke-static {p0, p1}, Lcom/infraware/filemanager/manager/IconManager;->isExcutable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 195
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_18
    return-void
.end method


# virtual methods
.method public getBmpByExt(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "aExt"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/manager/IconManager;->getResIdByExt(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, resId:I
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 98
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 101
    :goto_1c
    return-object v1

    :cond_1d
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v2, 0x7f0200b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_1c
.end method

.method public getImageBmp()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 108
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mBmpIconMap:Ljava/util/HashMap;

    const v1, 0x7f0200bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getResIdByExt(Ljava/lang/String;)I
    .registers 5
    .parameter "aExt"

    .prologue
    const v0, 0x7f0200b5

    .line 50
    if-nez p1, :cond_6

    .line 60
    :cond_5
    :goto_5
    return v0

    .line 53
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5
.end method

.method public getTypeByExt(Ljava/lang/String;)I
    .registers 5
    .parameter "aExt"

    .prologue
    const v0, 0x7f080094

    .line 64
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 71
    :cond_b
    :goto_b
    return v0

    .line 67
    :cond_c
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 68
    sget-object v0, Lcom/infraware/filemanager/manager/IconManager;->mResTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method public isImageExt(Ljava/lang/String;)Z
    .registers 6
    .parameter "aExt"

    .prologue
    const/4 v2, 0x0

    .line 75
    if-nez p1, :cond_5

    move v1, v2

    .line 90
    :goto_4
    return v1

    .line 78
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 79
    goto :goto_4

    .line 81
    :cond_d
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 82
    sget-object v1, Lcom/infraware/filemanager/manager/IconManager;->mResIconMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    .local v0, resId:I
    const v1, 0x7f0200c2

    if-eq v0, v1, :cond_33

    const v1, 0x7f0200bf

    if-ne v0, v1, :cond_35

    .line 85
    :cond_33
    const/4 v1, 0x1

    goto :goto_4

    :cond_35
    move v1, v2

    .line 87
    goto :goto_4

    .end local v0           #resId:I
    :cond_37
    move v1, v2

    .line 90
    goto :goto_4
.end method
