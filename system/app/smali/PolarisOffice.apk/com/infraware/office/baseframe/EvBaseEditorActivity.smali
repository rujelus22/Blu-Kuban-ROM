.class public abstract Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.super Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$EditorListener;
.implements Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;
.implements Lcom/infraware/office/evengine/E$EV_BORDER_STYLE;
.implements Lcom/infraware/office/evengine/E$EV_BORDER_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_MASK_ATT;
.implements Lcom/infraware/office/evengine/E$EV_EDIT_OBJECT_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_WORD_CELL_MERGE_SEP;
.implements Lcom/infraware/office/evengine/E$EV_CELL_INSERT_DELETE;
.implements Lcom/infraware/office/evengine/E$EV_CELL_INSERT_MODE;
.implements Lcom/infraware/office/evengine/E$EV_CELL_DELETE_MODE;
.implements Lcom/infraware/office/evengine/E$EV_CARET_MARK;
.implements Lcom/infraware/office/evengine/E$EV_BULLETNUMBER_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_BULLET_NUMBERING;
.implements Lcom/infraware/office/evengine/E$EV_PARAGRAPH_ALIGN;
.implements Lcom/infraware/office/evengine/E$EV_PARAGRAPH_DIRECTION;
.implements Lcom/infraware/office/evengine/E$EV_INDENTATION;
.implements Lcom/infraware/office/evengine/E$EV_REPLACE_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_ERROR_CODE;
.implements Lcom/infraware/office/evengine/E$EV_STATUS;
.implements Lcom/infraware/office/evengine/E$EV_EDIT_CURSOR_MODE;
.implements Lcom/infraware/office/evengine/E$EV_EDIT_MODE;
.implements Lcom/infraware/office/evengine/E$EV_REDO_UNDO;
.implements Lcom/infraware/office/evengine/E$EV_PROTECT;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarID;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarTypeDef;
.implements Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;,
        Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETECELLS:I = 0x12c

.field private static final DIALOG_INSERTCELLS:I = 0x190

.field private static final DIALOG_SELECTCELLS:I = 0xc8

.field private static final DIALOG_SPLITCELLS:I = 0x64

.field static final EV_SHEET_FORMAT_ALIGNMENT:I = 0x51

.field static final EV_SHEET_FORMAT_AUTOHEIGHT:I = 0x55

.field static final EV_SHEET_FORMAT_AUTOWIDTH:I = 0x59

.field static final EV_SHEET_FORMAT_CLEAR:I = 0x5c

.field static final EV_SHEET_FORMAT_DELETE:I = 0x5d

.field static final EV_SHEET_FORMAT_FILLS:I = 0x53

.field static final EV_SHEET_FORMAT_FONT:I = 0x50

.field static final EV_SHEET_FORMAT_HEIGHT:I = 0x54

.field static final EV_SHEET_FORMAT_HIDECOLUMN:I = 0x5a

.field static final EV_SHEET_FORMAT_HIDEROWS:I = 0x56

.field static final EV_SHEET_FORMAT_MERGE:I = 0x5e

.field static final EV_SHEET_FORMAT_NUMBERS:I = 0x52

.field static final EV_SHEET_FORMAT_SHOWCOLUMN:I = 0x5b

.field static final EV_SHEET_FORMAT_SHOWROWS:I = 0x57

.field static final EV_SHEET_FORMAT_WIDTH:I = 0x58

.field static final EV_SHEET_INSERT_CELLS:I = 0x46

.field static final EV_SHEET_INSERT_CHART:I = 0x4a

.field static final EV_SHEET_INSERT_COLUMNS:I = 0x48

.field static final EV_SHEET_INSERT_FUNCTION:I = 0x4b

.field static final EV_SHEET_INSERT_ROWS:I = 0x47

.field static final EV_SHEET_INSERT_SHEET:I = 0x49

.field static final EV_SLIDE_FORMAT_BULLETS:I = 0x3e

.field static final EV_SLIDE_FORMAT_DELETE:I = 0x41

.field static final EV_SLIDE_FORMAT_FILLS:I = 0x45

.field static final EV_SLIDE_FORMAT_FONT:I = 0x3c

.field static final EV_SLIDE_FORMAT_INSERT:I = 0x40

.field static final EV_SLIDE_FORMAT_MERGE:I = 0x43

.field static final EV_SLIDE_FORMAT_PARAGRAPH:I = 0x3d

.field static final EV_SLIDE_FORMAT_SELECT:I = 0x42

.field static final EV_SLIDE_FORMAT_SHAPE:I = 0x3f

.field static final EV_SLIDE_FORMAT_SPLIT:I = 0x44

.field static final EV_SLIDE_INSERT_CAMERA:I = 0x35

.field static final EV_SLIDE_INSERT_COPY:I = 0x33

.field static final EV_SLIDE_INSERT_FREEDRAW:I = 0x3a

.field static final EV_SLIDE_INSERT_IMAGE:I = 0x34

.field static final EV_SLIDE_INSERT_SHAPE:I = 0x36

.field static final EV_SLIDE_INSERT_SLIDE:I = 0x32

.field static final EV_SLIDE_INSERT_SMEMO:I = 0x39

.field static final EV_SLIDE_INSERT_TABLE:I = 0x38

.field static final EV_SLIDE_INSERT_TEXTBOX:I = 0x37

.field static final EV_SUB_FILE_SAVE:I = 0x0

.field static final EV_SUB_FILE_SAVEAS:I = 0x1

.field static final EV_SUB_VIEW_FIND:I = 0xe

.field static final EV_SUB_VIEW_GOTO:I = 0xa

.field static final EV_SUB_VIEW_MODE:I = 0xd

.field static final EV_SUB_VIEW_REFLOW:I = 0xc

.field static final EV_SUB_VIEW_REPLACE:I = 0xf

.field static final EV_SUB_VIEW_ZOOM:I = 0xb

.field static final EV_WORD_FORMAT_BULLETS:I = 0x20

.field static final EV_WORD_FORMAT_COLUMNS:I = 0x21

.field static final EV_WORD_FORMAT_DELETE:I = 0x24

.field static final EV_WORD_FORMAT_FILLS:I = 0x28

.field static final EV_WORD_FORMAT_FONT:I = 0x1e

.field static final EV_WORD_FORMAT_INSERT:I = 0x23

.field static final EV_WORD_FORMAT_MERGE:I = 0x26

.field static final EV_WORD_FORMAT_PARAGRAPH:I = 0x1f

.field static final EV_WORD_FORMAT_SELECT:I = 0x25

.field static final EV_WORD_FORMAT_SHAPE:I = 0x22

.field static final EV_WORD_FORMAT_SPLIT:I = 0x27

.field static final EV_WORD_INSERT_BOOKMARK:I = 0x18

.field static final EV_WORD_INSERT_CAMERA:I = 0x15

.field static final EV_WORD_INSERT_FREEDRAW:I = 0x1b

.field static final EV_WORD_INSERT_HYPERLINK:I = 0x17

.field static final EV_WORD_INSERT_IMAGE:I = 0x14

.field static final EV_WORD_INSERT_SHAPE:I = 0x16

.field static final EV_WORD_INSERT_SMEMO:I = 0x1a

.field static final EV_WORD_INSERT_TABLE:I = 0x19

.field private static final MAX_CELLSIZE:I = 0xa

.field private static final MAX_FONTSIZE:I = 0x7f

.field private static final MAX_OBJECTSIZE:I = 0x22e

.field private static final MAX_TOTAL_CELLSIZE:I = 0x32

.field private static final MIN_CELLSIZE:I = 0x1

.field private static final MIN_FONTSIZE:I = 0x1

.field private static final MIN_IMAGESIZE:I = 0x1

.field private static final MIN_OBJECTSIZE:I = 0x2


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private final TOOLBAR_ID:I

.field fontSizeWatcher:Landroid/text/TextWatcher;

.field protected mBShowIMEAfterScreenChanged:Z

.field protected mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

.field private mCameraImageUri:Landroid/net/Uri;

.field protected mCellStatus:I

.field protected mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

.field private mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

.field private mColorPickerTitleID:I

.field protected mContentRect:Landroid/graphics/Rect;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDeleteCellsDialog:Landroid/app/AlertDialog;

.field private mFileSaveAs:Ljava/lang/String;

.field private mFontSizeOthersDialog:Landroid/app/AlertDialog;

.field private mImageSize:Landroid/graphics/Point;

.field private mInsertCellsDialog:Landroid/app/AlertDialog;

.field mIsBackPressSave:Z

.field mIsDifType:Z

.field protected mMenu:Landroid/view/Menu;

.field private mMoreColorType:I

.field private mMsgPopup:Landroid/app/AlertDialog;

.field private mResizeDialog:Landroid/app/AlertDialog;

.field protected mResizeFileName:Ljava/lang/String;

.field private mResizeImageDialog:Landroid/app/AlertDialog;

.field private mSelectCellsDialog:Landroid/app/AlertDialog;

.field private mSmemoImageUri:Landroid/net/Uri;

.field private mSplitCellsDialog:Landroid/app/AlertDialog;

.field protected mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

.field private m_ToastMsg:Landroid/widget/Toast;

.field protected m_bFileSave:Z

.field protected m_bFileSaveAs:Z

.field protected m_bSheetFormatAlignment:Z

.field protected m_bSheetFormatAutoHeight:Z

.field protected m_bSheetFormatAutoWidth:Z

.field protected m_bSheetFormatClear:Z

.field protected m_bSheetFormatDelete:Z

.field protected m_bSheetFormatFills:Z

.field protected m_bSheetFormatFont:Z

.field protected m_bSheetFormatHeight:Z

.field protected m_bSheetFormatHideCols:Z

.field protected m_bSheetFormatHideRows:Z

.field protected m_bSheetFormatMerge:Z

.field protected m_bSheetFormatNumbers:Z

.field protected m_bSheetFormatShowCols:Z

.field protected m_bSheetFormatShowRows:Z

.field protected m_bSheetFormatWidth:Z

.field protected m_bSheetInsertCells:Z

.field protected m_bSheetInsertChart:Z

.field protected m_bSheetInsertColumns:Z

.field protected m_bSheetInsertFunction:Z

.field protected m_bSheetInsertRows:Z

.field protected m_bSheetInsertSheet:Z

.field protected m_bSlideFormatBullets:Z

.field protected m_bSlideFormatDelete:Z

.field protected m_bSlideFormatFills:Z

.field protected m_bSlideFormatFont:Z

.field protected m_bSlideFormatInsert:Z

.field protected m_bSlideFormatMerge:Z

.field protected m_bSlideFormatParagraph:Z

.field protected m_bSlideFormatSelect:Z

.field protected m_bSlideFormatShape:Z

.field protected m_bSlideFormatSplit:Z

.field protected m_bSlideInsertCamera:Z

.field protected m_bSlideInsertCopy:Z

.field protected m_bSlideInsertFreedraw:Z

.field protected m_bSlideInsertImage:Z

.field protected m_bSlideInsertSMemo:Z

.field protected m_bSlideInsertShape:Z

.field protected m_bSlideInsertSlide:Z

.field protected m_bSlideInsertTable:Z

.field protected m_bSlideInsertTextBox:Z

.field protected m_bViewFind:Z

.field protected m_bViewMode:Z

.field protected m_bViewReflow:Z

.field protected m_bViewReplace:Z

.field protected m_bViewSlide:Z

.field protected m_bViewZoom:Z

.field protected m_bWordFormatBullets:Z

.field protected m_bWordFormatColumns:Z

.field protected m_bWordFormatDelete:Z

.field protected m_bWordFormatFills:Z

.field protected m_bWordFormatFont:Z

.field protected m_bWordFormatInsert:Z

.field protected m_bWordFormatMerge:Z

.field protected m_bWordFormatParagraph:Z

.field protected m_bWordFormatSelect:Z

.field protected m_bWordFormatShape:Z

.field protected m_bWordFormatSplit:Z

.field protected m_bWordInsertBookmark:Z

.field protected m_bWordInsertCamera:Z

.field protected m_bWordInsertFreedraw:Z

.field protected m_bWordInsertHyperLink:Z

.field protected m_bWordInsertImage:Z

.field protected m_bWordInsertSMemo:Z

.field protected m_bWordInsertShape:Z

.field protected m_bWordInsertTable:Z

.field private m_nErrMsgId:I

.field private m_nPopupType:I

.field private m_nSubMenuId:I

.field private m_oIconMenuPopup:Landroid/app/AlertDialog;

.field private m_oListListener:Landroid/content/DialogInterface$OnClickListener;

.field private m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

.field private m_oSheetListener:Landroid/content/DialogInterface$OnClickListener;

.field private m_oSlideListener:Landroid/content/DialogInterface$OnClickListener;

.field private m_oWordListener:Landroid/content/DialogInterface$OnClickListener;

.field protected m_strSheetFormatMerge:Ljava/lang/String;

.field private m_strVendor:Ljava/lang/String;

.field protected mbDeleteResizeFile:Ljava/lang/Boolean;

.field protected mbMenuChange:Z

.field protected mbMenuOpen:Z

.field private mbSaveAs:Z

.field resizeImageWatcher:Landroid/text/TextWatcher;

.field resizeWatcher:Landroid/text/TextWatcher;

.field splitWatcher:Landroid/text/TextWatcher;

.field private vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;-><init>()V

    .line 50
    const-string v0, "EvBaseEditorActivity"

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->LOG_CAT:Ljava/lang/String;

    .line 51
    const/16 v0, 0x1a0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->TOOLBAR_ID:I

    .line 52
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    .line 53
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    .line 54
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mInsertCellsDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDeleteCellsDialog:Landroid/app/AlertDialog;

    .line 56
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSelectCellsDialog:Landroid/app/AlertDialog;

    .line 57
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerTitleID:I

    .line 60
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    .line 61
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    .line 62
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMoreColorType:I

    .line 63
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMenu:Landroid/view/Menu;

    .line 65
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    .line 66
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    .line 67
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCellStatus:I

    .line 68
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nPopupType:I

    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    .line 69
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    .line 70
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsDifType:Z

    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsBackPressSave:Z

    .line 71
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 72
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 73
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCameraImageUri:Landroid/net/Uri;

    .line 74
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSmemoImageUri:Landroid/net/Uri;

    .line 75
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbMenuOpen:Z

    .line 76
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbMenuChange:Z

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mContentRect:Landroid/graphics/Rect;

    .line 78
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBShowIMEAfterScreenChanged:Z

    .line 79
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSaveAs:Z

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;

    .line 83
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFileSaveAs:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strVendor:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeFileName:Ljava/lang/String;

    .line 111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbDeleteResizeFile:Ljava/lang/Boolean;

    .line 518
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->resizeWatcher:Landroid/text/TextWatcher;

    .line 1709
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->fontSizeWatcher:Landroid/text/TextWatcher;

    .line 1794
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->splitWatcher:Landroid/text/TextWatcher;

    .line 2084
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->resizeImageWatcher:Landroid/text/TextWatcher;

    .line 2858
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    .line 2859
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    .line 2860
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nSubMenuId:I

    .line 2865
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSave:Z

    .line 2866
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSaveAs:Z

    .line 2875
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewSlide:Z

    .line 2876
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewZoom:Z

    .line 2877
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReflow:Z

    .line 2878
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewMode:Z

    .line 2879
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewFind:Z

    .line 2880
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReplace:Z

    .line 2891
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertImage:Z

    .line 2892
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertCamera:Z

    .line 2893
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertSMemo:Z

    .line 2894
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertShape:Z

    .line 2895
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertFreedraw:Z

    .line 2896
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertHyperLink:Z

    .line 2897
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertBookmark:Z

    .line 2898
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertTable:Z

    .line 2912
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFont:Z

    .line 2913
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatParagraph:Z

    .line 2914
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatBullets:Z

    .line 2915
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatColumns:Z

    .line 2916
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatShape:Z

    .line 2917
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatInsert:Z

    .line 2918
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatDelete:Z

    .line 2919
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSelect:Z

    .line 2920
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatMerge:Z

    .line 2921
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSplit:Z

    .line 2922
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFills:Z

    .line 2934
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSlide:Z

    .line 2935
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCopy:Z

    .line 2936
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertImage:Z

    .line 2937
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCamera:Z

    .line 2938
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertShape:Z

    .line 2939
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTextBox:Z

    .line 2940
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTable:Z

    .line 2941
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSMemo:Z

    .line 2942
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertFreedraw:Z

    .line 2955
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFont:Z

    .line 2956
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatParagraph:Z

    .line 2957
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatBullets:Z

    .line 2958
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatShape:Z

    .line 2959
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatInsert:Z

    .line 2960
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatDelete:Z

    .line 2961
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSelect:Z

    .line 2962
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatMerge:Z

    .line 2963
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSplit:Z

    .line 2964
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFills:Z

    .line 2973
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertCells:Z

    .line 2974
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertRows:Z

    .line 2975
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertColumns:Z

    .line 2976
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertSheet:Z

    .line 2977
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertChart:Z

    .line 2978
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertFunction:Z

    .line 2996
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFont:Z

    .line 2997
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAlignment:Z

    .line 2998
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatNumbers:Z

    .line 2999
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFills:Z

    .line 3000
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHeight:Z

    .line 3001
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoHeight:Z

    .line 3002
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideRows:Z

    .line 3003
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowRows:Z

    .line 3004
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatWidth:Z

    .line 3005
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoWidth:Z

    .line 3006
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideCols:Z

    .line 3007
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowCols:Z

    .line 3008
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatClear:Z

    .line 3009
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatDelete:Z

    .line 3010
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatMerge:Z

    .line 3012
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strSheetFormatMerge:Ljava/lang/String;

    .line 3101
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3150
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$6;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oWordListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3225
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$7;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oSlideListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3296
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$8;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oSheetListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    return-void
.end method

