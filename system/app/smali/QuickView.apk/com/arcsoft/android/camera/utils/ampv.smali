.class public Lcom/arcsoft/android/camera/utils/ampv;
.super Ljava/lang/Object;
.source "ampv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;,
        Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;,
        Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;,
        Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;
    }
.end annotation


# static fields
.field public static final AMPV_CMD_Async_Zoom:I = 0x1002

.field public static final AMPV_CMD_Dragging:I = 0x1005

.field public static final AMPV_CMD_Film_Strip:I = 0x100a

.field public static final AMPV_CMD_Next_File:I = 0x1007

.field public static final AMPV_CMD_Pan:I = 0x1000

.field public static final AMPV_CMD_Prev_File:I = 0x1006

.field public static final AMPV_CMD_Rotate_Custom:I = 0x100c

.field public static final AMPV_CMD_Rotate_Image:I = 0x1009

.field public static final AMPV_CMD_Rotate_Screen:I = 0x1008

.field public static final AMPV_CMD_Select_Item:I = 0x100b

.field public static final AMPV_CMD_Zoom:I = 0x1001

.field public static final AMPV_CMD_Zoom_In:I = 0x1003

.field public static final AMPV_CMD_Zoom_Out:I = 0x1004

.field public static final AMPV_DO_STEP_DELAY:I = 0x3

.field public static final AMPV_DO_STEP_NO_MORE_DELAY:I = 0x32

.field public static final AMPV_ERR_NO_MORE:I = 0x80002

.field public static final AMPV_ERR_OK:I = 0x0

.field public static final AMPV_ITEM_EDIT:I = 0xa92702

.field public static final AMPV_ITEM_RANGE:I = 0xa92703

.field public static final AMPV_ITEM_REMOVE:I = 0xa92701

.field public static final AMPV_ITEM_RENAME:I = 0xa92704

.field public static final AMPV_MSG_BOUNCE_DOING:I = 0xa73002

.field public static final AMPV_MSG_BOUNCE_END:I = 0xa73003

.field public static final AMPV_MSG_BOUNCE_START:I = 0xa73001

.field public static final AMPV_MSG_CLEARDATA:I = 0x2005

.field public static final AMPV_MSG_DRAGGING:I = 0x2001

.field public static final AMPV_MSG_FILMSTRIP:I = 0x2002

.field public static final AMPV_MSG_IMAGE_BROWSING:I = 0x2004

.field public static final AMPV_MSG_IMAGE_CLOSED:I = 0x2003

.field public static final AMPV_MSG_IMAGE_READY:I = 0x2000

.field public static final AMPV_PROP_FS_AUTO_FADEOUT:I = 0x3002

.field public static final AMPV_PROP_GET_CUR_DISPLAY_RECT:I = 0xa6202d

.field public static final AMPV_PROP_IMAGE_ORIENTATION:I = 0x3001

.field public static final AMTE_ITEM_INSERT:I = 0xa92700

.field public static final AM_ZOOM_FITIN:I = -0xf

.field public static final JNI_SCREEN_RESOLUTION:I = 0x2

.field public static final JNI_VERSION_CODE:I = 0x1

.field private static m_fnBounceCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;

.field private static m_fnFilelListCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;

.field private static m_fnGetThumbCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;

.field private static m_fnNotifyCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/arcsoft/android/camera/utils/ampv;->m_fnNotifyCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;

    .line 99
    sput-object v0, Lcom/arcsoft/android/camera/utils/ampv;->m_fnFilelListCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;

    .line 101
    sput-object v0, Lcom/arcsoft/android/camera/utils/ampv;->m_fnGetThumbCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;

    .line 102
    sput-object v0, Lcom/arcsoft/android/camera/utils/ampv;->m_fnBounceCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static native ampv_create(I)I
.end method

.method public static native ampv_destroy(I)I
.end method

.method public static native ampv_disableRawData(ILjava/lang/String;)I
.end method

.method public static native ampv_doStep(I)I
.end method

.method public static native ampv_getBitmaps(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method

.method public static native ampv_getItemInfo(IILcom/arcsoft/android/camera/utils/AMPV_ItemInfo;)I
.end method

.method public static native ampv_getProp(IILjava/lang/Object;)I
.end method

.method public static native ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I
.end method

.method public static native ampv_handleCommand(IIIII)I
.end method

.method public static native ampv_init(IIIIILandroid/graphics/Bitmap;)I
.end method

.method public static native ampv_insertRawData(IILandroid/graphics/Bitmap;)I
.end method

.method public static native ampv_loadFile(ILjava/lang/String;)I
.end method

.method public static native ampv_loadFileList(I)I
.end method

.method public static native ampv_nextFile(I)I
.end method

.method public static native ampv_previousFile(I)I
.end method

.method public static native ampv_refreshDisplay(I)I
.end method

.method public static native ampv_reload(IIIILandroid/graphics/Bitmap;)I
.end method

.method public static native ampv_resume(I)I
.end method

.method public static ampv_setCallbacks(ILcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;I)V
    .registers 6
    .parameter "hAMPV"
    .parameter "fnNotify"
    .parameter "fnFileList"
    .parameter "fnGetThumb"
    .parameter "fnBounceNotify"
    .parameter "UserData"

    .prologue
    .line 123
    if-eqz p1, :cond_4

    .line 124
    sput-object p1, Lcom/arcsoft/android/camera/utils/ampv;->m_fnNotifyCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;

    .line 125
    :cond_4
    if-eqz p2, :cond_8

    .line 126
    sput-object p2, Lcom/arcsoft/android/camera/utils/ampv;->m_fnFilelListCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;

    .line 127
    :cond_8
    if-eqz p3, :cond_c

    .line 128
    sput-object p3, Lcom/arcsoft/android/camera/utils/ampv;->m_fnGetThumbCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;

    .line 129
    :cond_c
    if-eqz p4, :cond_10

    .line 130
    sput-object p4, Lcom/arcsoft/android/camera/utils/ampv;->m_fnBounceCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;

    .line 131
    :cond_10
    invoke-static {p0, p5}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setNotify(II)I

    .line 132
    return-void
.end method

.method public static native ampv_setDisplaySurface(ILandroid/view/Surface;)I
.end method

.method private static native ampv_setNotify(II)I
.end method

.method public static native ampv_setProp(III)I
.end method

.method public static native ampv_suspend(I)I
.end method

.method public static native ampv_updateItem(III)I
.end method
