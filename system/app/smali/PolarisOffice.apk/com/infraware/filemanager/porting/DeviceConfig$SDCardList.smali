.class public Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/porting/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardList"
.end annotation


# static fields
.field public static final MAX_SDCARD_COUNT:I = 0x1

.field public static final SDCARD_FOLDER_ICON:[I

.field public static final SDCARD_FOLDER_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "external_sd"

    aput-object v1, v0, v2

    .line 18
    sput-object v0, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->SDCARD_FOLDER_NAME:[Ljava/lang/String;

    .line 21
    new-array v0, v3, [I

    const v1, 0x7f0200b6

    aput v1, v0, v2

    .line 20
    sput-object v0, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->SDCARD_FOLDER_ICON:[I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDCardIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "resources"
    .parameter "folderName"

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, icon:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v2, 0x1

    if-lt v0, v2, :cond_6

    .line 32
    :goto_5
    return-object v1

    .line 27
    :cond_6
    sget-object v2, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->SDCARD_FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 28
    sget-object v2, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->SDCARD_FOLDER_ICON:[I

    aget v2, v2, v0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 29
    goto :goto_5

    .line 25
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