.method private ConvertMmToPx(I)I
    .registers 7
    .parameter "mm"

    .prologue
    .line 2216
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getDensityDpiForEvEngine(Landroid/app/Activity;)I

    move-result v0

    .line 2217
    .local v0, nEngineDpi:I
    mul-int v1, p1, v0

    int-to-double v1, v1

    const-wide v3, 0x4039666666666666L

    div-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method private ConvertPxToMm(I)I
    .registers 7
    .parameter "px"

    .prologue
    .line 2210
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getDensityDpiForEvEngine(Landroid/app/Activity;)I

    move-result v0

    .line 2211
    .local v0, nEngineDpi:I
    int-to-double v1, p1

    const-wide v3, 0x4039666666666666L

    mul-double/2addr v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private OnResultInsertImageActivity(Landroid/content/Intent;)V
    .registers 13
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    .line 1921
    if-eqz p1, :cond_25

    .line 1922
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1923
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_25

    .line 1924
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1925
    .local v9, scheme:Ljava/lang/String;
    if-nez v9, :cond_26

    .line 1926
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1963
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #scheme:Ljava/lang/String;
    :cond_25
    :goto_25
    return-void

    .line 1930
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #scheme:Ljava/lang/String;
    :cond_26
    const-string v8, ""

    .line 1931
    .local v8, filename:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1932
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1933
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1960
    :cond_41
    :goto_41
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResizeImage(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_25

    .line 1935
    :cond_49
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1936
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 1937
    .local v2, proj:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1940
    .local v7, cur:Landroid/database/Cursor;
    :try_start_5d
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_67} :catch_95

    move-result-object v7

    .line 1941
    if-nez v7, :cond_76

    .line 1952
    if-eqz v7, :cond_25

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1953
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_25

    .line 1944
    :cond_76
    :try_start_76
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1945
    .local v6, colum_index:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_86

    .line 1946
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1947
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1949
    :cond_86
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_76 .. :try_end_89} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_89} :catch_95

    .line 1952
    if-eqz v7, :cond_41

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1953
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 1950
    .end local v6           #colum_index:I
    :catch_95
    move-exception v0

    .line 1952
    if-eqz v7, :cond_41

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1953
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 1951
    :catchall_a2
    move-exception v0

    .line 1952
    if-eqz v7, :cond_ae

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_ae

    .line 1953
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1954
    :cond_ae
    throw v0
.end method

.method private SaveDocument(Ljava/lang/String;)V
    .registers 14
    .parameter "strSaveFile"

    .prologue
    const/4 v3, 0x0

    .line 1278
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 1279
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->GetOpenType()I

    move-result v0

    if-nez v0, :cond_7c

    .line 1281
    new-instance v6, Lcom/infraware/common/util/ini/IniFile;

    const-string v0, "dvToolbarConfig.ini"

    invoke-direct {v6, v0}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v6, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v0, "POLSAIRS_DOCUMENT_SETTING"

    const-string v4, "BACKUP"

    invoke-virtual {v6, v0, v4}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1283
    .local v11, value:Ljava/lang/String;
    if-eqz v11, :cond_7c

    const-string v0, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7c

    .line 1285
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1288
    .local v1, sourceFile:Ljava/io/File;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1289
    .local v7, nIndex:I
    if-lez v7, :cond_85

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    if-le v7, v0, :cond_85

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v7, v0, :cond_85

    .line 1291
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1292
    .local v10, tempName:Ljava/lang/String;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1293
    .local v9, tempExt:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_backup."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1298
    .end local v9           #tempExt:Ljava/lang/String;
    .end local v10           #tempName:Ljava/lang/String;
    .local v8, targetFileName:Ljava/lang/String;
    :goto_71
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v2, targetFile:Ljava/io/File;
    const/4 v4, 0x0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->copyFile(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;Z)I

    .line 1303
    .end local v1           #sourceFile:Ljava/io/File;
    .end local v2           #targetFile:Ljava/io/File;
    .end local v6           #iniFile:Lcom/infraware/common/util/ini/IniFile;
    .end local v7           #nIndex:I
    .end local v8           #targetFileName:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_7c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvInterface;->ISaveDocument(Ljava/lang/String;)V

    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSave:Z

    .line 1305
    return-void

    .line 1296
    .restart local v1       #sourceFile:Ljava/io/File;
    .restart local v6       #iniFile:Lcom/infraware/common/util/ini/IniFile;
    .restart local v7       #nIndex:I
    .restart local v11       #value:Ljava/lang/String;
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".bak"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #targetFileName:Ljava/lang/String;
    goto :goto_71
.end method

.method private TitleRename()V
    .registers 3

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFileSaveAs:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 1377
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFileSaveAs:Ljava/lang/String;

    invoke-static {v1}, Lcom/infraware/common/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFileSaveAs:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    .line 1379
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->getDocFileExtentionType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDocExtensionType:I

    .line 1380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFileSaveAs:Ljava/lang/String;

    .line 1382
    :cond_20
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2823
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 3859
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isSMemoExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2214
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2059
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getSampleSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nPopupType:I

    return v0
.end method

.method static synthetic access$14(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSaveAs:Z

    return v0
.end method

.method static synthetic access$15(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->SaveDocument(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/office/baseframe/EvBaseEditorActivity;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2832
    invoke-direct {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(II)V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;
    .registers 2
    .parameter

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 3220
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onInsertFreeDraw()V

    return-void
.end method

.method static synthetic access$9(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strVendor:Ljava/lang/String;

    return-object v0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;Z)I
    .registers 33
    .parameter "sourceFile"
    .parameter "targetFile"
    .parameter "deleteSource"
    .parameter "resultHandler"
    .parameter "useFileProgress"

    .prologue
    .line 1309
    const/4 v14, 0x0

    .line 1310
    .local v14, fis:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 1311
    .local v16, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 1312
    .local v2, fcIn:Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 1314
    .local v7, fcOut:Ljava/nio/channels/FileChannel;
    const/16 v21, 0x0

    .line 1315
    .local v21, result:I
    const/high16 v8, 0x1

    .line 1316
    .local v8, CHANNEL_BUFFER_SIZE:I
    const/high16 v9, 0x50

    .line 1318
    .local v9, HUGE_FILE_SIZE:I
    const/16 v18, 0x0

    .line 1319
    .local v18, freeBlock:I
    const/4 v10, 0x0

    .line 1321
    .local v10, blockSize:I
    :try_start_e
    new-instance v22, Landroid/os/StatFs;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v22, sf:Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    .line 1323
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_20} :catch_72

    move-result v10

    .line 1331
    :try_start_21
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_da
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_bd

    .line 1332
    .end local v14           #fis:Ljava/io/FileInputStream;
    .local v15, fis:Ljava/io/FileInputStream;
    :try_start_28
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 1333
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v23

    .line 1335
    .local v23, size:J
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_39} :catch_103

    .line 1336
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .local v17, fos:Ljava/io/FileOutputStream;
    :try_start_39
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 1338
    int-to-long v5, v9

    cmp-long v5, v23, v5

    if-lez v5, :cond_7b

    const/high16 v5, 0x28

    int-to-long v5, v5

    add-long v5, v5, v23

    :goto_47
    int-to-long v0, v10

    move-wide/from16 v25, v0

    div-long v19, v5, v25

    .line 1339
    .local v19, minFree:J
    move/from16 v0, v18

    int-to-long v5, v0

    cmp-long v5, v5, v19

    if-gez v5, :cond_88

    .line 1341
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_56} :catch_106

    .line 1342
    const/16 v21, -0xc

    .line 1363
    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1364
    :cond_5d
    if-eqz v15, :cond_62

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 1365
    :cond_62
    if-eqz v7, :cond_67

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 1366
    :cond_67
    if-eqz v17, :cond_6c

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6c} :catch_82

    :cond_6c
    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    move/from16 v5, v21

    .line 1372
    .end local v19           #minFree:J
    .end local v22           #sf:Landroid/os/StatFs;
    .end local v23           #size:J
    :goto_71
    return v5

    .line 1324
    :catch_72
    move-exception v13

    .line 1325
    .local v13, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1326
    const/16 v21, -0xc

    move/from16 v5, v21

    .line 1327
    goto :goto_71

    .line 1338
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v22       #sf:Landroid/os/StatFs;
    .restart local v23       #size:J
    :cond_7b
    const-wide/16 v5, 0x2

    :try_start_7d
    div-long v5, v23, v5
    :try_end_7f
    .catchall {:try_start_7d .. :try_end_7f} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7f} :catch_106

    add-long v5, v5, v23

    goto :goto_47

    .line 1367
    .restart local v19       #minFree:J
    :catch_82
    move-exception v13

    .line 1368
    .local v13, e:Ljava/io/IOException;
    const/4 v5, -0x1

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    goto :goto_71

    .line 1346
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_88
    const-wide/16 v3, 0x0

    .line 1347
    .local v3, position:J
    const-wide/16 v11, 0x0

    .line 1348
    .local v11, count:J
    :cond_8c
    :goto_8c
    cmp-long v5, v3, v23

    if-ltz v5, :cond_a9

    .line 1363
    if-eqz v2, :cond_95

    :try_start_92
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1364
    :cond_95
    if-eqz v15, :cond_9a

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 1365
    :cond_9a
    if-eqz v7, :cond_9f

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 1366
    :cond_9f
    if-eqz v17, :cond_a4

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a4} :catch_f4

    .line 1372
    :cond_a4
    const/4 v5, 0x0

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    goto :goto_71

    .line 1349
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_a9
    int-to-long v5, v8

    :try_start_aa
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_106

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1350
    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    .line 1352
    if-eqz p5, :cond_8c

    const-wide/16 v5, 0x10

    cmp-long v5, v11, v5

    if-ltz v5, :cond_8c

    .line 1354
    const-wide/16 v11, 0x0

    goto :goto_8c

    .line 1357
    .end local v3           #position:J
    .end local v11           #count:J
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .end local v19           #minFree:J
    .end local v23           #size:J
    .restart local v14       #fis:Ljava/io/FileInputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :catch_bd
    move-exception v13

    .line 1358
    .local v13, e:Ljava/lang/Exception;
    :goto_be
    :try_start_be
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_da

    .line 1363
    if-eqz v2, :cond_c6

    :try_start_c3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1364
    :cond_c6
    if-eqz v14, :cond_cb

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1365
    :cond_cb
    if-eqz v7, :cond_d0

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 1366
    :cond_d0
    if-eqz v16, :cond_d5

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_d5} :catch_d7

    .line 1359
    :cond_d5
    const/4 v5, -0x1

    goto :goto_71

    .line 1367
    :catch_d7
    move-exception v13

    .line 1368
    .local v13, e:Ljava/io/IOException;
    const/4 v5, -0x1

    goto :goto_71

    .line 1361
    .end local v13           #e:Ljava/io/IOException;
    :catchall_da
    move-exception v5

    .line 1363
    :goto_db
    if-eqz v2, :cond_e0

    :try_start_dd
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1364
    :cond_e0
    if-eqz v14, :cond_e5

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1365
    :cond_e5
    if-eqz v7, :cond_ea

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 1366
    :cond_ea
    if-eqz v16, :cond_ef

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_ef} :catch_f0

    .line 1370
    :cond_ef
    throw v5

    .line 1367
    :catch_f0
    move-exception v13

    .line 1368
    .restart local v13       #e:Ljava/io/IOException;
    const/4 v5, -0x1

    goto/16 :goto_71

    .line 1367
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #position:J
    .restart local v11       #count:J
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #minFree:J
    .restart local v23       #size:J
    :catch_f4
    move-exception v13

    .line 1368
    .restart local v13       #e:Ljava/io/IOException;
    const/4 v5, -0x1

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_71

    .line 1361
    .end local v3           #position:J
    .end local v11           #count:J
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v19           #minFree:J
    .end local v23           #size:J
    .restart local v15       #fis:Ljava/io/FileInputStream;
    :catchall_fb
    move-exception v5

    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    goto :goto_db

    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v23       #size:J
    :catchall_fe
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    goto :goto_db

    .line 1357
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v23           #size:J
    .restart local v15       #fis:Ljava/io/FileInputStream;
    :catch_103
    move-exception v13

    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    goto :goto_be

    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v23       #size:J
    :catch_106
    move-exception v13

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    goto :goto_be
.end method

.method private getSampleSize(I)I
    .registers 4
    .parameter "nValue"

    .prologue
    .line 2060
    const/4 v0, 0x1

    .line 2061
    .local v0, nSize:I
    :cond_1
    const/16 v1, 0x320

    if-gt p1, v1, :cond_6

    .line 2066
    :goto_5
    return v0

    .line 2062
    :cond_6
    div-int/lit8 p1, p1, 0x2

    .line 2063
    mul-int/lit8 v0, v0, 0x2

    .line 2064
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_5
.end method

.method private isSMemoExist()Z
    .registers 5

    .prologue
    .line 3860
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3861
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3862
    .local v0, Apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_19

    .line 3863
    const/4 v2, 0x0

    .line 3865
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x1

    goto :goto_18
.end method

