.class public Lcom/sec/android/mimage/photoretouching/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DB_DIR:Ljava/lang/String; = null

.field public static final DEBUG_TAG:Ljava/lang/String; = "[PhotoEditor_U1ICS_120206]"

.field public static final DIALOG_ASK_TO_SAVE:I = 0xc000

.field public static final DIALOG_FILE_SAVEAS:I = 0xc001

.field public static final DIALOG_INTRODUCTION:I = 0xc002

.field public static final DIALOG_PROGRESS:I = 0xc003

.field public static final DIALOG_SUBMENU:I = 0xc006

.field public static final DIALOG_SUBMENU_BSIZE:I = 0xc00d

.field public static final DIALOG_SUBMENU_COLOR:I = 0xc00a

.field public static final DIALOG_SUBMENU_FILTER:I = 0xc009

.field public static final DIALOG_SUBMENU_SELECT:I = 0xc00c

.field public static final DIALOG_SUBMENU_SHARE:I = 0xc007

.field public static final DIALOG_SUBMENU_TOOL:I = 0xc00b

.field public static final EXTERNAL_STORAGE:Ljava/lang/String; = null

.field public static final MAX_IMAGE_HEIGHT:I = 0x500

.field public static final MAX_IMAGE_WIDTH:I = 0x500

.field public static final MIN_IMAGE_HEIGHT:I = 0x64

.field public static final MIN_IMAGE_WIDTH:I = 0x64

.field public static final MY_PREFS:Ljava/lang/String; = "PhotoEditorSharedPreferences"

.field public static final PICK_CAMERA:I = 0xb001

.field public static final PICK_IMAGE:I = 0xb000

.field public static final PICK_SUBIMAGE:I = 0xb002

.field public static final SAVE_DIR:Ljava/lang/String; = null

.field public static final STATUS_FILE_OPEN:I = 0xa001

.field public static final STATUS_NONE:I = 0xa000

.field public static final STATUS_REOPEN_ING:I = 0xa005

.field public static final STATUS_WORKING:I = 0xa002

.field public static final STATUS_WORKING_DONE:I = 0xa003

.field public static final STATUS_WORKSPACE:I = 0xa004

.field public static final THREAD_DASHED_LINE:I = 0xd002

.field public static final THREAD_DIALOG_DISMISS:I = 0xd003

.field public static final THREAD_FINISH_PROGRESS:I = 0xd005

.field public static final THREAD_SHOW_PROGRESS:I = 0xd004

.field public static final THREAD_START_VIEW:I = 0xd000

.field public static final THREAD_ZOOMING:I = 0xd001

.field public static final TMPFILENAME:Ljava/lang/String; = "photoeditor_camera_input.jpg"

.field public static final UNDOREDO_LIMIT:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/common/Constants;->EXTERNAL_STORAGE:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/common/Constants;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Photo Editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/common/Constants;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Photo Editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/common/Constants;->DB_DIR:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
