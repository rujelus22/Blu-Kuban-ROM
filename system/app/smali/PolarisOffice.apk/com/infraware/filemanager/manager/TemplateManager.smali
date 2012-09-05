.class public Lcom/infraware/filemanager/manager/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# static fields
.field public static final THUMBNAIL_DOCX_LETTER:I = 0x7f02027c

.field public static final THUMBNAIL_DOCX_MANUAL:I = 0x7f02027c

.field public static final THUMBNAIL_DOCX_OFFICIALDOC:I = 0x7f02027c

.field public static final THUMBNAIL_DOCX_PHOTOLETTER:I = 0x7f02027c

.field public static final THUMBNAIL_DOCX_REPORT:I = 0x7f02027c

.field public static final THUMBNAIL_DOCX_RESUME:I = 0x7f02027c

.field public static final THUMBNAIL_PPTX_FABRIC:I = 0x7f020286

.field public static final THUMBNAIL_PPTX_GRASS:I = 0x7f020287

.field public static final THUMBNAIL_PPTX_LEAVES:I = 0x7f020289

.field public static final THUMBNAIL_PPTX_LINE:I = 0x7f02028a

.field public static final THUMBNAIL_PPTX_PAPER:I = 0x7f02028b

.field public static final THUMBNAIL_PPTX_SKY:I = 0x7f02028d

.field public static final THUMBNAIL_PPTX_STONE:I = 0x7f02028e

.field public static final THUMBNAIL_XLSX_ACCOUNTBOOK:I = 0x7f020291

.field public static final THUMBNAIL_XLSX_ATTENDANCEBOOK:I = 0x7f020292

.field public static final THUMBNAIL_XLSX_CHART:I = 0x7f020293

.field public static final THUMBNAIL_XLSX_RECORD:I = 0x7f020295

.field public static final THUMBNAIL_XLSX_REPORT:I = 0x7f020296

.field private static mTemplateIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTemplateManager:Lcom/infraware/filemanager/manager/TemplateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateManager:Lcom/infraware/filemanager/manager/TemplateManager;

    .line 14
    sput-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    .line 19
    invoke-static {p1}, Lcom/infraware/filemanager/manager/TemplateManager;->loadIconResourceToMap(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/TemplateManager;
    .registers 3
    .parameter "aCtx"

    .prologue
    .line 24
    sget-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateManager:Lcom/infraware/filemanager/manager/TemplateManager;

    if-nez v0, :cond_13

    .line 25
    const-class v1, Lcom/infraware/filemanager/manager/TemplateManager;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateManager:Lcom/infraware/filemanager/manager/TemplateManager;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lcom/infraware/filemanager/manager/TemplateManager;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/manager/TemplateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateManager:Lcom/infraware/filemanager/manager/TemplateManager;

    .line 25
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 31
    :cond_13
    sget-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateManager:Lcom/infraware/filemanager/manager/TemplateManager;

    return-object v0

    .line 25
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static loadIconResourceToMap(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const v4, 0x7f02027c

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "ppt/Theme_fabric.pptx"

    const v3, 0x7f020286

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "ppt/Theme_grass.pptx"

    const v3, 0x7f020287

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "ppt/Theme_leaves.pptx"

    const v3, 0x7f020289

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "ppt/Theme_line.pptx"

    const v3, 0x7f02028a

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "ppt/Theme_paper.pptx"

    const v3, 0x7f02028b

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "ppt/Theme_sky.pptx"

    const v3, 0x7f02028d

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "ppt/Theme_stone.pptx"

    const v3, 0x7f02028e

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "doc/Letter.docx"

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "doc/Manual.docx"

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "doc/Official document.docx"

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "doc/Photo letter.docx"

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "doc/Report.docx"

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "doc/Resume.docx"

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "xls/Account book.xlsx"

    const v3, 0x7f020291

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "xls/Attendance book.xlsx"

    const v3, 0x7f020292

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "xls/Chart.xlsx"

    const v3, 0x7f020293

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "xls/Record.xlsx"

    const v3, 0x7f020295

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    const-string v2, "xls/Report.xlsx"

    const v3, 0x7f020296

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public getTemplateIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "path"

    .prologue
    .line 44
    sget-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isTemplate(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 36
    sget-object v0, Lcom/infraware/filemanager/manager/TemplateManager;->mTemplateIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