.method private onCreateMsgPopup(I)Landroid/app/AlertDialog;
    .registers 9
    .parameter "nType"

    .prologue
    const v6, 0x7f08030e

    .line 2710
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nPopupType:I

    .line 2711
    const/4 v0, 0x0

    .line 2712
    .local v0, nMsgId:I
    sparse-switch p1, :sswitch_data_76

    .line 2730
    :goto_9
    const v3, 0x7f080049

    .line 2731
    .local v3, positiveStrId:I
    const v2, 0x7f08018b

    .line 2732
    .local v2, neutralStrId:I
    const v1, 0x7f080045

    .line 2734
    .local v1, negativeStrId:I
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FV03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2735
    const v3, 0x7f080046

    .line 2736
    const v2, 0x7f080047

    .line 2737
    const v1, 0x7f080045

    .line 2740
    :cond_27
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2741
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2742
    new-instance v5, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;

    invoke-direct {v5, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$21;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2775
    new-instance v5, Lcom/infraware/office/baseframe/EvBaseEditorActivity$22;

    invoke-direct {v5, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$22;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2780
    new-instance v5, Lcom/infraware/office/baseframe/EvBaseEditorActivity$23;

    invoke-direct {v5, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$23;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2782
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 2740
    iput-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    .line 2783
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2784
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    return-object v4

    .line 2715
    .end local v1           #negativeStrId:I
    .end local v2           #neutralStrId:I
    .end local v3           #positiveStrId:I
    :sswitch_5a
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FV14"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 2716
    const v0, 0x7f080293

    goto :goto_9

    .line 2718
    :cond_6a
    const v0, 0x7f080160

    .line 2720
    goto :goto_9

    .line 2723
    :sswitch_6e
    const v0, 0x7f0801dc

    .line 2724
    goto :goto_9

    .line 2726
    :sswitch_72
    const v0, 0x7f080270

    goto :goto_9

    .line 2712
    :sswitch_data_76
    .sparse-switch
        0x21 -> :sswitch_5a
        0x22 -> :sswitch_6e
        0x2a -> :sswitch_72
    .end sparse-switch
.end method

.method private onInsertFreeDraw()V
    .registers 3

    .prologue
    .line 3221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3222
    .local v0, insertFreedrawintent:Landroid/content/Intent;
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3223
    return-void
.end method

.method private onLocaleChanged()V
    .registers 8

    .prologue
    const v6, 0x7f08030e

    const v5, 0x7f080045

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, -0x3

    .line 1243
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1245
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nPopupType:I

    sparse-switch v0, :sswitch_data_ac

    .line 1264
    :goto_1a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 1265
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f08018b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1266
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1268
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1269
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 1270
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1271
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1274
    :cond_68
    return-void

    .line 1249
    :sswitch_69
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1250
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    const v1, 0x7f080293

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1252
    :cond_82
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    const v1, 0x7f080160

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1256
    :sswitch_8f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    const v1, 0x7f0801dc

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1259
    :sswitch_9d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    const v1, 0x7f080270

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1245
    nop

    :sswitch_data_ac
    .sparse-switch
        0x21 -> :sswitch_69
        0x22 -> :sswitch_8f
        0x2a -> :sswitch_9d
    .end sparse-switch
.end method

.method private onToastMessage(I)V
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 2815
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_1c

    .line 2816
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 2819
    :goto_f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2820
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2821
    return-void

    .line 2818
    :cond_1c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_f
.end method

.method private onToastMessage(II)V
    .registers 9
    .parameter "nMin"
    .parameter "nMax"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2833
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2834
    .local v0, formattedString:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_3b

    .line 2835
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 2839
    :goto_2e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 2840
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2841
    return-void

    .line 2837
    :cond_3b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e
.end method

.method private onToastMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "strMsg"

    .prologue
    const/4 v2, 0x0

    .line 2824
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_1c

    .line 2825
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 2828
    :goto_f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2829
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2830
    return-void

    .line 2827
    :cond_1c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method


# virtual methods
.method public ActivityMsgProc(IIIIILjava/lang/Object;)I
    .registers 11
    .parameter "msg"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2443
    packed-switch p1, :pswitch_data_6c

    .line 2485
    :pswitch_5
    invoke-super/range {p0 .. p6}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    move-result v1

    .line 2487
    :cond_9
    :goto_9
    return v1

    .line 2445
    :pswitch_a
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 2447
    :pswitch_f
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2448
    iget-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBShowIMEAfterScreenChanged:Z

    if-eqz v3, :cond_9

    .line 2449
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v3

    iget v0, v3, Lcom/infraware/office/evengine/EV$CARET_INFO;->bCaret:I

    .line 2450
    .local v0, nCaretMode:I
    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x2

    if-ne v0, v2, :cond_34

    .line 2451
    :cond_2f
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-static {v2}, Lcom/infraware/office/util/EvUtil;->showIme(Landroid/view/View;)V

    .line 2452
    :cond_34
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBShowIMEAfterScreenChanged:Z

    goto :goto_9

    .line 2459
    .end local v0           #nCaretMode:I
    :pswitch_37
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->NewDocumentMode()V

    :cond_3a
    :goto_3a
    move v1, v2

    .line 2487
    goto :goto_9

    .line 2462
    :pswitch_3c
    iput v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEV_VIEW_MODE:I

    .line 2463
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->TemplateDocumetMode()V

    goto :goto_3a

    .line 2466
    :pswitch_42
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetCommitText(I)V

    goto :goto_3a

    .line 2469
    :pswitch_48
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_3a

    .line 2470
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->close()V

    goto :goto_3a

    .line 2473
    :pswitch_52
    packed-switch p2, :pswitch_data_86

    goto :goto_3a

    .line 2475
    :pswitch_56
    const v1, 0x7f0c0269

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_DocumentEdit(I)V

    goto :goto_3a

    .line 2478
    :pswitch_5d
    const v1, 0x7f0c026a

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_DocumentEdit(I)V

    goto :goto_3a

    .line 2481
    :pswitch_64
    const v1, 0x7f0c026b

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_DocumentEdit(I)V

    goto :goto_3a

    .line 2443
    nop

    :pswitch_data_6c
    .packed-switch 0x3
        :pswitch_a
        :pswitch_5
        :pswitch_f
        :pswitch_5
        :pswitch_5
        :pswitch_37
        :pswitch_48
        :pswitch_3c
        :pswitch_42
        :pswitch_5
        :pswitch_52
    .end packed-switch

    .line 2473
    :pswitch_data_86
    .packed-switch 0x1020020
        :pswitch_56
        :pswitch_5d
        :pswitch_64
    .end packed-switch
.end method

.method protected ChangeViewMode(I)V
    .registers 7
    .parameter "EV_VIEW_MODE"

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 188
    if-eqz p1, :cond_18

    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowLandscapeStatusbar()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 189
    :cond_18
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 194
    :cond_21
    :goto_21
    const v1, 0x7f0c004a

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 195
    .local v0, docViewLayout:Landroid/widget/RelativeLayout;
    const-string v1, "EvBaseEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChangeViewMode width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IChangeViewMode(IIII)V

    .line 198
    if-ne p1, v4, :cond_72

    .line 199
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 203
    :goto_67
    iput-boolean v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbMenuChange:Z

    .line 204
    return-void

    .line 191
    .end local v0           #docViewLayout:Landroid/widget/RelativeLayout;
    :cond_6a
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_21

    .line 201
    .restart local v0       #docViewLayout:Landroid/widget/RelativeLayout;
    :cond_72
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_67
.end method

.method public CheckSaveDocType()I
    .registers 3

    .prologue
    .line 2406
    const/4 v0, 0x0

    .line 2407
    .local v0, contentType:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 2433
    :goto_8
    return v0

    .line 2410
    :sswitch_9
    const/4 v0, 0x5

    .line 2411
    goto :goto_8

    .line 2414
    :sswitch_b
    const/4 v0, 0x2

    .line 2415
    goto :goto_8

    .line 2418
    :sswitch_d
    const/4 v0, 0x4

    .line 2419
    goto :goto_8

    .line 2422
    :sswitch_f
    const/4 v0, 0x1

    .line 2423
    goto :goto_8

    .line 2426
    :sswitch_11
    const/4 v0, 0x6

    .line 2427
    goto :goto_8

    .line 2430
    :sswitch_13
    const/4 v0, 0x3

    goto :goto_8

    .line 2407
    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_f
        0x5 -> :sswitch_13
        0x12 -> :sswitch_d
        0x13 -> :sswitch_9
        0x14 -> :sswitch_11
    .end sparse-switch
.end method

.method public FindBarShow(Z)V
    .registers 5
    .parameter "bShow"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3877
    if-eqz p1, :cond_20

    .line 3878
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_1c

    .line 3879
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusable(Z)V

    .line 3880
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusableInTouchMode(Z)V

    .line 3881
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnFocusableToolbarBtn(Z)V

    .line 3883
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->onBackPressed()Z

    .line 3892
    :cond_1c
    :goto_1c
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindBarShow(Z)V

    .line 3893
    return-void

    .line 3886
    :cond_20
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_1c

    .line 3887
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusable(Z)V

    .line 3888
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusableInTouchMode(Z)V

    .line 3889
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnFocusableToolbarBtn(Z)V

    goto :goto_1c
.end method

.method public GetMsgPopup()Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public IsDifType()Z
    .registers 2

    .prologue
    .line 2848
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsDifType:Z

    return v0
.end method

.method protected IsExternalStorageDirectory()Z
    .registers 6

    .prologue
    .line 2852
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2853
    .local v0, LOCAL_ROOT_PATH:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 2855
    .local v1, bMatch:Z
    return v1
.end method

.method protected NewDocumentMode()V
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 172
    return-void
.end method

.method public OnBookMarkEditorMode()V
    .registers 1

    .prologue
    .line 270
    return-void
.end method

.method public OnBulletNumberingActivity()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1607
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1608
    .local v1, bulletnumberingIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetBulletType_Editor()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v0

    .line 1609
    .local v0, bulletType:Lcom/infraware/office/evengine/EV$BULLET_TYPE;
    iget v2, v0, Lcom/infraware/office/evengine/EV$BULLET_TYPE;->nBulletMode:I

    .line 1610
    .local v2, nMode:I
    iget v3, v0, Lcom/infraware/office/evengine/EV$BULLET_TYPE;->nBulletType:I

    .line 1612
    .local v3, nType:I
    const-string v4, "id_bulletnuber_mode"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1613
    if-nez v2, :cond_34

    .line 1614
    if-lt v3, v5, :cond_34

    if-gt v3, v7, :cond_34

    .line 1615
    const-string v4, "id_current_bullet"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    :goto_24
    if-ne v2, v5, :cond_3a

    .line 1620
    if-lt v3, v5, :cond_3a

    if-gt v3, v7, :cond_3a

    .line 1621
    const-string v4, "id_current_numbering"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1625
    :goto_2f
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1626
    return-void

    .line 1617
    :cond_34
    const-string v4, "id_current_bullet"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24

    .line 1623
    :cond_3a
    const-string v4, "id_current_numbering"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2f
.end method

.method public OnClickMoreColors(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 1759
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMoreColorType:I

    sparse-switch v0, :sswitch_data_14

    .line 1772
    :goto_6
    return-void

    .line 1761
    :sswitch_7
    invoke-virtual {p0, p1, v1, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_FontColor(III)V

    goto :goto_6

    .line 1764
    :sswitch_b
    invoke-virtual {p0, p1, v1, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_BackgroundColor(III)V

    goto :goto_6

    .line 1767
    :sswitch_f
    invoke-virtual {p0, p1, v1, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_BorderColor(III)V

    goto :goto_6

    .line 1759
    nop

    :sswitch_data_14
    .sparse-switch
        0x7 -> :sswitch_7
        0x11 -> :sswitch_b
        0x25 -> :sswitch_f
    .end sparse-switch
.end method

.method protected OnColumnsActivity()V
    .registers 1

    .prologue
    .line 3019
    return-void
.end method

.method public OnDeleteCells()V
    .registers 2

    .prologue
    .line 1779
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 1780
    return-void
.end method

.method protected OnEVSheetFuction(III)V
    .registers 4
    .parameter "eSheetFormatType"
    .parameter "nParam1"
    .parameter "nParam2"

    .prologue
    .line 3024
    return-void
.end method

.method public OnEditCopyCut(ILjava/lang/String;)V
    .registers 4
    .parameter "nType"
    .parameter "data"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    if-nez v0, :cond_5

    .line 324
    :goto_4
    return-void

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvClipBoardHelper;->OnEditCopyCut(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public OnEditOrViewMode(II)V
    .registers 5
    .parameter "bEditMode"
    .parameter "EV_EDITMODETYPE"

    .prologue
    const/4 v0, 0x1

    .line 273
    if-ne p1, v0, :cond_10

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEV_VIEW_MODE:I

    .line 278
    :goto_6
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v1

    invoke-virtual {v0, p0, p0, v1, p2}, Lcom/infraware/office/baseframe/EvBaseView;->setModeTypeChanged(Landroid/app/Activity;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;II)V

    .line 279
    return-void

    .line 276
    :cond_10
    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEV_VIEW_MODE:I

    goto :goto_6
.end method

.method public OnFillBordersActivity()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1634
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/common/FillBordersActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1635
    .local v1, fillborderIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetBorderProperty()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    .line 1637
    .local v0, data:Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
    const-string v4, "EvBaseEditorActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data.nBorderBottomColor"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderBottomColor:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v4, "EvBaseEditorActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data.nBorderHorizontalColor"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderHorizontalColor:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_51

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_ba

    .line 1641
    :cond_51
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    .line 1642
    .local v2, sheetCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    iget-object v4, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    iget-object v5, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v5, v5, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_67

    .line 1643
    const-string v4, "id_border_hori"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1644
    :cond_67
    iget-object v4, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    iget-object v5, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v5, v5, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_77

    .line 1645
    const-string v4, "id_border_vert"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1646
    :cond_77
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v3

    .line 1647
    .local v3, sheetFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    const-string v4, "id_border_style"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1648
    const-string v4, "id_border_fillcolor"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFillColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1649
    const-string v4, "id_border_lcolor"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderLeftColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1650
    const-string v4, "id_border_tcolor"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderTopColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1651
    const-string v4, "id_border_rcolor"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderRightColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1652
    const-string v4, "id_border_bcolor"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderBottomColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1653
    const-string v4, "id_border_vcolor"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderVerticalColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1654
    const-string v4, "id_border_hcolor"

    iget v5, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderHorizontalColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1671
    .end local v2           #sheetCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    .end local v3           #sheetFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    :goto_b5
    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1672
    return-void

    .line 1657
    :cond_ba
    iget v4, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderMask:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c7

    .line 1658
    const-string v4, "id_border_hori"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1659
    :cond_c7
    iget v4, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderMask:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_d4

    .line 1660
    const-string v4, "id_border_vert"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1661
    :cond_d4
    const-string v4, "id_border_style"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1662
    const-string v4, "id_border_fillcolor"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nCellColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1663
    const-string v4, "id_border_lcolor"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderLeftColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1664
    const-string v4, "id_border_tcolor"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderTopColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1665
    const-string v4, "id_border_rcolor"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderRightColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1666
    const-string v4, "id_border_bcolor"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderBottomColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1667
    const-string v4, "id_border_vcolor"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderVerticalColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1668
    const-string v4, "id_border_hcolor"

    iget v5, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderHorizontalColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_b5
.end method

.method protected OnFindDialog()V
    .registers 1

    .prologue
    .line 3015
    return-void
.end method

.method public OnFontActivity()V
    .registers 16

    .prologue
    .line 1471
    new-instance v3, Landroid/content/Intent;

    const-class v13, Lcom/infraware/polarisoffice/common/FontActivity;

    invoke-direct {v3, p0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1472
    .local v3, fontIntent:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1473
    .local v9, info:Lcom/infraware/office/evengine/EV$FONT_INFO;
    const/4 v6, 0x0

    .line 1474
    .local v6, fontface:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1475
    .local v11, pt_size:I
    const/4 v2, 0x0

    .line 1476
    .local v2, fcolor:I
    const/4 v1, 0x0

    .line 1477
    .local v1, bcolor:I
    const/4 v10, 0x0

    .line 1478
    .local v10, mask:I
    const/4 v0, 0x0

    .line 1479
    .local v0, att:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v13

    const/4 v14, 0x5

    if-eq v13, v14, :cond_1d

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v13

    const/16 v14, 0x14

    if-ne v13, v14, :cond_cd

    .line 1480
    :cond_1d
    const-string v13, "id_font_control_hide"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1481
    iget-object v13, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v13}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v7

    .line 1483
    .local v7, formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    iget-object v13, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->szFontName:Ljava/lang/String;

    if-eqz v13, :cond_c0

    .line 1484
    iget-object v6, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->szFontName:Ljava/lang/String;

    .line 1494
    :cond_2f
    :goto_2f
    iget v11, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->nFontSize:I

    .line 1495
    iget v2, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFontColor:I

    .line 1496
    iget v10, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFontMask:I

    .line 1497
    iget v13, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bBold:I

    if-lez v13, :cond_3b

    or-int/lit16 v0, v0, 0x400

    .line 1498
    :cond_3b
    iget v13, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bItalic:I

    if-lez v13, :cond_41

    or-int/lit16 v0, v0, 0x200

    .line 1499
    :cond_41
    iget v13, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bUnderLine:I

    if-lez v13, :cond_47

    or-int/lit16 v0, v0, 0x100

    .line 1500
    :cond_47
    iget v13, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bStrikeout:I

    if-lez v13, :cond_4d

    or-int/lit16 v0, v0, 0x80

    .line 1540
    .end local v7           #formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    :cond_4d
    :goto_4d
    const-string v13, "id_font_facename"

    invoke-virtual {v3, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    const-string v13, "id_font_fontsize"

    invoke-virtual {v3, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1542
    const-string v13, "id_font_color"

    invoke-virtual {v3, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    const-string v13, "id_font_backcolor"

    invoke-virtual {v3, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    const-string v13, "id_font_mask"

    invoke-virtual {v3, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1545
    const-string v13, "id_font_att"

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1546
    const-string v13, "id_font_ext"

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1548
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_83

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v13

    const/16 v14, 0x13

    if-ne v13, v14, :cond_104

    .line 1549
    :cond_83
    const-string v13, "ppt_file"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1550
    iget v13, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDocExtensionType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_fd

    .line 1551
    const-string v13, "ppt_2003_file"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1560
    :goto_94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v4, fontNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v13}, Lcom/infraware/office/evengine/EvInterface;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v12

    .line 1569
    .local v12, str_font_list:[Ljava/lang/String;
    if-nez v12, :cond_111

    .line 1570
    invoke-interface {v4, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_aa

    .line 1571
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_aa
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    new-array v5, v13, [Ljava/lang/CharSequence;

    .line 1581
    .local v5, font_list:[Ljava/lang/CharSequence;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #font_list:[Ljava/lang/CharSequence;
    check-cast v5, [Ljava/lang/CharSequence;

    .line 1582
    .restart local v5       #font_list:[Ljava/lang/CharSequence;
    const-string v13, "id_font_fontlist"

    invoke-virtual {v3, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1583
    const/4 v13, 0x0

    invoke-virtual {p0, v3, v13}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1584
    return-void

    .line 1487
    .end local v4           #fontNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #font_list:[Ljava/lang/CharSequence;
    .end local v12           #str_font_list:[Ljava/lang/String;
    .restart local v7       #formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    :cond_c0
    iget-object v13, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v13}, Lcom/infraware/office/evengine/EvInterface;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v12

    .line 1488
    .restart local v12       #str_font_list:[Ljava/lang/String;
    if-eqz v12, :cond_2f

    .line 1490
    const/4 v13, 0x0

    aget-object v6, v12, v13

    goto/16 :goto_2f

    .line 1503
    .end local v7           #formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    .end local v12           #str_font_list:[Ljava/lang/String;
    :cond_cd
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_dc

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v13

    const/16 v14, 0x13

    if-ne v13, v14, :cond_f6

    .line 1504
    :cond_dc
    const-string v13, "id_font_control_hide"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1508
    :goto_e2
    iget-object v13, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v13}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 1509
    iget-object v6, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->szFontName:Ljava/lang/String;

    .line 1510
    iget v11, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFSize:I

    .line 1511
    iget v2, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFColor:I

    .line 1512
    iget v1, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nBColor:I

    .line 1513
    iget v10, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nMaskFontAtt:I

    .line 1514
    iget v0, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    goto/16 :goto_4d

    .line 1506
    :cond_f6
    const-string v13, "id_font_control_hide"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_e2

    .line 1553
    :cond_fd
    const-string v13, "ppt_2003_file"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_94

    .line 1556
    :cond_104
    const-string v13, "ppt_file"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1557
    const-string v13, "ppt_2003_file"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_94

    .line 1574
    .restart local v4       #fontNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #str_font_list:[Ljava/lang/String;
    :cond_111
    const/4 v8, 0x0

    .local v8, i:I
    :goto_112
    array-length v13, v12

    if-ge v8, v13, :cond_aa

    .line 1575
    aget-object v13, v12, v8

    invoke-interface {v4, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12a

    aget-object v13, v12, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_12a

    .line 1576
    aget-object v13, v12, v8

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    :cond_12a
    add-int/lit8 v8, v8, 0x1

    goto :goto_112
.end method

.method public OnFontSizeOthers(I)V
    .registers 8
    .parameter "fontSize"

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1676
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1677
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080239

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1678
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1680
    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1681
    .local v1, fontSizeEditText:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->fontSizeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1682
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    const v3, 0x7f080043

    new-instance v4, Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;

    invoke-direct {v4, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1697
    const v3, 0x7f080045

    new-instance v4, Lcom/infraware/office/baseframe/EvBaseEditorActivity$12;

    invoke-direct {v4, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$12;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1703
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    .line 1704
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1705
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1706
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1707
    return-void
.end method

.method protected OnFormatAlignment()V
    .registers 1

    .prologue
    .line 3028
    return-void
.end method

.method protected OnFormatHeight()V
    .registers 1

    .prologue
    .line 3029
    return-void
.end method

.method protected OnFormatWidth()V
    .registers 1

    .prologue
    .line 3030
    return-void
.end method

.method public OnGetClipBoardHelper()Lcom/infraware/office/evengine/EvClipBoardHelper;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    return-object v0
.end method

.method public OnHidAction(I)V
    .registers 2
    .parameter "eev_hid_action"

    .prologue
    .line 290
    return-void
.end method

.method public OnIMEInsertMode()V
    .registers 1

    .prologue
    .line 294
    return-void
.end method

.method protected OnInsertBookmarkActivity()V
    .registers 1

    .prologue
    .line 3018
    return-void
.end method

.method public OnInsertCells()V
    .registers 2

    .prologue
    .line 1775
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 1776
    return-void
.end method

.method protected OnInsertChart()V
    .registers 1

    .prologue
    .line 3026
    return-void
.end method

.method protected OnInsertDeleteCell(I)V
    .registers 2
    .parameter "insert"

    .prologue
    .line 3025
    return-void
.end method

.method protected OnInsertFunction()V
    .registers 1

    .prologue
    .line 3027
    return-void
.end method

.method protected OnInsertHyperlink()V
    .registers 1

    .prologue
    .line 3017
    return-void
.end method

.method public OnInsertShapeActivity()V
    .registers 3

    .prologue
    .line 1461
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/InsertShapeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1462
    .local v0, insertshapeIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1463
    return-void
.end method

.method public OnInsertTableActivity()V
    .registers 3

    .prologue
    .line 1466
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/InsertTableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1467
    .local v0, insertTable:Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1468
    return-void
.end method

.method public OnInsertTableMode()V
    .registers 1

    .prologue
    .line 292
    return-void
.end method

.method public OnMergeCells()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1787
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v1, v1}, Lcom/infraware/office/evengine/EvInterface;->ICellMergeSeparate(III)V

    .line 1788
    return-void
.end method

.method public OnMoreColors(II)V
    .registers 5
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    .line 1749
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mMoreColorType:I

    .line 1750
    iput p2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerTitleID:I

    .line 1751
    new-instance v0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 1752
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v0, p0, p2}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V

    .line 1753
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1754
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->show()V

    .line 1755
    return-void
.end method

.method public OnNewDoc(I)V
    .registers 3
    .parameter "bOk"

    .prologue
    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEV_VIEW_MODE:I

    .line 283
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnLoadComplete(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 3
    .parameter "param"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getScreenView()Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/EvBaseView;->OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 288
    return-void
.end method

.method public OnParagraphActivity(Ljava/lang/Boolean;)V
    .registers 6
    .parameter "isSlide"

    .prologue
    .line 1587
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/common/ParagraphActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1588
    .local v1, paragraphIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetParaAttInfo_Editor()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    .line 1589
    .local v0, paraAtt_info:Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;
    const-string v2, "id_isslide"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1590
    const-string v2, "id_halign"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1591
    const-string v2, "id_valign"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1592
    const-string v2, "id_left_indent"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1593
    const-string v2, "id_right_indent"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1594
    const-string v2, "id_firstline_indent_type"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->FirstLineType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1595
    const-string v2, "id_firstline_indent"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1596
    const-string v2, "id_line_space_type"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLineSpace:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    const-string v2, "id_line_space"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1598
    const-string v2, "id_before_space"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1599
    const-string v2, "id_after_space"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1600
    const-string v2, "id_nLineHeight"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLineHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1601
    const-string v2, "id_ParaDirection"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->ParaDirection:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1602
    const-string v2, "id_bUndo"

    iget v3, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->bUndo:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1603
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1604
    return-void
.end method

.method protected OnReflowText()V
    .registers 1

    .prologue
    .line 3014
    return-void
.end method

.method public OnResizeImage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 7
    .parameter "filename"
    .parameter "deleteFile"

    .prologue
    const/4 v2, 0x1

    .line 2070
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2071
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2072
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2073
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, v2, :cond_13

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v1, v2, :cond_2b

    .line 2075
    :cond_13
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2082
    :goto_2a
    return-void

    .line 2079
    :cond_2b
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeFileName:Ljava/lang/String;

    .line 2080
    iput-object p2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbDeleteResizeFile:Ljava/lang/Boolean;

    .line 2081
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    goto :goto_2a
.end method

.method public OnResultBulletNumberingActivity(Landroid/content/Intent;)V
    .registers 8
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 2263
    const-string v4, "id_bulletnumbering_mode"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2264
    .local v1, nMode:I
    const-string v4, "id_current_bulletnumbertype"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2265
    .local v2, nType:I
    const-string v4, "id_restart_numbering"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2266
    .local v0, brestartNum:Z
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    if-eqz v0, :cond_19

    const/4 v3, 0x1

    :cond_19
    invoke-virtual {v4, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IBulletNumbering(III)V

    .line 2267
    return-void
.end method

.method public OnResultCameraActivity(Landroid/content/Intent;)V
    .registers 15
    .parameter "data"

    .prologue
    const v5, 0x7f0801e0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1967
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1969
    if-eqz p1, :cond_69

    .line 1971
    const-string v0, "imageType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    const-string v0, "imageType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1973
    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1975
    .local v7, filename:Ljava/lang/String;
    if-eqz v7, :cond_48

    .line 1976
    const-string v0, "EvBaseEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "filename = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :cond_48
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1980
    .local v6, file:Ljava/io/File;
    const-string v0, "EvBaseEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "file = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResizeImage(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2041
    .end local v6           #file:Ljava/io/File;
    .end local v7           #filename:Ljava/lang/String;
    :cond_68
    :goto_68
    return-void

    .line 1988
    :cond_69
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCameraImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_aa

    .line 1989
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCameraImageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1990
    .restart local v7       #filename:Ljava/lang/String;
    if-eqz v7, :cond_89

    .line 1991
    const-string v0, "EvBaseEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "filename = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    :cond_89
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1995
    .restart local v6       #file:Ljava/io/File;
    const-string v0, "EvBaseEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResizeImage(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_68

    .line 2001
    .end local v6           #file:Ljava/io/File;
    .end local v7           #filename:Ljava/lang/String;
    :cond_aa
    if-eqz p1, :cond_68

    .line 2002
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 2003
    .local v11, orgBitmap:Landroid/graphics/Bitmap;
    if-nez v11, :cond_d5

    .line 2004
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "orgBitmap == null!!"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_68

    .line 2009
    :cond_d5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v11, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2010
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_f9

    .line 2011
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "bitmap == null!!"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_68

    .line 2016
    :cond_f9
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I

    move-result v9

    .line 2017
    .local v9, nImageMaxSize:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v9, :cond_10f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v9, :cond_158

    .line 2018
    :cond_10f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 2019
    .local v12, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2020
    .local v8, height:I
    if-lt v12, v8, :cond_14b

    .line 2021
    move v12, v9

    .line 2022
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int v8, v0, v1

    .line 2029
    :goto_125
    invoke-static {v2, v12, v8, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2030
    .local v10, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2031
    move-object v2, v10

    .line 2032
    if-nez v2, :cond_158

    .line 2033
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "newBitmap == null!!!"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_68

    .line 2025
    .end local v10           #newBitmap:Landroid/graphics/Bitmap;
    :cond_14b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int v12, v0, v1

    .line 2026
    move v8, v9

    goto :goto_125

    .line 2038
    .end local v8           #height:I
    .end local v12           #width:I
    :cond_158
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V

    .line 2039
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_68
.end method

.method public OnResultFillBordersActivity(Landroid/content/Intent;)V
    .registers 22
    .parameter "data"

    .prologue
    .line 2271
    const-string v3, "id_border_mask"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 2272
    .local v15, nMask:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v17

    .line 2285
    .local v17, sheetFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    const/4 v5, 0x0

    .line 2286
    .local v5, nStyle:I
    const/high16 v10, -0x100

    .local v10, nHorizontalColor:I
    move v11, v10

    .local v11, nVerticalColor:I
    move v9, v10

    .local v9, nBottomColor:I
    move v8, v10

    .local v8, nRightColor:I
    move v7, v10

    .local v7, nTopColor:I
    move v6, v10

    .local v6, nLeftColor:I
    move v12, v10

    .line 2287
    .local v12, nCellColor:I
    move-object/from16 v0, v17

    iget v12, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFillColor:I

    .line 2288
    const-string v3, "id_border_style"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2289
    const-string v3, "id_border_fillcolor_modified"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 2290
    .local v14, bFillModified:Z
    if-eqz v14, :cond_57

    .line 2291
    const-wide/16 v3, 0x100

    or-long/2addr v15, v3

    .line 2292
    const-string v3, "id_border_fillcolor"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2293
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_50

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_57

    .line 2294
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3, v12}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetColor(I)V

    .line 2296
    :cond_57
    move-object/from16 v0, v17

    iput v5, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    .line 2297
    const-wide/16 v3, 0x1

    and-long/2addr v3, v15

    const-wide/16 v18, 0x1

    cmp-long v3, v3, v18

    if-nez v3, :cond_78

    .line 2298
    const-string v3, "EvBaseEditorActivity"

    const-string v4, "eEV_BORDER_LEFT"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const-string v3, "id_border_lcolor"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2300
    move-object/from16 v0, v17

    iput v6, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderLeftColor:I

    .line 2305
    :cond_78
    const-wide/16 v3, 0x2

    and-long/2addr v3, v15

    const-wide/16 v18, 0x2

    cmp-long v3, v3, v18

    if-nez v3, :cond_95

    .line 2306
    const-string v3, "EvBaseEditorActivity"

    const-string v4, "eEV_BORDER_TOP"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    const-string v3, "id_border_tcolor"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2308
    move-object/from16 v0, v17

    iput v7, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderTopColor:I

    .line 2313
    :cond_95
    const-wide/16 v3, 0x4

    and-long/2addr v3, v15

    const-wide/16 v18, 0x4

    cmp-long v3, v3, v18

    if-nez v3, :cond_b2

    .line 2314
    const-string v3, "EvBaseEditorActivity"

    const-string v4, "eEV_BORDER_RIGHT"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    const-string v3, "id_border_rcolor"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2316
    move-object/from16 v0, v17

    iput v8, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderRightColor:I

    .line 2321
    :cond_b2
    const-wide/16 v3, 0x8

    and-long/2addr v3, v15

    const-wide/16 v18, 0x8

    cmp-long v3, v3, v18

    if-nez v3, :cond_cf

    .line 2322
    const-string v3, "EvBaseEditorActivity"

    const-string v4, "eEV_BORDER_BOTTOM"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string v3, "id_border_bcolor"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2324
    move-object/from16 v0, v17

    iput v9, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderBottomColor:I

    .line 2329
    :cond_cf
    const-wide/16 v3, 0x10

    and-long/2addr v3, v15

    const-wide/16 v18, 0x10

    cmp-long v3, v3, v18

    if-nez v3, :cond_ec

    .line 2330
    const-string v3, "EvBaseEditorActivity"

    const-string v4, "eEV_BORDER_VERTICAL_INSIDE"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    const-string v3, "id_border_vcolor"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2332
    move-object/from16 v0, v17

    iput v11, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderVerticalColor:I

    .line 2337
    :cond_ec
    const-wide/16 v3, 0x20

    and-long/2addr v3, v15

    const-wide/16 v18, 0x20

    cmp-long v3, v3, v18

    if-nez v3, :cond_109

    .line 2338
    const-string v3, "EvBaseEditorActivity"

    const-string v4, "eEV_BORDER_HORIZONTAL_INSIDE"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    const-string v3, "id_border_hcolor"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2340
    move-object/from16 v0, v17

    iput v10, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderHorizontalColor:I

    .line 2345
    :cond_109
    const-string v3, "id_border_color_modified"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 2346
    .local v13, bBorderModified:Z
    if-nez v14, :cond_116

    if-eqz v13, :cond_1a5

    .line 2347
    :cond_116
    const-string v3, "EvBaseEditorActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v18, "receive nMask "

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nStyle "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nLeftColor "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nTopColor "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nRightColor "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nBottomColor "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nHorizontalColor "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nVerticalColor "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " nCellColor "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_19c

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1a6

    .line 2349
    :cond_19c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 2353
    :cond_1a5
    :goto_1a5
    return-void

    .line 2351
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    long-to-int v4, v15

    invoke-virtual/range {v3 .. v12}, Lcom/infraware/office/evengine/EvInterface;->ISetBorder(IIIIIIIII)V

    goto :goto_1a5
.end method

.method public OnResultFontActivity(Landroid/content/Intent;)V
    .registers 11
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 2231
    const-string v0, "id_font_facename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2232
    .local v1, fontface:Ljava/lang/String;
    const-string v0, "id_font_fontsize"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2233
    .local v2, pt_size:I
    const-string v0, "id_font_color"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2234
    .local v5, fcolor:I
    const-string v0, "id_font_backcolor"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2235
    .local v6, bcolor:I
    const-string v0, "id_font_mask"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2236
    .local v3, mask:I
    const-string v0, "id_font_att"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2238
    .local v4, att:I
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 2239
    return-void
.end method

.method public OnResultInsertInsertTableActivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 2221
    const-string v2, "id_inserttable_row"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2222
    .local v1, nRow:I
    const-string v2, "id_inserttable_col"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2224
    .local v0, nCol:I
    if-eqz v1, :cond_11

    if-nez v0, :cond_12

    .line 2228
    :cond_11
    :goto_11
    return-void

    .line 2227
    :cond_12
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/high16 v3, -0x100

    invoke-virtual {v2, v1, v0, v3}, Lcom/infraware/office/evengine/EvInterface;->ICreateTable(III)V

    goto :goto_11
.end method

.method public OnResultParagraphActivity(Landroid/content/Intent;)V
    .registers 18
    .parameter "data"

    .prologue
    .line 2242
    const-string v1, "EvBaseEditorActivity"

    const-string v14, "OnResultParagraphActivity"

    invoke-static {v1, v14}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    const-string v1, "id_halign"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2244
    .local v3, nHAlign:I
    const-string v1, "id_valign"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2245
    .local v2, nVAlign:I
    const-string v1, "id_left_indent"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2246
    .local v4, nLIndent:I
    const-string v1, "id_right_indent"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2247
    .local v5, nRIndent:I
    const-string v1, "id_firstline_indent_type"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2248
    .local v6, nFirstLineType:I
    const-string v1, "id_firstline_indent"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2249
    .local v7, nFirstLineIndent:I
    const-string v1, "id_line_space_type"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2250
    .local v8, nLineSpaceType:I
    const-string v1, "id_line_space"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2251
    .local v9, nLineSpace:I
    const-string v1, "id_before_space"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2252
    .local v10, nBSpace:I
    const-string v1, "id_after_space"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2253
    .local v11, nASpace:I
    const-string v1, "id_ParaDirection"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2254
    .local v12, nParaDirection:I
    const-string v1, "id_bUndo"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2257
    .local v13, nbUndo:I
    const/4 v6, 0x0

    .line 2258
    const-string v1, "EvBaseEditorActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "nVAlign"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "nHAlign "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nLIndent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nRIndent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nFirstLineType "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nFirstLineIndent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nLineSpace "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nBSpace "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nASpace "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual/range {v1 .. v13}, Lcom/infraware/office/evengine/EvInterface;->ISetParaAttribute(IIIIIIIIIIII)V

    .line 2260
    return-void
.end method

.method public OnResultSMemoActivity(Landroid/content/Intent;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 2043
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSmemoImageUri:Landroid/net/Uri;

    .line 2044
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSmemoImageUri:Landroid/net/Uri;

    if-eqz v2, :cond_47

    .line 2045
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSmemoImageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2046
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 2047
    const-string v2, "EvBaseEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filename = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :cond_26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2051
    .local v0, file:Ljava/io/File;
    const-string v2, "EvBaseEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResizeImage(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2057
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    :cond_47
    return-void
.end method

.method public OnRisizeObj()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030007

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 482
    .local v3, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f080130

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 486
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v9}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v7}, Lcom/infraware/office/baseframe/EvBaseView;->GetObjCtrlSize()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 487
    .local v4, width:I
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v7}, Lcom/infraware/office/baseframe/EvBaseView;->GetObjCtrlSize()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 488
    .local v1, height:I
    const v6, 0x7f0c0012

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 489
    .local v5, widthEditText:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->resizeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 490
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const v6, 0x7f0c0014

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 492
    .local v2, heightEditText:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->resizeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 493
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    const v6, 0x7f080043

    new-instance v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;

    invoke-direct {v7, p0, v4, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;II)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    const v6, 0x7f080045

    new-instance v7, Lcom/infraware/office/baseframe/EvBaseEditorActivity$10;

    invoke-direct {v7, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$10;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    .line 513
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 514
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 515
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 516
    return-void
.end method

.method public OnSave()V
    .registers 3

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->GetOpenType()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->IsExternalStorageDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/infraware/common/util/FileUtils;->isCacheFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1196
    :cond_16
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSaveAs()V

    .line 1219
    :goto_19
    return-void

    .line 1199
    :cond_1a
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCheckTypeSave()V

    .line 1209
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1210
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsDifType:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IIsComplexColumn()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSaveAs:Z

    .line 1212
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    goto :goto_19

    .line 1217
    :cond_41
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->SaveDocument(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public OnSaveAs()V
    .registers 3

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCheckTypeSave()V

    .line 1402
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1403
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsDifType:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IIsComplexColumn()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSaveAs:Z

    .line 1405
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 1411
    :goto_26
    return-void

    .line 1410
    :cond_27
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSaveAsActivity()V

    goto :goto_26
.end method

.method public OnSaveAsActivity()V
    .registers 8

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->CheckSaveDocType()I

    move-result v1

    .line 1415
    .local v1, contentType:I
    add-int/lit8 v2, v1, 0x0

    .line 1416
    .local v2, mode:I
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/infraware/polarisoffice/common/SaveAsActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1417
    .local v3, saveAsIntent:Landroid/content/Intent;
    if-nez v3, :cond_f

    .line 1429
    :cond_f
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v4, savePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->IsExternalStorageDirectory()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1431
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, LOCAL_ROOT_PATH:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/infraware/common/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1434
    .end local v0           #LOCAL_ROOT_PATH:Ljava/lang/String;
    :cond_41
    const-string v5, "key_current_file"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    const-string v5, "key_content_mode"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    const/16 v5, 0xd

    invoke-virtual {p0, v3, v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1437
    return-void
.end method

.method public OnSaveAsDocument(Ljava/lang/String;)V
    .registers 3
    .parameter "newPath"

    .prologue
    .line 1385
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 1386
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvInterface;->ISaveDocument(Ljava/lang/String;)V

    .line 1387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSave:Z

    .line 1388
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFileSaveAs:Ljava/lang/String;

    .line 1389
    return-void
.end method

.method public OnSaveConform()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IDocumentModified_Editor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2399
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 2400
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2402
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12
.end method

.method public OnSaveDoc(I)V
    .registers 11
    .parameter "bOk"

    .prologue
    const v8, 0x7f0801e5

    const/4 v5, 0x0

    .line 209
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbSave:Z

    .line 210
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->dialogId:Ljava/lang/String;

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    sparse-switch p1, :sswitch_data_bc

    .line 261
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_INTERNAL_ERROR = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const v0, 0x7f0800b2

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    .line 266
    :cond_25
    :goto_25
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    if-lez v0, :cond_2e

    .line 267
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    invoke-direct {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(I)V

    .line 268
    :cond_2e
    return-void

    .line 215
    :sswitch_2f
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->TitleRename()V

    .line 217
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 219
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v6

    .line 220
    .local v6, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/infraware/common/define/CMModelDefine;->DocumentsURI:Landroid/net/Uri;

    if-eqz v0, :cond_58

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    .end local v6           #recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    :cond_58
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_PROCESS_SUCCESS | EV_FILE_NOT_MODEFIED = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v5}, Lcom/infraware/office/baseframe/EvBaseView;->SetOpenType(I)V

    .line 228
    iput v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    .line 229
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsBackPressSave:Z

    if-eqz v0, :cond_25

    .line 230
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsBackPressSave:Z

    .line 232
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_25

    .line 236
    :sswitch_74
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_DOCUMENT_TRUNCATED = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const v0, 0x7f0801f0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    goto :goto_25

    .line 240
    :sswitch_81
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_REPAIRED_PAGE = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iput v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    goto :goto_25

    .line 244
    :sswitch_8b
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_MEMORY_ERROR = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const v0, 0x7f0801e0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    goto :goto_25

    .line 248
    :sswitch_98
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_FILE_CREATE_ERROR = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iput v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    goto :goto_25

    .line 252
    :sswitch_a2
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_FILE_WRITE_ERROR = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const v0, 0x7f08006b

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    goto/16 :goto_25

    .line 256
    :sswitch_b0
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "EV_FILE_STORAGE_ERROR = "

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iput v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nErrMsgId:I

    goto/16 :goto_25

    .line 211
    nop

    :sswitch_data_bc
    .sparse-switch
        -0x13 -> :sswitch_2f
        -0x12 -> :sswitch_b0
        -0x11 -> :sswitch_a2
        -0x10 -> :sswitch_98
        -0x1 -> :sswitch_8b
        0x1 -> :sswitch_2f
        0x20 -> :sswitch_74
        0x30 -> :sswitch_81
    .end sparse-switch
.end method

.method public OnSelectCells()V
    .registers 2

    .prologue
    .line 1783
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 1784
    return-void
.end method

.method public OnShapeActivity()V
    .registers 3

    .prologue
    .line 1629
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/ShapeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1630
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1631
    return-void
.end method

.method protected OnShowDialog(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 3023
    return-void
.end method

.method protected OnSlideAddLayoutActivity()V
    .registers 1

    .prologue
    .line 3021
    return-void
.end method

.method public OnSplitCells()V
    .registers 2

    .prologue
    .line 1791
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 1792
    return-void
.end method

.method public OnToolbar_Alignment(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    .line 711
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 713
    const/4 v0, -0x1

    .line 714
    .local v0, nAlign:I
    packed-switch p1, :pswitch_data_18

    .line 729
    :goto_9
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->IParagraphAlign(I)V

    .line 730
    return-void

    .line 716
    :pswitch_f
    const/4 v0, 0x0

    .line 717
    goto :goto_9

    .line 719
    :pswitch_11
    const/4 v0, 0x2

    .line 720
    goto :goto_9

    .line 722
    :pswitch_13
    const/4 v0, 0x1

    .line 723
    goto :goto_9

    .line 725
    :pswitch_15
    const/4 v0, 0x3

    goto :goto_9

    .line 714
    nop

    :pswitch_data_18
    .packed-switch 0x7f0c0213
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method public OnToolbar_BackgroundColor(III)V
    .registers 4
    .parameter "backColor"
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    .line 805
    return-void
.end method

.method public OnToolbar_Border(I)V
    .registers 12
    .parameter "toolbarBtnId"

    .prologue
    const/high16 v5, 0x10

    const/high16 v4, 0x1

    const/4 v3, 0x0

    .line 809
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 811
    const/16 v1, 0xc3f

    .line 812
    .local v1, nMask:I
    const/4 v2, 0x0

    .line 813
    .local v2, nStyle:I
    packed-switch p1, :pswitch_data_3e

    .line 848
    :goto_10
    :pswitch_10
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/office/evengine/EvInterface;->ISetBorder(IIIIIIIII)V

    .line 849
    return-void

    .line 817
    :pswitch_1c
    or-int/2addr v2, v5

    .line 818
    goto :goto_10

    .line 820
    :pswitch_1e
    or-int/lit16 v2, v2, 0x1000

    .line 821
    goto :goto_10

    .line 823
    :pswitch_21
    or-int/2addr v2, v4

    .line 824
    goto :goto_10

    .line 826
    :pswitch_23
    or-int/lit16 v2, v2, 0x100

    .line 827
    goto :goto_10

    .line 829
    :pswitch_26
    or-int/lit8 v2, v2, 0x10

    .line 830
    or-int/lit8 v2, v2, 0x1

    .line 831
    goto :goto_10

    .line 833
    :pswitch_2b
    or-int/2addr v2, v5

    .line 834
    or-int/2addr v2, v4

    .line 835
    or-int/lit16 v2, v2, 0x1000

    .line 836
    or-int/lit16 v2, v2, 0x100

    .line 837
    goto :goto_10

    .line 839
    :pswitch_32
    or-int/2addr v2, v5

    .line 840
    or-int/2addr v2, v4

    .line 841
    or-int/lit16 v2, v2, 0x1000

    .line 842
    or-int/lit16 v2, v2, 0x100

    .line 843
    or-int/lit8 v2, v2, 0x10

    .line 844
    or-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 813
    nop

    :pswitch_data_3e
    .packed-switch 0x7f0c0231
        :pswitch_10
        :pswitch_1c
        :pswitch_1e
        :pswitch_21
        :pswitch_23
        :pswitch_26
        :pswitch_2b
        :pswitch_32
    .end packed-switch
.end method

.method public OnToolbar_BorderColor(III)V
    .registers 4
    .parameter "toolbarBtnId"
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    .line 911
    return-void
.end method

.method public OnToolbar_Border_Style(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 925
    return-void
.end method

.method public OnToolbar_Bullet(I)V
    .registers 5
    .parameter "toolbarBtnId"

    .prologue
    const/4 v2, 0x0

    .line 734
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 736
    const/4 v0, -0x1

    .line 737
    .local v0, nType:I
    packed-switch p1, :pswitch_data_1c

    .line 758
    :goto_a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v2, v0, v2}, Lcom/infraware/office/evengine/EvInterface;->IBulletNumbering(III)V

    .line 759
    return-void

    .line 739
    :pswitch_10
    const/4 v0, -0x1

    .line 740
    goto :goto_a

    .line 742
    :pswitch_12
    const/4 v0, 0x1

    .line 743
    goto :goto_a

    .line 745
    :pswitch_14
    const/4 v0, 0x2

    .line 746
    goto :goto_a

    .line 748
    :pswitch_16
    const/4 v0, 0x3

    .line 749
    goto :goto_a

    .line 751
    :pswitch_18
    const/4 v0, 0x4

    .line 752
    goto :goto_a

    .line 754
    :pswitch_1a
    const/4 v0, 0x5

    goto :goto_a

    .line 737
    :pswitch_data_1c
    .packed-switch 0x7f0c0253
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method public OnToolbar_Cell(I)V
    .registers 5
    .parameter "toolbarBtnId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 853
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 855
    packed-switch p1, :pswitch_data_2e

    .line 875
    :goto_a
    return-void

    .line 857
    :pswitch_b
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2, v2}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_a

    .line 860
    :pswitch_11
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_a

    .line 863
    :pswitch_18
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v1}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_a

    .line 866
    :pswitch_1e
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_a

    .line 869
    :pswitch_24
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2, v2, v2}, Lcom/infraware/office/evengine/EvInterface;->ICellMergeSeparate(III)V

    goto :goto_a

    .line 872
    :pswitch_2a
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSplitCells()V

    goto :goto_a

    .line 855
    :pswitch_data_2e
    .packed-switch 0x7f0c025a
        :pswitch_b
        :pswitch_11
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_2a
    .end packed-switch
.end method

.method public OnToolbar_Chart(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 923
    return-void
.end method

.method public OnToolbar_CmdAlignmentUI()I
    .registers 3

    .prologue
    .line 999
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetParaAttInfo_Editor()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    .line 1001
    .local v0, paraAttInfo:Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    packed-switch v1, :pswitch_data_1e

    .line 1012
    const/4 v1, -0x1

    :goto_c
    return v1

    .line 1003
    :pswitch_d
    const v1, 0x7f0c0213

    goto :goto_c

    .line 1005
    :pswitch_11
    const v1, 0x7f0c0214

    goto :goto_c

    .line 1007
    :pswitch_15
    const v1, 0x7f0c0215

    goto :goto_c

    .line 1009
    :pswitch_19
    const v1, 0x7f0c0216

    goto :goto_c

    .line 1001
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_15
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method

.method public OnToolbar_CmdBackgroundColorUI()I
    .registers 2

    .prologue
    .line 1107
    const/4 v0, -0x1

    return v0
.end method

.method public OnToolbar_CmdBorderColorUI()I
    .registers 2

    .prologue
    .line 1109
    const/4 v0, -0x1

    return v0
.end method

.method public OnToolbar_CmdBulletUI()I
    .registers 3

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetBulletType_Editor()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v0

    .line 1019
    .local v0, bulletType:Lcom/infraware/office/evengine/EV$BULLET_TYPE;
    iget v1, v0, Lcom/infraware/office/evengine/EV$BULLET_TYPE;->nBulletMode:I

    if-nez v1, :cond_f

    .line 1020
    iget v1, v0, Lcom/infraware/office/evengine/EV$BULLET_TYPE;->nBulletType:I

    packed-switch v1, :pswitch_data_28

    .line 1034
    :cond_f
    const v1, 0x7f0c0253

    :goto_12
    return v1

    .line 1022
    :pswitch_13
    const v1, 0x7f0c0254

    goto :goto_12

    .line 1024
    :pswitch_17
    const v1, 0x7f0c0255

    goto :goto_12

    .line 1026
    :pswitch_1b
    const v1, 0x7f0c0256

    goto :goto_12

    .line 1028
    :pswitch_1f
    const v1, 0x7f0c0257

    goto :goto_12

    .line 1030
    :pswitch_23
    const v1, 0x7f0c0258

    goto :goto_12

    .line 1020
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method

.method public OnToolbar_CmdCellUI()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1061
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    .line 1062
    .local v0, aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    const/4 v3, 0x6

    new-array v1, v3, [I

    fill-array-data v1, :array_42

    .line 1065
    .local v1, btnState:[I
    iget v3, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_19

    .line 1066
    iget v3, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_40

    .line 1067
    :cond_19
    const/4 v3, 0x5

    aput v4, v1, v3

    .line 1069
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPCellStatusInfo()I

    move-result v2

    .line 1071
    .local v2, cell_status:I
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_2b

    .line 1073
    aput v4, v1, v4

    .line 1074
    const/4 v3, 0x1

    aput v4, v1, v3

    .line 1077
    :cond_2b
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_32

    .line 1078
    const/4 v3, 0x2

    aput v4, v1, v3

    .line 1080
    :cond_32
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_39

    .line 1081
    const/4 v3, 0x3

    aput v4, v1, v3

    .line 1083
    :cond_39
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_40

    .line 1084
    const/4 v3, 0x4

    aput v4, v1, v3

    .line 1088
    .end local v2           #cell_status:I
    :cond_40
    return-object v1

    .line 1062
    nop

    :array_42
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public OnToolbar_CmdEditUI(Ljava/lang/Boolean;)[I
    .registers 10
    .parameter "bUndoRedo"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 964
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    .line 965
    .local v0, aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 966
    const/4 v3, 0x5

    new-array v1, v3, [I

    .line 967
    .local v1, btnState:[I
    iget v3, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    if-nez v3, :cond_1b

    .line 968
    aput v4, v1, v5

    .line 969
    aput v4, v1, v4

    .line 971
    :cond_1b
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvClipBoardHelper;->hasText()Z

    move-result v3

    if-nez v3, :cond_25

    .line 972
    aput v4, v1, v6

    .line 973
    :cond_25
    iget v3, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2d

    .line 974
    aput v4, v1, v7

    .line 975
    :cond_2d
    iget v3, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_36

    .line 976
    const/4 v3, 0x4

    aput v4, v1, v3

    :cond_36
    move-object v2, v1

    .line 987
    .end local v1           #btnState:[I
    .local v2, btnState:[I
    :goto_37
    return-object v2

    .line 980
    .end local v2           #btnState:[I
    :cond_38
    new-array v1, v7, [I

    .line 981
    .restart local v1       #btnState:[I
    iget v3, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    if-nez v3, :cond_42

    .line 982
    aput v4, v1, v5

    .line 983
    aput v4, v1, v4

    .line 985
    :cond_42
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvClipBoardHelper;->hasText()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 986
    aput v4, v1, v6

    :cond_4c
    move-object v2, v1

    .line 987
    .end local v1           #btnState:[I
    .restart local v2       #btnState:[I
    goto :goto_37
.end method

.method public OnToolbar_CmdFontColorUI()I
    .registers 3

    .prologue
    .line 993
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v0

    .line 994
    .local v0, fontInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFColor:I

    return v1
.end method

.method public OnToolbar_CmdFontSizeUI()I
    .registers 3

    .prologue
    .line 929
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v0

    .line 931
    .local v0, fontInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFSize:I

    packed-switch v1, :pswitch_data_24

    .line 943
    :pswitch_b
    const v1, 0x7f0c028d

    :goto_e
    return v1

    .line 933
    :pswitch_f
    const v1, 0x7f0c0288

    goto :goto_e

    .line 935
    :pswitch_13
    const v1, 0x7f0c0289

    goto :goto_e

    .line 937
    :pswitch_17
    const v1, 0x7f0c028a

    goto :goto_e

    .line 939
    :pswitch_1b
    const v1, 0x7f0c028b

    goto :goto_e

    .line 941
    :pswitch_1f
    const v1, 0x7f0c028c

    goto :goto_e

    .line 931
    nop

    :pswitch_data_24
    .packed-switch 0x9
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_b
        :pswitch_1f
    .end packed-switch
.end method

.method public OnToolbar_CmdFontStyleUI()[I
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 949
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v1

    .line 950
    .local v1, fontInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 952
    .local v0, btnState:[I
    iget v2, v1, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_13

    .line 953
    const/4 v2, 0x0

    aput v3, v0, v2

    .line 954
    :cond_13
    iget v2, v1, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1c

    .line 955
    const/4 v2, 0x1

    aput v3, v0, v2

    .line 956
    :cond_1c
    iget v2, v1, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_24

    .line 957
    aput v3, v0, v3

    .line 959
    :cond_24
    return-object v0
.end method

.method public OnToolbar_CmdInsertUI(Ljava/lang/Boolean;)[I
    .registers 3
    .parameter "bCamera"

    .prologue
    .line 1105
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnToolbar_CmdNumberingUI()I
    .registers 4

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetBulletType_Editor()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v0

    .line 1041
    .local v0, bulletType:Lcom/infraware/office/evengine/EV$BULLET_TYPE;
    iget v1, v0, Lcom/infraware/office/evengine/EV$BULLET_TYPE;->nBulletMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 1042
    iget v1, v0, Lcom/infraware/office/evengine/EV$BULLET_TYPE;->nBulletType:I

    packed-switch v1, :pswitch_data_28

    .line 1056
    :cond_10
    const v1, 0x7f0c02a6

    :goto_13
    return v1

    .line 1044
    :pswitch_14
    const v1, 0x7f0c02a7

    goto :goto_13

    .line 1046
    :pswitch_18
    const v1, 0x7f0c02a8

    goto :goto_13

    .line 1048
    :pswitch_1c
    const v1, 0x7f0c02a9

    goto :goto_13

    .line 1050
    :pswitch_20
    const v1, 0x7f0c02aa

    goto :goto_13

    .line 1052
    :pswitch_24
    const v1, 0x7f0c02ab

    goto :goto_13

    .line 1042
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method public OnToolbar_CmdSheetCellUI()[I
    .registers 2

    .prologue
    .line 1113
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnToolbar_CmdUndoRedoUI()[I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1093
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    .line 1094
    .local v0, aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1096
    .local v1, btnState:[I
    iget v2, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_13

    .line 1097
    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1098
    :cond_13
    iget v2, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1b

    .line 1099
    aput v3, v1, v3

    .line 1101
    :cond_1b
    return-object v1
.end method

.method public OnToolbar_CmddecimalUI()[I
    .registers 2

    .prologue
    .line 1111
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnToolbar_Decimal(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 920
    return-void
.end method

.method public OnToolbar_DocumentEdit(I)V
    .registers 6
    .parameter "toolbarBtnId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 675
    packed-switch p1, :pswitch_data_36

    .line 695
    :goto_b
    return-void

    .line 677
    :pswitch_c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    goto :goto_b

    .line 680
    :pswitch_12
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    goto :goto_b

    .line 684
    :pswitch_18
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvClipBoardHelper;->doPaste(Lcom/infraware/office/evengine/EvInterface;)Z

    goto :goto_b

    .line 687
    :pswitch_20
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    .line 688
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    goto :goto_b

    .line 691
    :pswitch_2b
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    .line 692
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    goto :goto_b

    .line 675
    :pswitch_data_36
    .packed-switch 0x7f0c0269
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_20
        :pswitch_2b
    .end packed-switch
.end method

.method public OnToolbar_FontColor(III)V
    .registers 13
    .parameter "fontColor"
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 701
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 702
    invoke-virtual {p0, p2, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnMoreColors(II)V

    .line 707
    :goto_c
    return-void

    .line 705
    :cond_d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    const/16 v3, 0x4000

    move v4, v2

    move v5, p1

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    goto :goto_c
.end method

.method public OnToolbar_FontSize(I)V
    .registers 12
    .parameter "toolbarBtnId"

    .prologue
    const/4 v4, 0x0

    .line 617
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 619
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 620
    .local v9, AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    const/4 v2, 0x0

    .line 621
    .local v2, nFsize:I
    packed-switch p1, :pswitch_data_34

    .line 641
    :goto_10
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    const/4 v3, 0x4

    iget v5, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFColor:I

    iget v6, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nBColor:I

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 642
    :goto_1d
    return-void

    .line 623
    :pswitch_1e
    const/16 v2, 0x9

    .line 624
    goto :goto_10

    .line 626
    :pswitch_21
    const/16 v2, 0xa

    .line 627
    goto :goto_10

    .line 629
    :pswitch_24
    const/16 v2, 0xb

    .line 630
    goto :goto_10

    .line 632
    :pswitch_27
    const/16 v2, 0xc

    .line 633
    goto :goto_10

    .line 635
    :pswitch_2a
    const/16 v2, 0xe

    .line 636
    goto :goto_10

    .line 638
    :pswitch_2d
    iget v0, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFSize:I

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFontSizeOthers(I)V

    goto :goto_1d

    .line 621
    nop

    :pswitch_data_34
    .packed-switch 0x7f0c0288
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public OnToolbar_FontStyle(I)V
    .registers 12
    .parameter "toolbarBtnId"

    .prologue
    const/4 v2, 0x0

    .line 646
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 648
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 649
    .local v9, AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    const/4 v3, 0x0

    .line 650
    .local v3, nMaskAtt:I
    const/4 v4, 0x0

    .line 651
    .local v4, nAttInfo:I
    packed-switch p1, :pswitch_data_3e

    .line 668
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 669
    return-void

    .line 653
    :pswitch_1c
    or-int/lit8 v3, v3, 0x20

    .line 654
    iget v0, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_11

    .line 655
    const/16 v4, 0x400

    .line 656
    goto :goto_11

    .line 658
    :pswitch_27
    or-int/lit8 v3, v3, 0x40

    .line 659
    iget v0, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_11

    .line 660
    const/16 v4, 0x200

    .line 661
    goto :goto_11

    .line 663
    :pswitch_32
    or-int/lit16 v3, v3, 0x80

    .line 664
    iget v0, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_11

    .line 665
    const/16 v4, 0x100

    goto :goto_11

    .line 651
    nop

    :pswitch_data_3e
    .packed-switch 0x7f0c028f
        :pswitch_1c
        :pswitch_27
        :pswitch_32
    .end packed-switch
.end method

.method public OnToolbar_Form(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 917
    return-void
.end method

.method public OnToolbar_Indent(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 896
    return-void
.end method

.method public OnToolbar_Insert(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 902
    return-void
.end method

.method public OnToolbar_LineSpacing(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 794
    packed-switch p1, :pswitch_data_18

    .line 802
    :goto_8
    return-void

    .line 796
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetLineSpace(I)V

    goto :goto_8

    .line 799
    :pswitch_10
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetLineSpace(I)V

    goto :goto_8

    .line 794
    nop

    :pswitch_data_18
    .packed-switch 0x7f0c02a3
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method

.method public OnToolbar_Merge(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 914
    return-void
.end method

.method public OnToolbar_Numbering(I)V
    .registers 6
    .parameter "toolbarBtnId"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 765
    const/4 v0, -0x1

    .line 766
    .local v0, nType:I
    packed-switch p1, :pswitch_data_1e

    .line 787
    :goto_9
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/infraware/office/evengine/EvInterface;->IBulletNumbering(III)V

    .line 788
    return-void

    .line 768
    :pswitch_11
    const/4 v0, -0x1

    .line 769
    goto :goto_9

    .line 771
    :pswitch_13
    const/4 v0, 0x1

    .line 772
    goto :goto_9

    .line 774
    :pswitch_15
    const/4 v0, 0x2

    .line 775
    goto :goto_9

    .line 777
    :pswitch_17
    const/4 v0, 0x3

    .line 778
    goto :goto_9

    .line 780
    :pswitch_19
    const/4 v0, 0x4

    .line 781
    goto :goto_9

    .line 783
    :pswitch_1b
    const/4 v0, 0x5

    goto :goto_9

    .line 766
    nop

    :pswitch_data_1e
    .packed-switch 0x7f0c02a6
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
    .end packed-switch
.end method

.method public OnToolbar_ReflowText()V
    .registers 1

    .prologue
    .line 899
    return-void
.end method

.method public OnToolbar_Save(I)V
    .registers 3
    .parameter "toolbarBtnId"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 893
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSave()V

    .line 894
    return-void
.end method

.method public OnToolbar_Shape(I)V
    .registers 2
    .parameter "toolbarBtnId"

    .prologue
    .line 908
    return-void
.end method

.method public OnToolbar_Slide(I)V
    .registers 2
    .parameter "toolbarBtnID"

    .prologue
    .line 905
    return-void
.end method

.method public OnToolbar_UndoRedo(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 881
    packed-switch p1, :pswitch_data_18

    .line 889
    :goto_8
    return-void

    .line 883
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    goto :goto_8

    .line 886
    :pswitch_10
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    goto :goto_8

    .line 881
    nop

    :pswitch_data_18
    .packed-switch 0x7f0c02e1
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method

.method public OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 8
    .parameter "toolbarBtnId"
    .parameter "update"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1117
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1119
    .local v0, bEnable:Ljava/lang/Boolean;
    packed-switch p1, :pswitch_data_be

    .line 1172
    :goto_a
    :pswitch_a
    return-object v0

    .line 1121
    :pswitch_b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_23

    .line 1122
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    .line 1123
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    .line 1125
    :cond_23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1126
    goto :goto_a

    .line 1128
    :pswitch_28
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x2

    if-eq v1, v2, :cond_38

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3d

    .line 1129
    :cond_38
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    .line 1131
    :cond_3d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1132
    goto :goto_a

    .line 1134
    :pswitch_42
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    if-eq v1, v3, :cond_60

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvClipBoardHelper;->hasText()Z

    move-result v1

    if-nez v1, :cond_60

    .line 1135
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x2

    if-eq v1, v2, :cond_60

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_65

    .line 1136
    :cond_60
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    .line 1138
    :cond_65
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1139
    goto :goto_a

    .line 1141
    :pswitch_6a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    if-eq v1, v3, :cond_78

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvClipBoardHelper;->hasText()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1142
    :cond_78
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    .line 1144
    :cond_7d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1145
    goto :goto_a

    .line 1154
    :pswitch_82
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v1, :cond_96

    .line 1155
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_96

    .line 1156
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9c

    .line 1157
    :cond_96
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_a

    .line 1159
    :cond_9c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1160
    goto/16 :goto_a

    .line 1162
    :pswitch_a2
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_b2

    .line 1163
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b8

    .line 1164
    :cond_b2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_a

    .line 1166
    :cond_b8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1167
    goto/16 :goto_a

    .line 1119
    :pswitch_data_be
    .packed-switch 0x2
        :pswitch_82
        :pswitch_82
        :pswitch_42
        :pswitch_6a
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_a
        :pswitch_82
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a2
        :pswitch_28
        :pswitch_b
    .end packed-switch
.end method

.method public OnToolbar_Zoom(I)V
    .registers 14
    .parameter "toolbarBtnId"

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 595
    packed-switch p1, :pswitch_data_3e

    .line 613
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 597
    :pswitch_d
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onZoomMenu(Z)V

    goto :goto_c

    .line 600
    :pswitch_11
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_c

    .line 601
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    goto :goto_c

    .line 604
    :pswitch_2a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetViewMode(I)V

    goto :goto_c

    .line 607
    :pswitch_31
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3}, Lcom/infraware/office/evengine/EvInterface;->ISetViewMode(I)V

    goto :goto_c

    .line 610
    :pswitch_37
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetViewMode(I)V

    goto :goto_c

    .line 595
    :pswitch_data_3e
    .packed-switch 0x7f0c02e4
        :pswitch_d
        :pswitch_11
        :pswitch_2a
        :pswitch_31
        :pswitch_c
        :pswitch_37
    .end packed-switch
.end method

.method public OnUndoOrRedo()V
    .registers 1

    .prologue
    .line 296
    return-void
.end method

.method protected ReplaceBarShow(Z)V
    .registers 5
    .parameter "bShow"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3898
    if-eqz p1, :cond_20

    .line 3899
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_1c

    .line 3900
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusable(Z)V

    .line 3901
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusableInTouchMode(Z)V

    .line 3902
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnFocusableToolbarBtn(Z)V

    .line 3904
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->onBackPressed()Z

    .line 3913
    :cond_1c
    :goto_1c
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceBarShow(Z)V

    .line 3914
    return-void

    .line 3907
    :cond_20
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_1c

    .line 3908
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusable(Z)V

    .line 3909
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->setFocusableInTouchMode(Z)V

    .line 3910
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnFocusableToolbarBtn(Z)V

    goto :goto_1c
.end method

.method protected TemplateDocumetMode()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 168
    return-void
.end method

.method public getClipBoardData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvClipBoardHelper;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEnableMenuItemCount(I)I
    .registers 6
    .parameter "menuId"

    .prologue
    .line 3373
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v1

    .line 3374
    .local v1, docType:I
    const/4 v0, 0x0

    .line 3375
    .local v0, count:I
    sparse-switch p1, :sswitch_data_1de

    .line 3468
    :cond_8
    :goto_8
    return v0

    .line 3378
    :sswitch_9
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSave:Z

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    .line 3379
    :cond_f
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bFileSaveAs:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3380
    goto :goto_8

    .line 3382
    :sswitch_16
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x13

    if-ne v1, v2, :cond_23

    .line 3383
    :cond_1d
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewSlide:Z

    if-eqz v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    .line 3384
    :cond_23
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewZoom:Z

    if-eqz v2, :cond_29

    add-int/lit8 v0, v0, 0x1

    .line 3385
    :cond_29
    const/4 v2, 0x2

    if-eq v1, v2, :cond_30

    const/16 v2, 0x12

    if-ne v1, v2, :cond_36

    .line 3386
    :cond_30
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReflow:Z

    if-eqz v2, :cond_36

    add-int/lit8 v0, v0, 0x1

    .line 3387
    :cond_36
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewMode:Z

    if-eqz v2, :cond_3c

    add-int/lit8 v0, v0, 0x1

    .line 3388
    :cond_3c
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewFind:Z

    if-eqz v2, :cond_42

    add-int/lit8 v0, v0, 0x1

    .line 3389
    :cond_42
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bViewReplace:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3390
    goto :goto_8

    .line 3392
    :sswitch_49
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertImage:Z

    if-eqz v2, :cond_4f

    add-int/lit8 v0, v0, 0x1

    .line 3393
    :cond_4f
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertCamera:Z

    if-eqz v2, :cond_55

    add-int/lit8 v0, v0, 0x1

    .line 3394
    :cond_55
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isSMemoExist()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 3395
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertSMemo:Z

    if-eqz v2, :cond_61

    add-int/lit8 v0, v0, 0x1

    .line 3396
    :cond_61
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 3397
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertFreedraw:Z

    if-eqz v2, :cond_6d

    add-int/lit8 v0, v0, 0x1

    .line 3398
    :cond_6d
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertShape:Z

    if-eqz v2, :cond_73

    add-int/lit8 v0, v0, 0x1

    .line 3399
    :cond_73
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertHyperLink:Z

    if-eqz v2, :cond_79

    add-int/lit8 v0, v0, 0x1

    .line 3400
    :cond_79
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertBookmark:Z

    if-eqz v2, :cond_7f

    add-int/lit8 v0, v0, 0x1

    .line 3401
    :cond_7f
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertTable:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3402
    goto :goto_8

    .line 3404
    :sswitch_86
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFont:Z

    if-eqz v2, :cond_8c

    add-int/lit8 v0, v0, 0x1

    .line 3405
    :cond_8c
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatParagraph:Z

    if-eqz v2, :cond_92

    add-int/lit8 v0, v0, 0x1

    .line 3406
    :cond_92
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatBullets:Z

    if-eqz v2, :cond_98

    add-int/lit8 v0, v0, 0x1

    .line 3407
    :cond_98
    const v2, 0x7f08030e

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FV03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 3408
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatColumns:Z

    if-eqz v2, :cond_ad

    add-int/lit8 v0, v0, 0x1

    .line 3409
    :cond_ad
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatShape:Z

    if-eqz v2, :cond_b3

    add-int/lit8 v0, v0, 0x1

    .line 3410
    :cond_b3
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatInsert:Z

    if-eqz v2, :cond_b9

    add-int/lit8 v0, v0, 0x1

    .line 3411
    :cond_b9
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatDelete:Z

    if-eqz v2, :cond_bf

    add-int/lit8 v0, v0, 0x1

    .line 3412
    :cond_bf
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSelect:Z

    if-eqz v2, :cond_c5

    add-int/lit8 v0, v0, 0x1

    .line 3413
    :cond_c5
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatMerge:Z

    if-eqz v2, :cond_cb

    add-int/lit8 v0, v0, 0x1

    .line 3414
    :cond_cb
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatSplit:Z

    if-eqz v2, :cond_d1

    add-int/lit8 v0, v0, 0x1

    .line 3415
    :cond_d1
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordFormatFills:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3416
    goto/16 :goto_8

    .line 3418
    :sswitch_d9
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSlide:Z

    if-eqz v2, :cond_df

    add-int/lit8 v0, v0, 0x1

    .line 3419
    :cond_df
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCopy:Z

    if-eqz v2, :cond_e5

    add-int/lit8 v0, v0, 0x1

    .line 3420
    :cond_e5
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertImage:Z

    if-eqz v2, :cond_eb

    add-int/lit8 v0, v0, 0x1

    .line 3421
    :cond_eb
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertCamera:Z

    if-eqz v2, :cond_f1

    add-int/lit8 v0, v0, 0x1

    .line 3422
    :cond_f1
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->isSMemoExist()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 3423
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertSMemo:Z

    if-eqz v2, :cond_fd

    add-int/lit8 v0, v0, 0x1

    .line 3424
    :cond_fd
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 3425
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bWordInsertFreedraw:Z

    if-eqz v2, :cond_109

    add-int/lit8 v0, v0, 0x1

    .line 3426
    :cond_109
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertShape:Z

    if-eqz v2, :cond_10f

    add-int/lit8 v0, v0, 0x1

    .line 3427
    :cond_10f
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTextBox:Z

    if-eqz v2, :cond_115

    add-int/lit8 v0, v0, 0x1

    .line 3428
    :cond_115
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideInsertTable:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3429
    goto/16 :goto_8

    .line 3431
    :sswitch_11d
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFont:Z

    if-eqz v2, :cond_123

    add-int/lit8 v0, v0, 0x1

    .line 3432
    :cond_123
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatParagraph:Z

    if-eqz v2, :cond_129

    add-int/lit8 v0, v0, 0x1

    .line 3433
    :cond_129
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatBullets:Z

    if-eqz v2, :cond_12f

    add-int/lit8 v0, v0, 0x1

    .line 3434
    :cond_12f
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatShape:Z

    if-eqz v2, :cond_135

    add-int/lit8 v0, v0, 0x1

    .line 3435
    :cond_135
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatInsert:Z

    if-eqz v2, :cond_13b

    add-int/lit8 v0, v0, 0x1

    .line 3436
    :cond_13b
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatDelete:Z

    if-eqz v2, :cond_141

    add-int/lit8 v0, v0, 0x1

    .line 3437
    :cond_141
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSelect:Z

    if-eqz v2, :cond_147

    add-int/lit8 v0, v0, 0x1

    .line 3438
    :cond_147
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatMerge:Z

    if-eqz v2, :cond_14d

    add-int/lit8 v0, v0, 0x1

    .line 3439
    :cond_14d
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatSplit:Z

    if-eqz v2, :cond_153

    add-int/lit8 v0, v0, 0x1

    .line 3440
    :cond_153
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSlideFormatFills:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3441
    goto/16 :goto_8

    .line 3443
    :sswitch_15b
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertCells:Z

    if-eqz v2, :cond_161

    add-int/lit8 v0, v0, 0x1

    .line 3444
    :cond_161
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertRows:Z

    if-eqz v2, :cond_167

    add-int/lit8 v0, v0, 0x1

    .line 3445
    :cond_167
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertColumns:Z

    if-eqz v2, :cond_16d

    add-int/lit8 v0, v0, 0x1

    .line 3446
    :cond_16d
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertSheet:Z

    if-eqz v2, :cond_173

    add-int/lit8 v0, v0, 0x1

    .line 3447
    :cond_173
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertChart:Z

    if-eqz v2, :cond_179

    add-int/lit8 v0, v0, 0x1

    .line 3448
    :cond_179
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetInsertFunction:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3449
    goto/16 :goto_8

    .line 3451
    :sswitch_181
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFont:Z

    if-eqz v2, :cond_187

    add-int/lit8 v0, v0, 0x1

    .line 3452
    :cond_187
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAlignment:Z

    if-eqz v2, :cond_18d

    add-int/lit8 v0, v0, 0x1

    .line 3453
    :cond_18d
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatNumbers:Z

    if-eqz v2, :cond_193

    add-int/lit8 v0, v0, 0x1

    .line 3454
    :cond_193
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatFills:Z

    if-eqz v2, :cond_199

    add-int/lit8 v0, v0, 0x1

    .line 3455
    :cond_199
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHeight:Z

    if-eqz v2, :cond_19f

    add-int/lit8 v0, v0, 0x1

    .line 3456
    :cond_19f
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoHeight:Z

    if-eqz v2, :cond_1a5

    add-int/lit8 v0, v0, 0x1

    .line 3457
    :cond_1a5
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideRows:Z

    if-eqz v2, :cond_1ab

    add-int/lit8 v0, v0, 0x1

    .line 3458
    :cond_1ab
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowRows:Z

    if-eqz v2, :cond_1b1

    add-int/lit8 v0, v0, 0x1

    .line 3459
    :cond_1b1
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatWidth:Z

    if-eqz v2, :cond_1b7

    add-int/lit8 v0, v0, 0x1

    .line 3460
    :cond_1b7
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatAutoWidth:Z

    if-eqz v2, :cond_1bd

    add-int/lit8 v0, v0, 0x1

    .line 3461
    :cond_1bd
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatHideCols:Z

    if-eqz v2, :cond_1c3

    add-int/lit8 v0, v0, 0x1

    .line 3462
    :cond_1c3
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatShowCols:Z

    if-eqz v2, :cond_1c9

    add-int/lit8 v0, v0, 0x1

    .line 3463
    :cond_1c9
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatClear:Z

    if-eqz v2, :cond_1cf

    add-int/lit8 v0, v0, 0x1

    .line 3464
    :cond_1cf
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatDelete:Z

    if-eqz v2, :cond_1d5

    add-int/lit8 v0, v0, 0x1

    .line 3465
    :cond_1d5
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_bSheetFormatMerge:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 3375
    nop

    :sswitch_data_1de
    .sparse-switch
        0x7f0c0315 -> :sswitch_9
        0x7f0c0317 -> :sswitch_16
        0x7f0c0318 -> :sswitch_d9
        0x7f0c0319 -> :sswitch_11d
        0x7f0c0320 -> :sswitch_15b
        0x7f0c0321 -> :sswitch_181
        0x7f0c0336 -> :sswitch_49
        0x7f0c0337 -> :sswitch_86
    .end sparse-switch
.end method

.method public hasClipBoardData()I
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvClipBoardHelper;->hasText()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMenuOpen()Z
    .registers 2

    .prologue
    .line 2437
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbMenuOpen:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1880
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1881
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 1882
    packed-switch p1, :pswitch_data_3e

    .line 1918
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 1884
    :pswitch_a
    const-string v0, "key_new_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSaveAsDocument(Ljava/lang/String;)V

    goto :goto_9

    .line 1887
    :pswitch_14
    invoke-direct {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultInsertImageActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1890
    :pswitch_18
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultCameraActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1893
    :pswitch_1c
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultSMemoActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1896
    :pswitch_20
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultInsertInsertTableActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1899
    :pswitch_24
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultFontActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1902
    :pswitch_28
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultParagraphActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1905
    :pswitch_2c
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultBulletNumberingActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1908
    :pswitch_30
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnResultFillBordersActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1911
    :pswitch_34
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarBtnOrder()V

    goto :goto_9

    .line 1914
    :pswitch_3a
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onResultFreeDrawActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1882
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_14
        :pswitch_20
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_34
        :pswitch_a
        :pswitch_9
        :pswitch_18
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1c
        :pswitch_3a
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 2368
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->haveObjectToast(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    if-eqz v0, :cond_13

    .line 2369
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2395
    :cond_12
    :goto_12
    return-void

    .line 2374
    :cond_13
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v0, :cond_20

    .line 2375
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->finalizeSpeech()V

    .line 2376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    goto :goto_12

    .line 2380
    :cond_20
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2384
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ReplaceBarClose()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2385
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDisabledToolbar(Ljava/lang/Boolean;)V

    goto :goto_12

    .line 2389
    :cond_3d
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSaveConform()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsBackPressSave:Z

    goto :goto_12

    .line 2394
    :cond_4b
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onBackPressed()V

    goto :goto_12
.end method

.method public onCameraActivity()V
    .registers 6

    .prologue
    .line 1447
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v0, cameraIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tmp_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCameraImageUri:Landroid/net/Uri;

    .line 1450
    const-string v2, "output"

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCameraImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1451
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1452
    return-void
.end method

.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetToolbarOrientation()V

    .line 163
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onChangeScreen(I)V

    .line 164
    return-void
.end method

.method protected onCheckTypeSave()V
    .registers 2

    .prologue
    .line 2788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsDifType:Z

    .line 2789
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 2796
    :goto_a
    return-void

    .line 2793
    :pswitch_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mIsDifType:Z

    goto :goto_a

    .line 2789
    nop

    :pswitch_data_10
    .packed-switch 0x12
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCurrentLocale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v0, v1, :cond_d

    .line 1230
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCurrentLocale:Ljava/util/Locale;

    .line 1231
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onLocaleChanged()V

    .line 1233
    :cond_d
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1234
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 1235
    :cond_26
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 1238
    :cond_2b
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1239
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 456
    iget v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEV_VIEW_MODE:I

    if-ne v1, v0, :cond_a

    .line 457
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 477
    :goto_9
    return v0

    .line 459
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_38

    .line 475
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9

    .line 461
    :sswitch_16
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    .line 462
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v1, p0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->performDictionary(Landroid/app/Activity;)V

    goto :goto_9

    .line 465
    :sswitch_22
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnRisizeObj()V

    goto :goto_9

    .line 468
    :sswitch_26
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->ISetObjDelete()V

    goto :goto_9

    .line 471
    :sswitch_2c
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->ISetObjTextEdit()V

    .line 472
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1, v0}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    goto :goto_9

    .line 459
    nop

    :sswitch_data_38
    .sparse-switch
        0x7f0c0302 -> :sswitch_22
        0x7f0c0304 -> :sswitch_26
        0x7f0c0307 -> :sswitch_16
        0x7f0c0332 -> :sswitch_2c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x2

    .line 117
    invoke-static {p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperFactory;->CreateClipBoardHelper(Landroid/app/Activity;)Lcom/infraware/office/evengine/EvClipBoardHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    .line 119
    const v3, 0x7f0c004a

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 120
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/infraware/office/basetoolbar/EditToolbar;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/16 v4, 0x1a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/infraware/office/basetoolbar/EditToolbar;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .local v2, viewTreeObserver:Landroid/view/ViewTreeObserver;
    move-object v3, p0

    .line 127
    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mCurrentLocale:Ljava/util/Locale;

    .line 136
    const v3, 0x7f08030e

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strVendor:Ljava/lang/String;

    .line 138
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->vib:Landroid/os/Vibrator;

    .line 139
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 418
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 419
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->GetObjCtrlType()I

    move-result v3

    packed-switch v3, :pswitch_data_7e

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 452
    :cond_12
    :goto_12
    return-void

    .line 421
    :pswitch_13
    invoke-static {}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->isSupportDictionary()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->haveObjectToast(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 422
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, separateMarkString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    .line 424
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->vib:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 425
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v3, v2}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->setDictionaryString(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v3, p0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->setDictionaryPopup(Landroid/app/Activity;)V

    goto :goto_12

    .line 432
    .end local v2           #separateMarkString:Ljava/lang/String;
    :pswitch_3d
    const v3, 0x7f0b000c

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_12

    .line 437
    :pswitch_44
    const v3, 0x7f0b0001

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_12

    .line 440
    :pswitch_4b
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetChartInfo()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v1

    .line 441
    .local v1, sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
    const/high16 v3, 0x7f0b

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 442
    iget-object v3, v1, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    if-ne v3, v4, :cond_12

    iget-object v3, v1, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    if-ne v3, v4, :cond_12

    iget-object v3, v1, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    if-ne v3, v4, :cond_12

    iget-object v3, v1, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    if-ne v3, v4, :cond_12

    .line 443
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_12

    .line 446
    .end local v1           #sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
    :pswitch_76
    const v3, 0x7f0b0003

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_12

    .line 419
    nop

    :pswitch_data_7e
    .packed-switch 0x3
        :pswitch_13
        :pswitch_3d
        :pswitch_44
        :pswitch_44
        :pswitch_3d
        :pswitch_4b
        :pswitch_76
        :pswitch_44
    .end packed-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 16
    .parameter "id"
    .parameter "args"

    .prologue
    .line 2491
    sparse-switch p1, :sswitch_data_206

    .line 2706
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v10

    :goto_7
    return-object v10

    .line 2493
    :sswitch_8
    invoke-static {}, Lcom/infraware/polarisoffice/common/DlgFactory;->getInstance()Lcom/infraware/polarisoffice/common/DlgFactory;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/infraware/polarisoffice/common/DlgFactory;->createSaveProgressDlg(Landroid/app/Activity;)Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;

    move-result-object v10

    goto :goto_7

    .line 2497
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateMsgPopup(I)Landroid/app/AlertDialog;

    move-result-object v10

    goto :goto_7

    .line 2499
    :sswitch_16
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030009

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2500
    .local v8, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2501
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0801b8

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2502
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2504
    const v10, 0x7f0c0040

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2505
    .local v2, colEditText:Landroid/widget/EditText;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->splitWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2506
    const v10, 0x7f0c0042

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 2507
    .local v7, rowEditText:Landroid/widget/EditText;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->splitWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2509
    const v10, 0x7f080043

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseEditorActivity$13;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$13;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2516
    const v10, 0x7f080045

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseEditorActivity$14;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$14;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    .line 2522
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2523
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2524
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    goto :goto_7

    .line 2526
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #colEditText:Landroid/widget/EditText;
    .end local v7           #rowEditText:Landroid/widget/EditText;
    .end local v8           #view:Landroid/view/View;
    :sswitch_7b
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2527
    const v11, 0x7f0801b7

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 2528
    const v11, 0x7f060004

    new-instance v12, Lcom/infraware/office/baseframe/EvBaseEditorActivity$15;

    invoke-direct {v12, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$15;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 2534
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 2526
    iput-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSelectCellsDialog:Landroid/app/AlertDialog;

    .line 2535
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSelectCellsDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2536
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSelectCellsDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 2539
    :sswitch_a3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2540
    const v11, 0x7f0801a6

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 2541
    const v11, 0x7f060003

    new-instance v12, Lcom/infraware/office/baseframe/EvBaseEditorActivity$16;

    invoke-direct {v12, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$16;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 2553
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 2539
    iput-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDeleteCellsDialog:Landroid/app/AlertDialog;

    .line 2554
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDeleteCellsDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2555
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDeleteCellsDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 2557
    :sswitch_cb
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2558
    const v11, 0x7f0801b6

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 2559
    const v11, 0x7f060002

    new-instance v12, Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;

    invoke-direct {v12, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 2578
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 2557
    iput-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mInsertCellsDialog:Landroid/app/AlertDialog;

    .line 2579
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mInsertCellsDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2580
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mInsertCellsDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 2583
    :sswitch_f3
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2584
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2585
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeFileName:Ljava/lang/String;

    invoke-static {v10, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2587
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030006

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2588
    .restart local v8       #view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2589
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f080130

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2590
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2592
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {p0, v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertPxToMm(I)I

    move-result v11

    iget v12, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v12}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertPxToMm(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 2593
    new-instance v6, Landroid/graphics/Point;

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;

    invoke-direct {v6, v10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 2594
    .local v6, resizeImageSize:Landroid/graphics/Point;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I

    move-result v4

    .line 2595
    .local v4, nImageMaxSize:I
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v10, v4, :cond_145

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v10, v4, :cond_15c

    .line 2596
    :cond_145
    iget v10, v6, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Point;->y:I

    if-lt v10, v11, :cond_1f2

    .line 2597
    invoke-direct {p0, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertPxToMm(I)I

    move-result v10

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v11, v4

    iget v12, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertPxToMm(I)I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2602
    :cond_15c
    :goto_15c
    const v10, 0x7f0c000e

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 2603
    .local v9, widthEditText:Landroid/widget/EditText;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->resizeImageWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2604
    iget v10, v6, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2606
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v10

    if-nez v10, :cond_17e

    .line 2607
    const/high16 v10, -0x100

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2609
    :cond_17e
    const v10, 0x7f0c000f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2610
    .local v3, heightEditText:Landroid/widget/EditText;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->resizeImageWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2611
    iget v10, v6, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2613
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v10

    if-nez v10, :cond_1a0

    .line 2614
    const/high16 v10, -0x100

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2616
    :cond_1a0
    const v10, 0x7f0c0010

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2617
    .local v1, checkBox:Landroid/widget/CheckBox;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2619
    new-instance v10, Lcom/infraware/office/baseframe/EvBaseEditorActivity$18;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$18;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2626
    const v10, 0x7f080043

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2686
    const v10, 0x7f080045

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseEditorActivity$20;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$20;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2698
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    .line 2699
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1e8

    .line 2700
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2702
    :cond_1e8
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2703
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 2599
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v3           #heightEditText:Landroid/widget/EditText;
    .end local v9           #widthEditText:Landroid/widget/EditText;
    :cond_1f2
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v10, v4

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertPxToMm(I)I

    move-result v10

    invoke-direct {p0, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertPxToMm(I)I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_15c

    .line 2491
    nop

    :sswitch_data_206
    .sparse-switch
        0xb -> :sswitch_8
        0x21 -> :sswitch_11
        0x22 -> :sswitch_11
        0x2a -> :sswitch_11
        0x2e -> :sswitch_f3
        0x64 -> :sswitch_16
        0xc8 -> :sswitch_7b
        0x12c -> :sswitch_a3
        0x190 -> :sswitch_cb
    .end sparse-switch
.end method

.method public onCustomToolbarActivity()V
    .registers 4

    .prologue
    .line 1873
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1874
    .local v0, customToolbar:Landroid/content/Intent;
    const-string v1, "DOCUMENT_MODE"

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    iget v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mEvEditModeType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1875
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1876
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvClipBoardHelper;->ClipBoardfinalize()V

    .line 147
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    .line 150
    :cond_c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->toolbarFilnalize()V

    .line 151
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 152
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method public onGlobalLayout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEV_VIEW_MODE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 157
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0, v2, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnMoveOffset(IZ)V

    .line 158
    :cond_f
    return-void
.end method

.method public onInsertImageActivity(Z)V
    .registers 5
    .parameter "isInsertSlideImage"

    .prologue
    .line 1440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1441
    .local v0, insertimageIntent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1444
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_1c

    .line 183
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 179
    :pswitch_8
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 180
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDisabledToolbar(Ljava/lang/Boolean;)V

    .line 181
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 176
    :pswitch_data_1c
    .packed-switch 0x54
        :pswitch_8
    .end packed-switch
.end method

.method public onLocaleChange(I)V
    .registers 15
    .parameter "nLocale"

    .prologue
    const/4 v12, -0x2

    const v11, 0x7f0801d2

    const v10, 0x7f0801d0

    const v9, 0x7f080043

    const/4 v8, -0x1

    .line 3776
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 3778
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 3780
    iget v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nSubMenuId:I

    if-eqz v6, :cond_25

    .line 3781
    iget v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nSubMenuId:I

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onSubMenu(I)V

    .line 3783
    :cond_25
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_40

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 3785
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 3786
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->removeDialog(I)V

    .line 3787
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 3789
    :cond_40
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSelectCellsDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSelectCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 3791
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSelectCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 3792
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->removeDialog(I)V

    .line 3793
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 3795
    :cond_5b
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mInsertCellsDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_76

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mInsertCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 3797
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mInsertCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 3798
    const/16 v6, 0x190

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->removeDialog(I)V

    .line 3799
    const/16 v6, 0x190

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 3801
    :cond_76
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDeleteCellsDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_91

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDeleteCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 3803
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mDeleteCellsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 3804
    const/16 v6, 0x12c

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->removeDialog(I)V

    .line 3805
    const/16 v6, 0x12c

    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->showDialog(I)V

    .line 3807
    :cond_91
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_e5

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 3809
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    const v7, 0x7f080239

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 3810
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    const v7, 0x7f08023a

    invoke-virtual {p0, v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3811
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c0006

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 3812
    .local v3, text:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3813
    const v6, 0x7f08016d

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 3814
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 3815
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(I)V

    .line 3816
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 3818
    .end local v3           #text:Landroid/widget/EditText;
    :cond_e5
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_157

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_157

    .line 3820
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    const v7, 0x7f080130

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 3821
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c000c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3822
    .local v5, textWidth:Landroid/widget/TextView;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3823
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c000d

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3824
    .local v4, textHeight:Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 3825
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c0010

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3826
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f08024f

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 3827
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(I)V

    .line 3828
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 3829
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c000e

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3830
    .local v2, etWidth:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c000f

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3831
    .local v1, etHeight:Landroid/widget/EditText;
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setHint(I)V

    .line 3832
    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 3834
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #etHeight:Landroid/widget/EditText;
    .end local v2           #etWidth:Landroid/widget/EditText;
    .end local v4           #textHeight:Landroid/widget/TextView;
    .end local v5           #textWidth:Landroid/widget/TextView;
    :cond_157
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    if-eqz v6, :cond_177

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_177

    .line 3836
    iget v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerTitleID:I

    if-lez v6, :cond_177

    .line 3837
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    iget v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerTitleID:I

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    .line 3838
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v6, v8}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(I)V

    .line 3841
    :cond_177
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1d8

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1d8

    .line 3843
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    const v7, 0x7f080130

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 3844
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c0011

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3845
    .restart local v5       #textWidth:Landroid/widget/TextView;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3846
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c0013

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3847
    .restart local v4       #textHeight:Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 3848
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(I)V

    .line 3849
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 3850
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c0012

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3851
    .restart local v2       #etWidth:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0c0014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3852
    .restart local v1       #etHeight:Landroid/widget/EditText;
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setHint(I)V

    .line 3853
    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 3856
    .end local v1           #etHeight:Landroid/widget/EditText;
    .end local v2           #etWidth:Landroid/widget/EditText;
    .end local v4           #textHeight:Landroid/widget/TextView;
    .end local v5           #textWidth:Landroid/widget/TextView;
    :cond_1d8
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onLocaleChange(I)V

    .line 3857
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbMenuOpen:Z

    .line 362
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_9c

    .line 411
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 413
    :goto_d
    return v2

    .line 369
    :sswitch_e
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->GetOpenType()I

    move-result v3

    if-ne v3, v2, :cond_1a

    .line 370
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSave()V

    goto :goto_d

    .line 372
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onSubMenu(I)V

    goto :goto_d

    .line 376
    :sswitch_22
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onSubMenu(I)V

    goto :goto_d

    .line 380
    :sswitch_2a
    iget-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbViewerOnlyMode:Z

    if-eqz v3, :cond_32

    .line 382
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ShowWriteProtectMsg()V

    goto :goto_d

    .line 386
    :cond_32
    const v3, 0x7f08030e

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FV14"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 388
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_54
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetProtectStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_70

    .line 391
    :cond_5d
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080291

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 396
    .end local v0           #f:Ljava/io/File;
    :cond_70
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_strPassword:Ljava/lang/String;

    if-eqz v3, :cond_92

    .line 397
    const v3, 0x7f0802fe

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mViewTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, szMsg:Ljava/lang/String;
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 402
    .end local v1           #szMsg:Ljava/lang/String;
    :cond_92
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ChangeViewMode(I)V

    goto/16 :goto_d

    .line 408
    :sswitch_97
    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ChangeViewMode(I)V

    goto/16 :goto_d

    .line 367
    :sswitch_data_9c
    .sparse-switch
        0x7f0c0315 -> :sswitch_e
        0x7f0c0316 -> :sswitch_97
        0x7f0c0317 -> :sswitch_22
        0x7f0c032b -> :sswitch_2a
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 354
    const-string v0, "EvBaseEditorActivity"

    const-string v1, "onOptionsMenuClosed"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbMenuOpen:Z

    .line 356
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 357
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->onBackPressed()Z

    .line 3871
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onPause()V

    .line 3872
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2799
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2800
    sparse-switch p1, :sswitch_data_c

    .line 2812
    :goto_6
    return-void

    .line 2809
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->removeDialog(I)V

    goto :goto_6

    .line 2800
    nop

    :sswitch_data_c
    .sparse-switch
        0x21 -> :sswitch_7
        0x22 -> :sswitch_7
        0x2a -> :sswitch_7
        0x2e -> :sswitch_7
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_7
        0x12c -> :sswitch_7
        0x190 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const v6, 0x7f0c0318

    const v5, 0x7f0c0317

    const v4, 0x7f0c0315

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowDisableMenuItem()Z

    move-result v1

    if-nez v1, :cond_af

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, menuItem:Landroid/view/MenuItem;
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 332
    invoke-virtual {p0, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_b4

    move v1, v2

    :goto_1f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 333
    :cond_22
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 334
    invoke-virtual {p0, v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_b7

    move v1, v2

    :goto_2f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 335
    :cond_32
    const v1, 0x7f0c0336

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 336
    const v1, 0x7f0c0336

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_ba

    move v1, v2

    :goto_45
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 337
    :cond_48
    const v1, 0x7f0c0337

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 338
    const v1, 0x7f0c0337

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_bc

    move v1, v2

    :goto_5b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 339
    :cond_5e
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 340
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_be

    move v1, v2

    :goto_6b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 341
    :cond_6e
    const v1, 0x7f0c0319

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 342
    const v1, 0x7f0c0319

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_c0

    move v1, v2

    :goto_81
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 343
    :cond_84
    const v1, 0x7f0c0320

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 344
    const v1, 0x7f0c0320

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_c2

    move v1, v2

    :goto_97
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 345
    :cond_9a
    const v1, 0x7f0c0321

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 346
    const v1, 0x7f0c0321

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getEnableMenuItemCount(I)I

    move-result v1

    if-nez v1, :cond_c4

    :goto_ac
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 349
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_af
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .restart local v0       #menuItem:Landroid/view/MenuItem;
    :cond_b4
    move v1, v3

    .line 332
    goto/16 :goto_1f

    :cond_b7
    move v1, v3

    .line 334
    goto/16 :goto_2f

    :cond_ba
    move v1, v3

    .line 336
    goto :goto_45

    :cond_bc
    move v1, v3

    .line 338
    goto :goto_5b

    :cond_be
    move v1, v3

    .line 340
    goto :goto_6b

    :cond_c0
    move v1, v3

    .line 342
    goto :goto_81

    :cond_c2
    move v1, v3

    .line 344
    goto :goto_97

    :cond_c4
    move v2, v3

    .line 346
    goto :goto_ac
.end method

.method protected onResultFreeDrawActivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 2356
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->setEvListener()V

    .line 2357
    const/4 v0, 0x0

    .line 2358
    .local v0, bLandScape:I
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 2359
    const/4 v0, 0x1

    .line 2361
    :cond_14
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    .line 2362
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IReDraw()V

    .line 2363
    return-void
.end method

.method public onSMemoActivity()V
    .registers 4

    .prologue
    .line 1455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v0, sMemoIntent:Landroid/content/Intent;
    const-string v1, "app_name"

    const-string v2, "PolarisOffice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1458
    return-void
.end method

.method public onSubMenu(I)V
    .registers 5
    .parameter "menuId"

    .prologue
    const v2, 0x7f080208

    const v1, 0x7f0801fc

    .line 3034
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_nSubMenuId:I

    .line 3035
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;-><init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    .line 3036
    sparse-switch p1, :sswitch_data_ec

    .line 3096
    :goto_12
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3097
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 3098
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3099
    :cond_21
    return-void

    .line 3039
    :sswitch_22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3040
    const v1, 0x7f080219

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3041
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3042
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3039
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto :goto_12

    .line 3046
    :sswitch_3d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3047
    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3048
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3049
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3046
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto :goto_12

    .line 3053
    :sswitch_58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3054
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3055
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oWordListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3056
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3053
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto :goto_12

    .line 3060
    :sswitch_70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3061
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3062
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oWordListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3063
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3060
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto :goto_12

    .line 3067
    :sswitch_88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3068
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3069
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oSlideListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3070
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3067
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 3074
    :sswitch_a1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3075
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3076
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oSlideListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3077
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3074
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 3081
    :sswitch_ba
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3082
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3083
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oSheetListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3084
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3081
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 3088
    :sswitch_d3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3089
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3090
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oSheetListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3091
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3088
    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 3036
    :sswitch_data_ec
    .sparse-switch
        0x7f0c0315 -> :sswitch_22
        0x7f0c0317 -> :sswitch_3d
        0x7f0c0318 -> :sswitch_88
        0x7f0c0319 -> :sswitch_a1
        0x7f0c0320 -> :sswitch_ba
        0x7f0c0321 -> :sswitch_d3
        0x7f0c0336 -> :sswitch_58
        0x7f0c0337 -> :sswitch_70
    .end sparse-switch
.end method

.method public setClipBoardData(Ljava/lang/String;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    if-nez v0, :cond_5

    .line 317
    :goto_4
    return-void

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvClipBoardHelper;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setVisibilityToolbar(Ljava/lang/Boolean;)V
    .registers 6
    .parameter "bShow"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1176
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1177
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1178
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 1180
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v1, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->setVisibility(I)V

    .line 1182
    :cond_1a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->GetHeight()I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1191
    :goto_23
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1, v0}, Lcom/infraware/office/baseframe/EvBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    return-void

    .line 1185
    :cond_29
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_37

    .line 1187
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->setVisibility(I)V

    .line 1189
    :cond_37
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_23
.end method
