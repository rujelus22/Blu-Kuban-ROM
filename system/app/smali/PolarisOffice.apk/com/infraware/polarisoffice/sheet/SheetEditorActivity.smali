.class public Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;
.super Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.source "SheetEditorActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$SheetEditorListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/infraware/office/basetoolbar/ToolbarConfig;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_EDIT;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_SHPW_ROWCOL;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_EDITOR_STATUS;
.implements Lcom/infraware/office/evengine/E$EV_STATUS;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CELL_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_FORMAT;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CHART_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CHART_SERIES;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CHART_LEGEND;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_FUNCTION;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CLEAR;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_INSERT_CELL;
.implements Lcom/infraware/office/evengine/E$EV_SHEERT_CHART_DIMENSIONS;
.implements Lcom/infraware/office/evengine/E$EV_HID_ACTION;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_ADVANCE_CELL_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;
    }
.end annotation


# static fields
.field private static final CELL_EDIT_FOCUS:I = 0x104

.field private static final CHECK_FUNCTION_BAR:I = 0x100

.field private static final FUNCTION_EDIT_FOCUS:I = 0x103

.field private static final KEYPAD_OPEN:I = 0x102

.field private static final REQUEST_OK:I = 0x0

.field private static final TOOLBAR_SHOW:I = 0x101

.field private static mIsLongPress:Z


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field public final METAKEY_CTRL_ON:I

.field private ap1:Landroid/widget/SimpleAdapter;

.field private ap2:Landroid/widget/SimpleAdapter;

.field private downList:[Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBtnDecimal:Landroid/widget/Button;

.field private mBtnNegativeNum:Landroid/widget/Button;

.field private mBtnSymbol:Landroid/widget/Button;

.field private mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

.field private mCellText:Ljava/lang/String;

.field private mChkSeperator:Landroid/widget/CheckBox;

.field private mEndSelPosition:I

.field private mEtInputValue:Landroid/widget/EditText;

.field private mEventHandler:Landroid/os/Handler;

.field private mFunctionButton:Landroid/widget/ImageButton;

.field private mFunctionSaveButton:Landroid/widget/ImageButton;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputListPopup:Landroid/app/AlertDialog;

.field mKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

.field private mListPopup:Landroid/app/AlertDialog;

.field mListView:Landroid/widget/ListView;

.field private mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

.field private mMsgPopup:Landroid/app/AlertDialog;

.field private mNumbersPopup:Landroid/app/AlertDialog;

.field protected mSheetCell:Landroid/widget/LinearLayout;

.field protected mSheetFuctionMenu:Landroid/widget/RelativeLayout;

.field protected mSheetSubCell:Landroid/widget/LinearLayout;

.field protected mSheetTab:Landroid/widget/LinearLayout;

.field private mStartSelPosition:I

.field mTabScroll:Landroid/widget/HorizontalScrollView;

.field private mToast:Landroid/widget/Toast;

.field private mTvStatic:Landroid/widget/TextView;

.field private mTvSymbol:Landroid/widget/TextView;

.field private mTxtDecimal:Landroid/widget/TextView;

.field private mTxtNagativeNum:Landroid/widget/TextView;

.field mTxtView:Landroid/widget/TextView;

.field private mValueInputPopup:Landroid/app/AlertDialog;

.field private m_bNeedRecalc:Z

.field m_nDialogType:I

.field m_nEditMode:I

.field m_nEditStatus:J

.field private m_nErrMsgId:I

.field m_nLocaleCode:I

.field private m_nMax:I

.field private m_nMin:I

.field m_nOrientation:I

.field private m_nPopupListType:I

.field private m_nPopupType:I

.field private m_oListListener:Landroid/content/DialogInterface$OnClickListener;

.field m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

.field m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

.field m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

.field private m_strInputValue:Ljava/lang/String;

.field private m_strVendor:Ljava/lang/String;

.field private matches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private upList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mIsLongPress:Z

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;-><init>()V

    .line 83
    const-string v0, "SheetEditorActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->LOG_CAT:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    .line 85
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetSubCell:Landroid/widget/LinearLayout;

    .line 86
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    .line 87
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    .line 88
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    .line 89
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnDecimal:Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnSymbol:Landroid/widget/Button;

    .line 90
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionSaveButton:Landroid/widget/ImageButton;

    .line 91
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;

    .line 93
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvSymbol:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtDecimal:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtNagativeNum:Landroid/widget/TextView;

    .line 94
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    .line 95
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToast:Landroid/widget/Toast;

    .line 97
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 98
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 99
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 100
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 101
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTabScroll:Landroid/widget/HorizontalScrollView;

    .line 103
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    .line 106
    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupListType:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    .line 107
    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nLocaleCode:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nOrientation:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->list:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    .line 114
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ap1:Landroid/widget/SimpleAdapter;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ap2:Landroid/widget/SimpleAdapter;

    .line 115
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListView:Landroid/widget/ListView;

    .line 117
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;

    .line 121
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bNeedRecalc:Z

    .line 2423
    const/16 v0, 0x1000

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->METAKEY_CTRL_ON:I

    .line 2860
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    return-void
.end method

.method private CheckFunctionBar()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2029
    :try_start_2
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EV;->getSheetInfo()Lcom/infraware/office/evengine/EV$SHEET_INFO;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 2030
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetCurrentSheetIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 2031
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSingleCell()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditInFieldMode()Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v2

    if-nez v2, :cond_52

    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_52

    .line 2032
    .local v0, bUseFunction:Z
    :goto_33
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    if-nez v1, :cond_54

    .line 2033
    :cond_3f
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setEnabled(Z)V

    .line 2034
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionSaveButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2035
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2045
    .end local v0           #bUseFunction:Z
    :goto_51
    return-void

    :cond_52
    move v0, v1

    .line 2031
    goto :goto_33

    .line 2038
    .restart local v0       #bUseFunction:Z
    :cond_54
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setEnabled(Z)V

    .line 2039
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionSaveButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2040
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_65
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_65} :catch_66

    goto :goto_51

    .line 2043
    .end local v0           #bUseFunction:Z
    :catch_66
    move-exception v1

    goto :goto_51
.end method

.method private CheckMenuStatus()V
    .registers 14

    .prologue
    .line 2048
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    if-nez v9, :cond_5

    .line 2247
    :cond_4
    :goto_4
    return-void

    .line 2049
    :cond_5
    iget v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_27

    .line 2051
    :try_start_a
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    const v10, 0x7f0c032e

    if-ne v9, v10, :cond_4

    .line 2052
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_25} :catch_26

    goto :goto_4

    .line 2054
    :catch_26
    move-exception v9

    .line 2056
    :cond_27
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v9}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/office/evengine/EV;->getSheetInfo()Lcom/infraware/office/evengine/EV$SHEET_INFO;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 2057
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v9}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 2058
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget-object v11, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v11}, Lcom/infraware/office/evengine/EvInterface;->IGetCurrentSheetIndex()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 2060
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowDisableMenuItem()Z

    move-result v0

    .line 2061
    .local v0, bShowDisableMenu:Z
    const/4 v7, 0x5

    .line 2063
    .local v7, maxMenuCount:I
    const/4 v8, 0x0

    .local v8, nMenuCount:I
    :goto_4e
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v9}, Landroid/view/Menu;->size()I

    move-result v9

    if-lt v8, v9, :cond_75

    .line 2242
    iget-wide v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v11, 0x10

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_69

    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/infraware/common/util/FileUtils;->isCacheFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_71

    .line 2243
    :cond_69
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v9}, Lcom/infraware/common/util/FileUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_261

    .line 2244
    :cond_71
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bFileSave:Z

    goto :goto_4

    .line 2064
    :cond_75
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v9, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2065
    .local v6, item:Landroid/view/MenuItem;
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2067
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v9

    if-eqz v9, :cond_101

    .line 2069
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_266

    .line 2084
    :pswitch_8c
    if-nez v0, :cond_90

    if-ge v8, v7, :cond_fc

    .line 2085
    :cond_90
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2091
    :goto_94
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertCells:Z

    .line 2092
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertRows:Z

    .line 2093
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertColumns:Z

    .line 2094
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertChart:Z

    .line 2095
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertSheet:Z

    .line 2096
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertFunction:Z

    .line 2098
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatFont:Z

    .line 2099
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAlignment:Z

    .line 2100
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatNumbers:Z

    .line 2101
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatFills:Z

    .line 2102
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHeight:Z

    .line 2103
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAutoHeight:Z

    .line 2104
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHideRows:Z

    .line 2105
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatShowRows:Z

    .line 2106
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatWidth:Z

    .line 2107
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAutoWidth:Z

    .line 2108
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHideCols:Z

    .line 2109
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatShowCols:Z

    .line 2110
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatClear:Z

    .line 2111
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatDelete:Z

    .line 2112
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatMerge:Z

    .line 2234
    :goto_d3
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    const v10, 0x7f0c0326

    if-ne v9, v10, :cond_e8

    .line 2235
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget v9, v9, Lcom/infraware/office/evengine/EV$SHEET_INFO;->bFreeze:I

    if-lez v9, :cond_259

    .line 2236
    const v9, 0x7f080222

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2063
    :cond_e8
    :goto_e8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4e

    .line 2077
    :pswitch_ec
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_94

    .line 2080
    :pswitch_f1
    const v9, 0x7f080236

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2081
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_94

    .line 2087
    :cond_fc
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_94

    .line 2114
    :cond_101
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditInFieldMode()Z

    move-result v9

    if-nez v9, :cond_113

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v9

    if-nez v9, :cond_113

    iget v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_181

    .line 2116
    :cond_113
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_290

    .line 2131
    if-nez v0, :cond_11e

    if-ge v8, v7, :cond_17c

    .line 2132
    :cond_11e
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2138
    :goto_122
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertCells:Z

    .line 2139
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertRows:Z

    .line 2140
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertColumns:Z

    .line 2141
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertChart:Z

    .line 2142
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertSheet:Z

    .line 2143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertFunction:Z

    .line 2145
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatFont:Z

    .line 2146
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAlignment:Z

    .line 2147
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatNumbers:Z

    .line 2148
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatFills:Z

    .line 2149
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHeight:Z

    .line 2150
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAutoHeight:Z

    .line 2151
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHideRows:Z

    .line 2152
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatShowRows:Z

    .line 2153
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatWidth:Z

    .line 2154
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAutoWidth:Z

    .line 2155
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHideCols:Z

    .line 2156
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatShowCols:Z

    .line 2157
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatClear:Z

    .line 2158
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatDelete:Z

    .line 2159
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatMerge:Z

    goto/16 :goto_d3

    .line 2121
    :sswitch_163
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_122

    .line 2124
    :sswitch_168
    const v9, 0x7f08012d

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2125
    if-nez v0, :cond_172

    if-ge v8, v7, :cond_177

    .line 2126
    :cond_172
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_122

    .line 2128
    :cond_177
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_122

    .line 2134
    :cond_17c
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_122

    .line 2163
    :cond_181
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_2a6

    .line 2179
    :pswitch_188
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2183
    :goto_18c
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    .line 2184
    .local v1, isCellSelected:Z
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeRows()Z

    move-result v5

    .line 2185
    .local v5, isWholeRows:Z
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeCols()Z

    move-result v4

    .line 2186
    .local v4, isWholeCols:Z
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEmptyCell()Z

    move-result v2

    .line 2187
    .local v2, isEmptyCell:Z
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSingleCell()Z

    move-result v3

    .line 2189
    .local v3, isSingleCell:Z
    if-eqz v1, :cond_234

    .line 2190
    if-eqz v5, :cond_22a

    if-eqz v4, :cond_22a

    const/4 v9, 0x0

    :goto_1a7
    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertCells:Z

    .line 2191
    if-eqz v4, :cond_22d

    const/4 v9, 0x0

    :goto_1ac
    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertRows:Z

    .line 2192
    if-eqz v5, :cond_230

    const/4 v9, 0x0

    :goto_1b1
    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertColumns:Z

    .line 2193
    if-eqz v2, :cond_232

    const/4 v9, 0x0

    :goto_1b6
    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertChart:Z

    .line 2203
    :goto_1b8
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertSheet:Z

    .line 2204
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertFunction:Z

    .line 2206
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatFont:Z

    .line 2207
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAlignment:Z

    .line 2208
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatNumbers:Z

    .line 2209
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatFills:Z

    .line 2210
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHeight:Z

    .line 2211
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAutoHeight:Z

    .line 2212
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHideRows:Z

    .line 2213
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsHiddenRow()Z

    move-result v9

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatShowRows:Z

    .line 2214
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatWidth:Z

    .line 2215
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatAutoWidth:Z

    .line 2216
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatHideCols:Z

    .line 2217
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsHiddenCol()Z

    move-result v9

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatShowCols:Z

    .line 2218
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatClear:Z

    .line 2219
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatDelete:Z

    .line 2221
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsMergeCells()Z

    move-result v9

    if-eqz v9, :cond_242

    .line 2222
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatMerge:Z

    .line 2223
    const v9, 0x7f0801b8

    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strSheetFormatMerge:Ljava/lang/String;

    goto/16 :goto_d3

    .line 2165
    .end local v1           #isCellSelected:Z
    .end local v2           #isEmptyCell:Z
    .end local v3           #isSingleCell:Z
    .end local v4           #isWholeCols:Z
    .end local v5           #isWholeRows:Z
    :pswitch_1f6
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEmptyCell()Z

    move-result v9

    if-nez v9, :cond_208

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v9

    if-eqz v9, :cond_208

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSingleCell()Z

    move-result v9

    if-eqz v9, :cond_218

    .line 2166
    :cond_208
    if-nez v0, :cond_20c

    if-ge v8, v7, :cond_212

    .line 2167
    :cond_20c
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_18c

    .line 2169
    :cond_212
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18c

    .line 2172
    :cond_218
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_18c

    .line 2175
    :pswitch_21e
    const v9, 0x7f08012d

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2176
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_18c

    .line 2190
    .restart local v1       #isCellSelected:Z
    .restart local v2       #isEmptyCell:Z
    .restart local v3       #isSingleCell:Z
    .restart local v4       #isWholeCols:Z
    .restart local v5       #isWholeRows:Z
    :cond_22a
    const/4 v9, 0x1

    goto/16 :goto_1a7

    .line 2191
    :cond_22d
    const/4 v9, 0x1

    goto/16 :goto_1ac

    .line 2192
    :cond_230
    const/4 v9, 0x1

    goto :goto_1b1

    .line 2193
    :cond_232
    const/4 v9, 0x1

    goto :goto_1b6

    .line 2197
    :cond_234
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertCells:Z

    .line 2198
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertRows:Z

    .line 2199
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertColumns:Z

    .line 2200
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetInsertChart:Z

    goto/16 :goto_1b8

    .line 2226
    :cond_242
    const v9, 0x7f080117

    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strSheetFormatMerge:Ljava/lang/String;

    .line 2227
    if-nez v3, :cond_24f

    if-nez v1, :cond_254

    .line 2228
    :cond_24f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatMerge:Z

    goto/16 :goto_d3

    .line 2230
    :cond_254
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bSheetFormatMerge:Z

    goto/16 :goto_d3

    .line 2238
    .end local v1           #isCellSelected:Z
    .end local v2           #isEmptyCell:Z
    .end local v3           #isSingleCell:Z
    .end local v4           #isWholeCols:Z
    .end local v5           #isWholeRows:Z
    :cond_259
    const v9, 0x7f08012e

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_e8

    .line 2246
    .end local v6           #item:Landroid/view/MenuItem;
    :cond_261
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bFileSave:Z

    goto/16 :goto_4

    .line 2069
    :pswitch_data_266
    .packed-switch 0x7f0c0315
        :pswitch_ec
        :pswitch_ec
        :pswitch_ec
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_ec
        :pswitch_ec
        :pswitch_8c
        :pswitch_ec
        :pswitch_f1
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_ec
    .end packed-switch

    .line 2116
    :sswitch_data_290
    .sparse-switch
        0x7f0c0315 -> :sswitch_163
        0x7f0c0316 -> :sswitch_163
        0x7f0c0317 -> :sswitch_163
        0x7f0c031f -> :sswitch_163
        0x7f0c0323 -> :sswitch_168
    .end sparse-switch

    .line 2163
    :pswitch_data_2a6
    .packed-switch 0x7f0c0323
        :pswitch_21e
        :pswitch_188
        :pswitch_1f6
    .end packed-switch
.end method

.method private GetEditSelection(Ljava/lang/String;)I
    .registers 10
    .parameter "strDef"

    .prologue
    .line 3484
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3485
    .local v5, strFunc:Ljava/lang/String;
    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 3486
    .local v3, idxStart:I
    add-int/lit8 v2, v3, 0x1

    .line 3487
    .local v2, idxEnd:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 3488
    .local v4, nLen:I
    :goto_1b
    if-lt v2, v4, :cond_25

    .line 3501
    :sswitch_1d
    sub-int v6, v2, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2f

    .line 3502
    add-int/lit8 v1, v3, 0x1

    .line 3505
    .local v1, idx:I
    :goto_24
    return v1

    .line 3489
    .end local v1           #idx:I
    :cond_25
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3490
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_32

    .line 3495
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3504
    .end local v0           #ch:C
    :cond_2f
    add-int/lit8 v1, v2, 0x1

    .restart local v1       #idx:I
    goto :goto_24

    .line 3490
    :sswitch_data_32
    .sparse-switch
        0x29 -> :sswitch_1d
        0x5b -> :sswitch_1d
    .end sparse-switch
.end method

.method private GetEditText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "strTitle"
    .parameter "strDef"

    .prologue
    .line 3461
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3462
    .local v3, strFunc:Ljava/lang/String;
    const/16 v4, 0x28

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 3463
    .local v1, idx:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3464
    .local v2, nLen:I
    :goto_21
    if-lt v1, v2, :cond_24

    .line 3481
    :goto_23
    return-object v3

    .line 3465
    :cond_24
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3466
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_58

    .line 3475
    add-int/lit8 v1, v1, 0x1

    .line 3476
    goto :goto_21

    .line 3468
    :sswitch_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3469
    add-int/lit8 v1, v1, 0x1

    .line 3470
    goto :goto_21

    .line 3478
    :sswitch_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3479
    goto :goto_23

    .line 3466
    :sswitch_data_58
    .sparse-switch
        0x29 -> :sswitch_44
        0x2c -> :sswitch_2e
        0x5b -> :sswitch_44
    .end sparse-switch
.end method

.method private OnSheetFormatDate(I)V
    .registers 5
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1065
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    const/4 v1, 0x3

    iput v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 1066
    packed-switch p1, :pswitch_data_14

    .line 1079
    :goto_9
    const/16 v0, 0x302

    invoke-virtual {p0, v0, v2, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    .line 1080
    return-void

    .line 1076
    :pswitch_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput p1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_9

    .line 1066
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private OnSheetFormatFraction(I)V
    .registers 5
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1096
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    const/4 v1, 0x6

    iput v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 1097
    packed-switch p1, :pswitch_data_14

    .line 1110
    :goto_9
    const/16 v0, 0x302

    invoke-virtual {p0, v0, v2, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    .line 1111
    return-void

    .line 1107
    :pswitch_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput p1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_9

    .line 1097
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private OnSheetFormatTime(I)V
    .registers 5
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1083
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    const/4 v1, 0x4

    iput v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 1084
    packed-switch p1, :pswitch_data_14

    .line 1092
    :goto_9
    const/16 v0, 0x302

    invoke-virtual {p0, v0, v2, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    .line 1093
    return-void

    .line 1089
    :pswitch_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput p1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    goto :goto_9

    .line 1084
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private OnSheetNumbers(I)V
    .registers 4
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 1027
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 1028
    packed-switch p1, :pswitch_data_66

    .line 1062
    :goto_c
    return-void

    .line 1031
    :pswitch_d
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput p1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 1032
    const/16 v0, 0x302

    invoke-virtual {p0, v0, v1, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_c

    .line 1035
    :pswitch_17
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 1036
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_c

    .line 1039
    :pswitch_26
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 1040
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_c

    .line 1043
    :pswitch_35
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_c

    .line 1046
    :pswitch_3b
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_c

    .line 1049
    :pswitch_41
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 1050
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_c

    .line 1053
    :pswitch_50
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_c

    .line 1056
    :pswitch_56
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 1057
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_c

    .line 1028
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_d
        :pswitch_17
        :pswitch_26
        :pswitch_35
        :pswitch_3b
        :pswitch_41
        :pswitch_50
        :pswitch_56
        :pswitch_d
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupListType:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetNumbers(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13()Ljava/lang/String;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->searchResultCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 2027
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->CheckFunctionBar()V

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    return v0
.end method

.method static synthetic access$17(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3576
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onToastMessage(I)V

    return-void
.end method

.method static synthetic access$18()Z
    .registers 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mIsLongPress:Z

    return v0
.end method

.method static synthetic access$19(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$20(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/baseframe/EvBaseView;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 106
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    return-void
.end method

.method static synthetic access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 106
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    return-void
.end method

.method static synthetic access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    return-object v0
.end method

.method static synthetic access$24(Z)V
    .registers 1
    .parameter

    .prologue
    .line 96
    sput-boolean p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mIsLongPress:Z

    return-void
.end method

.method static synthetic access$25(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    return v0
.end method

.method static synthetic access$27(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$29(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetFormatDate(I)V

    return-void
.end method

.method static synthetic access$30(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    return v0
.end method

.method static synthetic access$31(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    return v0
.end method

.method static synthetic access$32(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$33(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$34(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/SimpleAdapter;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ap2:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$35(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3460
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->GetEditText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3483
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->GetEditSelection(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$37(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetFormatTime(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1095
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetFormatFraction(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnDecimal:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnSymbol:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    return-void
.end method

.method private onChangeOptionMenu()V
    .registers 4

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mbMenuChange:Z

    if-eqz v0, :cond_24

    .line 136
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_21

    .line 138
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 139
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 140
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b000a

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 143
    :goto_1e
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->CheckMenuStatus()V

    .line 145
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mbMenuChange:Z

    .line 147
    :cond_24
    return-void

    .line 142
    :cond_25
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0008

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1e
.end method

.method private onCreateInputListPopup(I)Landroid/app/AlertDialog;
    .registers 14
    .parameter "nType"

    .prologue
    const v3, 0x7f03004b

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 3315
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    .line 3316
    const/4 v6, 0x0

    .line 3317
    .local v6, nTitleId:I
    packed-switch p1, :pswitch_data_ca

    .line 3322
    :goto_c
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 3323
    .local v8, vi:Landroid/view/LayoutInflater;
    const v0, 0x7f03004c

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 3324
    .local v7, v:Landroid/view/View;
    const v0, 0x7f0c01ca

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    .line 3325
    const v0, 0x7f0c01cb

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListView:Landroid/widget/ListView;

    .line 3327
    const v0, 0x7f0c01c9

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    .line 3328
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    new-array v1, v11, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1f

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3330
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3331
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3343
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->list:Ljava/util/ArrayList;

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v9

    const-string v1, "definition"

    aput-object v1, v4, v11

    new-array v5, v10, [I

    fill-array-data v5, :array_d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ap1:Landroid/widget/SimpleAdapter;

    .line 3344
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v9

    const-string v1, "definition"

    aput-object v1, v4, v11

    new-array v5, v10, [I

    fill-array-data v5, :array_d8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ap2:Landroid/widget/SimpleAdapter;

    .line 3345
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ap1:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3346
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3368
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3369
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3367
    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    .line 3370
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3371
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$25;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$25;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3381
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    return-object v0

    .line 3319
    .end local v7           #v:Landroid/view/View;
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :pswitch_c5
    const v6, 0x7f0801c9

    goto/16 :goto_c

    .line 3317
    :pswitch_data_ca
    .packed-switch 0x27
        :pswitch_c5
    .end packed-switch

    .line 3343
    :array_d0
    .array-data 0x4
        0xc7t 0x1t 0xct 0x7ft
        0xc8t 0x1t 0xct 0x7ft
    .end array-data

    .line 3344
    :array_d8
    .array-data 0x4
        0xc7t 0x1t 0xct 0x7ft
        0xc8t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method private onCreateInputValuePopup(I)Landroid/app/AlertDialog;
    .registers 13
    .parameter "nType"

    .prologue
    const v10, 0x7f0801ee

    const/16 v7, 0x5a0

    const/16 v6, 0x1e

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2735
    const/4 v3, 0x0

    .local v3, nTitleId:I
    const/4 v2, 0x0

    .local v2, nSubTitleId:I
    const/4 v1, 0x0

    .line 2736
    .local v1, nHintId:I
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    .line 2737
    packed-switch p1, :pswitch_data_114

    .line 2771
    :goto_11
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 2772
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f03004e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2774
    .local v4, v:Landroid/view/View;
    const v6, 0x7f0c01cc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    .line 2775
    const v6, 0x7f0c01cd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    .line 2776
    const/4 v6, 0x3

    if-eq p1, v6, :cond_3d

    const/4 v6, 0x4

    if-ne p1, v6, :cond_10b

    .line 2777
    :cond_3d
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2778
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2783
    :goto_47
    new-instance v0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;-><init>(Landroid/content/Context;I)V

    .line 2784
    .local v0, filter:Lcom/infraware/polarisoffice/sheet/InputValueFilter;
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2785
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2786
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 2787
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2788
    :cond_6b
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 2790
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 2791
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2793
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    new-instance v7, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2824
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2825
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2826
    const v7, 0x7f080043

    new-instance v8, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2853
    const v7, 0x7f080045

    new-instance v8, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$19;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$19;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2855
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 2824
    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    .line 2856
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2857
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    return-object v6

    .line 2739
    .end local v0           #filter:Lcom/infraware/polarisoffice/sheet/InputValueFilter;
    .end local v4           #v:Landroid/view/View;
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :pswitch_c1
    const v3, 0x7f08014c

    .line 2740
    const v2, 0x7f080182

    .line 2741
    const v1, 0x7f080182

    .line 2742
    iput v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 2743
    iput v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 2744
    iput v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    goto/16 :goto_11

    .line 2747
    :pswitch_d2
    const v3, 0x7f08014e

    .line 2748
    const v2, 0x7f080182

    .line 2749
    const v1, 0x7f080182

    .line 2750
    iput v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 2751
    iput v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 2752
    iput v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    goto/16 :goto_11

    .line 2755
    :pswitch_e3
    const v3, 0x7f080127

    .line 2756
    const v2, 0x7f080127

    .line 2757
    const v1, 0x7f080127

    .line 2758
    const v6, 0x7f0801ec

    iput v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 2759
    iput v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 2760
    iput v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    goto/16 :goto_11

    .line 2763
    :pswitch_f7
    const v3, 0x7f08012a

    .line 2764
    const v2, 0x7f08012a

    .line 2765
    const v1, 0x7f08012a

    .line 2766
    const v6, 0x7f0801ed

    iput v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 2767
    iput v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 2768
    iput v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    goto/16 :goto_11

    .line 2781
    .restart local v4       #v:Landroid/view/View;
    .restart local v5       #vi:Landroid/view/LayoutInflater;
    :cond_10b
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 2737
    :pswitch_data_114
    .packed-switch 0x3
        :pswitch_c1
        :pswitch_d2
        :pswitch_e3
        :pswitch_f7
    .end packed-switch
.end method

.method private onCreateListPopup(I)Landroid/app/AlertDialog;
    .registers 8
    .parameter "nType"

    .prologue
    const/4 v3, 0x0

    .line 2952
    const/4 v2, 0x0

    .line 2953
    .local v2, nTitleId:I
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupListType:I

    move-object v1, v3

    .line 2954
    check-cast v1, [Ljava/lang/String;

    .line 2955
    .local v1, items:[Ljava/lang/String;
    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupListType:I

    packed-switch v4, :pswitch_data_f8

    .line 3006
    :goto_c
    :pswitch_c
    if-eqz v2, :cond_10

    if-nez v1, :cond_c4

    .line 3028
    :cond_10
    :goto_10
    return-object v3

    .line 2957
    :pswitch_11
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2958
    const v2, 0x7f0801ab

    .line 2959
    goto :goto_c

    .line 2961
    :pswitch_20
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2962
    const v2, 0x7f0801b6

    .line 2963
    goto :goto_c

    .line 2965
    :pswitch_2f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2966
    const v2, 0x7f08014a

    .line 2967
    goto :goto_c

    .line 2969
    :pswitch_3e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2970
    const v2, 0x7f08014b

    .line 2971
    goto :goto_c

    .line 2973
    :pswitch_4d
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2974
    const v2, 0x7f08014d

    .line 2975
    goto :goto_c

    .line 2977
    :pswitch_5c
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2978
    const v2, 0x7f080123

    .line 2979
    goto :goto_c

    .line 2981
    :pswitch_6b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2982
    const v2, 0x7f0801a6

    .line 2983
    goto :goto_c

    .line 2985
    :pswitch_7a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2986
    const v2, 0x7f080182

    .line 2987
    goto :goto_c

    .line 2989
    :pswitch_89
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2990
    const v2, 0x7f0801ce

    .line 2991
    goto/16 :goto_c

    .line 2993
    :pswitch_99
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2994
    const v2, 0x7f0801cd

    .line 2995
    goto/16 :goto_c

    .line 2997
    :pswitch_a9
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v1

    .line 2998
    const v2, 0x7f080135

    .line 2999
    goto/16 :goto_c

    .line 3001
    :pswitch_b4
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3002
    const v2, 0x7f0801a8

    goto/16 :goto_c

    .line 3008
    :cond_c4
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;

    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupListType:I

    invoke-direct {v0, p0, p0, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Landroid/content/Context;I)V

    .line 3009
    .local v0, adapter:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;
    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->addList([Ljava/lang/String;)V

    .line 3011
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3012
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3013
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3014
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 3011
    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    .line 3015
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3016
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    new-instance v4, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$20;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$20;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3028
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    goto/16 :goto_10

    .line 2955
    nop

    :pswitch_data_f8
    .packed-switch 0xd
        :pswitch_11
        :pswitch_20
        :pswitch_2f
        :pswitch_3e
        :pswitch_4d
        :pswitch_5c
        :pswitch_6b
        :pswitch_7a
        :pswitch_89
        :pswitch_99
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b4
    .end packed-switch
.end method

.method private onCreateMsgPopup(I)Landroid/app/AlertDialog;
    .registers 6
    .parameter "nType"

    .prologue
    .line 3289
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    .line 3290
    const/4 v0, 0x0

    .line 3291
    .local v0, nMsgId:I
    packed-switch p1, :pswitch_data_3a

    .line 3296
    :goto_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3297
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3298
    const v2, 0x7f080043

    new-instance v3, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$21;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$21;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3307
    const v2, 0x7f080045

    new-instance v3, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$22;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$22;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3309
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3296
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    .line 3310
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3311
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    return-object v1

    .line 3293
    :pswitch_36
    const v0, 0x7f0801e1

    goto :goto_6

    .line 3291
    :pswitch_data_3a
    .packed-switch 0x1f
        :pswitch_36
    .end packed-switch
.end method

.method private onCreateNumbersPopup(I)Landroid/app/AlertDialog;
    .registers 14
    .parameter "nType"

    .prologue
    const/4 v9, 0x0

    const/16 v11, 0x8

    .line 2655
    const v1, 0x7f080148

    .line 2656
    .local v1, nTitleId:I
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    .line 2658
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 2659
    .local v7, vi:Landroid/view/LayoutInflater;
    const v8, 0x7f030050

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2661
    .local v6, v:Landroid/view/View;
    const v8, 0x7f0c01d2

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnDecimal:Landroid/widget/Button;

    .line 2662
    const v8, 0x7f0c01d6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;

    .line 2663
    const v8, 0x7f0c01d4

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnSymbol:Landroid/widget/Button;

    .line 2664
    const v8, 0x7f0c01d7

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;

    .line 2665
    const v8, 0x7f0c01d1

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtDecimal:Landroid/widget/TextView;

    .line 2667
    const v8, 0x7f0c01d3

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvSymbol:Landroid/widget/TextView;

    .line 2668
    const v8, 0x7f0c01d5

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtNagativeNum:Landroid/widget/TextView;

    .line 2670
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;

    new-instance v10, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$14;

    invoke-direct {v10, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$14;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2677
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v3, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2678
    .local v3, selectedDecimal:I
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnDecimal:Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2680
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f06000b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2681
    .local v2, negativeNumItems:[Ljava/lang/String;
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v4, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    .line 2682
    .local v4, selectedNegativeNum:I
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;

    aget-object v10, v2, v4

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2683
    packed-switch v4, :pswitch_data_11c

    .line 2690
    :pswitch_99
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 2694
    :goto_9f
    packed-switch p1, :pswitch_data_12a

    .line 2711
    :goto_a2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2712
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 2713
    const v10, 0x7f080043

    new-instance v11, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;

    invoke-direct {v11, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 2725
    const v10, 0x7f080045

    new-instance v11, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$16;

    invoke-direct {v11, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$16;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 2729
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 2711
    iput-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    .line 2730
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2731
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    return-object v8

    .line 2687
    :pswitch_d5
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;

    const/high16 v10, -0x1

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_9f

    .line 2696
    :pswitch_dd
    const v1, 0x7f080148

    .line 2697
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnSymbol:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2698
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvSymbol:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2699
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v8, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    if-lez v8, :cond_f7

    const/4 v0, 0x1

    .line 2700
    .local v0, bCheck:Z
    :goto_f1
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_a2

    .end local v0           #bCheck:Z
    :cond_f7
    move v0, v9

    .line 2699
    goto :goto_f1

    .line 2703
    :pswitch_f9
    const v1, 0x7f080149

    .line 2704
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2706
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f06000c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2707
    .local v5, symbolItems:[Ljava/lang/String;
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnSymbol:Landroid/widget/Button;

    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v10, v10, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    aget-object v10, v5, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a2

    .line 2683
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_99
        :pswitch_d5
        :pswitch_99
        :pswitch_d5
    .end packed-switch

    .line 2694
    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_f9
    .end packed-switch
.end method

.method private onToastMessage(I)V
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 3577
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1c

    .line 3578
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToast:Landroid/widget/Toast;

    .line 3581
    :goto_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 3582
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3583
    return-void

    .line 3580
    :cond_1c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_f
.end method


# virtual methods
.method public ActivityMsgProc(IIIIILjava/lang/Object;)I
    .registers 14
    .parameter "msg"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "obj"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2348
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->isShowSearchBar()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    .line 2420
    .end local p6
    :goto_c
    return v2

    .line 2349
    .restart local p6
    :cond_d
    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-eqz v2, :cond_16

    .line 2350
    invoke-super/range {p0 .. p6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    move-result v2

    goto :goto_c

    .line 2352
    :cond_16
    sparse-switch p1, :sswitch_data_15a

    .line 2418
    invoke-super/range {p0 .. p6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    move-result v2

    goto :goto_c

    .line 2354
    :sswitch_1e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditInFieldMode()Z

    move-result v2

    if-nez v2, :cond_28

    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    if-ne v2, v6, :cond_2a

    .line 2355
    :cond_28
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bNeedRecalc:Z

    .line 2356
    :cond_2a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2357
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 2358
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 2359
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 2370
    :goto_3d
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2371
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d2

    move v2, v4

    goto :goto_c

    .line 2362
    :cond_50
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 2363
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 2364
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2365
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    .line 2367
    :cond_6a
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 2368
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    goto :goto_3d

    .line 2374
    :sswitch_75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2375
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2376
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 2377
    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-nez v2, :cond_cd

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 2378
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2379
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-ne v2, v5, :cond_b8

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-eq v2, v5, :cond_d5

    .line 2380
    :cond_b8
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-eq v2, v5, :cond_cd

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->haveHardWareKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 2381
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 2392
    .end local v0           #display:Landroid/view/Display;
    :cond_cd
    :goto_cd
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_d2
    :goto_d2
    move v2, v3

    .line 2420
    goto/16 :goto_c

    .line 2383
    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_d5
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ne v2, v5, :cond_e5

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v5, :cond_cd

    .line 2384
    :cond_e5
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-ne v2, v5, :cond_f7

    .line 2385
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    const/16 v4, 0x101

    const-wide/16 v5, 0xa

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_cd

    .line 2387
    :cond_f7
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->haveHardWareKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 2388
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_cd

    .line 2395
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #rect:Landroid/graphics/Rect;
    :sswitch_105
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ReplaceBarClose()Z

    move-result v2

    if-eqz v2, :cond_10e

    move v2, v4

    goto/16 :goto_c

    .line 2396
    :cond_10e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v2

    if-eqz v2, :cond_121

    .line 2397
    const v2, 0x7f0801eb

    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 2398
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d2

    .line 2400
    :cond_121
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v2

    if-nez v2, :cond_d2

    .line 2401
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeCellEdit(Ljava/lang/Boolean;)V

    .line 2402
    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nOrientation:I

    if-ne v2, v5, :cond_d2

    .line 2403
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->moveCellInlineEdit()V

    goto :goto_d2

    .line 2407
    :sswitch_136
    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_142

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 2408
    :cond_142
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v2

    if-nez v2, :cond_14b

    .line 2411
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 2412
    :cond_14b
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v5, 0x4

    invoke-virtual {v2, v5, p2, p3, v4}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_d2

    .line 2416
    :sswitch_152
    check-cast p6, Landroid/view/KeyEvent;

    .end local p6
    invoke-virtual {p0, p2, p6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->sheetEditViewKeyProc(ILandroid/view/KeyEvent;)I

    move-result v2

    goto/16 :goto_c

    .line 2352
    :sswitch_data_15a
    .sparse-switch
        0x1 -> :sswitch_105
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_136
        0x5 -> :sswitch_75
        0xc -> :sswitch_152
    .end sparse-switch
.end method

.method protected ChangeViewMode(I)V
    .registers 5
    .parameter "EV_VIEW_MODE"

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1001
    if-nez p1, :cond_28

    .line 1002
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 1003
    iput v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    .line 1007
    :goto_b
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ChangeViewMode(I)V

    .line 1009
    if-ne p1, v0, :cond_2c

    .line 1010
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTabScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeSheetList()V

    .line 1024
    :goto_27
    return-void

    .line 1005
    :cond_28
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    goto :goto_b

    .line 1019
    :cond_2c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTabScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_27
.end method

.method IsCellSelected()Z
    .registers 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 760
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method IsEditInFieldMode()Z
    .registers 2

    .prologue
    .line 808
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method IsEditViewMode()Z
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method IsEmptyCell()Z
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 765
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method IsHiddenCol()Z
    .registers 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    .line 775
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method IsHiddenRow()Z
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    .line 770
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method IsMergeCells()Z
    .registers 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    .line 733
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method IsPartCols()Z
    .registers 3

    .prologue
    .line 794
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 795
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method IsPartRows()Z
    .registers 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 790
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method IsProtectSheet()Z
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_INFO;->bProtectSheet:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 800
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method IsSelectionFunctionMode()Z
    .registers 2

    .prologue
    .line 812
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method IsSheetEditMode()Z
    .registers 2

    .prologue
    .line 804
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method IsSingleCell()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 745
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 755
    :cond_b
    :goto_b
    return v0

    .line 746
    :cond_c
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v3, v3, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_2c

    .line 747
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v3, v3, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_2c

    move v0, v1

    .line 748
    goto :goto_b

    .line 750
    :cond_2c
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v3, v3, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    if-ne v2, v3, :cond_b

    .line 751
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v3, v3, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    if-ne v2, v3, :cond_b

    .line 752
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v3, v3, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    if-ne v2, v3, :cond_b

    .line 753
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v3, v3, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    if-ne v2, v3, :cond_b

    move v0, v1

    .line 754
    goto :goto_b
.end method

.method IsSingleMergeCell()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 737
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsMergeCells()Z

    move-result v1

    if-nez v1, :cond_8

    .line 741
    :cond_7
    :goto_7
    return v0

    .line 738
    :cond_8
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_7

    .line 739
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_7

    .line 740
    const/4 v0, 0x1

    goto :goto_7
.end method

.method IsWholeCols()Z
    .registers 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v0, v1

    const v1, 0xfffff

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    .line 785
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method IsWholeRows()Z
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3fff

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    .line 780
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected NewDocumentMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTabScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setVisibility(I)V

    .line 997
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->NewDocumentMode()V

    .line 998
    return-void
.end method

.method public OnDecimalDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 3585
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    .line 3586
    return-void
.end method

.method public OnDrawBitmap(II)V
    .registers 11
    .parameter "nCallId"
    .parameter "bShowAutomap"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1162
    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-eqz v3, :cond_56

    .line 1163
    const/16 v3, 0x3c

    if-ne p1, v3, :cond_2f

    .line 1164
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1165
    .local v2, totalNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-lt v1, v2, :cond_33

    .line 1170
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCurrentSheetIndex()I

    move-result v0

    .line 1171
    .local v0, currentIndex:I
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1172
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1174
    .end local v0           #currentIndex:I
    .end local v1           #i:I
    .end local v2           #totalNum:I
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnDrawBitmap(II)V

    .line 1312
    :goto_32
    return-void

    .line 1166
    .restart local v1       #i:I
    .restart local v2       #totalNum:I
    :cond_33
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    .line 1167
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    .line 1168
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1165
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1177
    .end local v1           #i:I
    .end local v2           #totalNum:I
    :cond_56
    sparse-switch p1, :sswitch_data_1a8

    .line 1311
    :cond_59
    :goto_59
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnDrawBitmap(II)V

    goto :goto_32

    .line 1180
    :sswitch_5d
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1181
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 1182
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 1183
    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 1184
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    goto :goto_59

    .line 1187
    :sswitch_7e
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1188
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 1189
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 1190
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    goto :goto_59

    .line 1193
    :sswitch_9c
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1194
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 1195
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 1196
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    goto :goto_59

    .line 1199
    :sswitch_ba
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1200
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    goto :goto_59

    .line 1210
    :sswitch_c6
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    goto :goto_59

    .line 1214
    :sswitch_cf
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1215
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    goto/16 :goto_59

    .line 1220
    :sswitch_e1
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1221
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EV;->getSheetInfo()Lcom/infraware/office/evengine/EV$SHEET_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 1222
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v5}, Lcom/infraware/office/evengine/EvInterface;->IGetCurrentSheetIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 1223
    const/16 v3, 0x308

    if-ne p1, v3, :cond_119

    .line 1224
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v3

    if-nez v3, :cond_119

    .line 1225
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 1226
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3, v6}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 1227
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 1230
    :cond_119
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    goto/16 :goto_59

    .line 1238
    :sswitch_120
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1239
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 1240
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    goto/16 :goto_59

    .line 1268
    :sswitch_13a
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1269
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 1270
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 1271
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    goto/16 :goto_59

    .line 1287
    :sswitch_159
    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 1288
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    .line 1289
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 1290
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 1291
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EV;->getSheetInfo()Lcom/infraware/office/evengine/EV$SHEET_INFO;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 1292
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v5}, Lcom/infraware/office/evengine/EvInterface;->IGetCurrentSheetIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 1293
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v3

    if-nez v3, :cond_196

    .line 1294
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 1295
    :cond_196
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    goto/16 :goto_59

    .line 1298
    :sswitch_19d
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 1308
    :sswitch_1a2
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->moveCellInlineEdit()V

    goto/16 :goto_59

    .line 1177
    nop

    :sswitch_data_1a8
    .sparse-switch
        0x2 -> :sswitch_159
        0x5 -> :sswitch_159
        0x6 -> :sswitch_159
        0x7 -> :sswitch_159
        0x8 -> :sswitch_159
        0x9 -> :sswitch_159
        0xa -> :sswitch_159
        0xb -> :sswitch_159
        0xc -> :sswitch_1a2
        0xd -> :sswitch_1a2
        0xe -> :sswitch_1a2
        0xf -> :sswitch_1a2
        0x10 -> :sswitch_1a2
        0x11 -> :sswitch_1a2
        0x12 -> :sswitch_1a2
        0x13 -> :sswitch_1a2
        0x14 -> :sswitch_1a2
        0x21 -> :sswitch_5d
        0x2c -> :sswitch_19d
        0x2d -> :sswitch_159
        0x100 -> :sswitch_159
        0x105 -> :sswitch_159
        0x106 -> :sswitch_5d
        0x107 -> :sswitch_159
        0x108 -> :sswitch_159
        0x109 -> :sswitch_c6
        0x10a -> :sswitch_c6
        0x10b -> :sswitch_c6
        0x10c -> :sswitch_c6
        0x10d -> :sswitch_c6
        0x10e -> :sswitch_c6
        0x10f -> :sswitch_c6
        0x110 -> :sswitch_120
        0x111 -> :sswitch_120
        0x112 -> :sswitch_120
        0x113 -> :sswitch_13a
        0x114 -> :sswitch_13a
        0x115 -> :sswitch_13a
        0x116 -> :sswitch_13a
        0x117 -> :sswitch_13a
        0x118 -> :sswitch_13a
        0x119 -> :sswitch_13a
        0x11a -> :sswitch_13a
        0x11b -> :sswitch_13a
        0x11c -> :sswitch_9c
        0x11d -> :sswitch_c6
        0x11e -> :sswitch_13a
        0x11f -> :sswitch_13a
        0x120 -> :sswitch_13a
        0x121 -> :sswitch_13a
        0x12b -> :sswitch_13a
        0x300 -> :sswitch_120
        0x301 -> :sswitch_120
        0x302 -> :sswitch_13a
        0x303 -> :sswitch_ba
        0x304 -> :sswitch_120
        0x305 -> :sswitch_159
        0x306 -> :sswitch_e1
        0x307 -> :sswitch_e1
        0x308 -> :sswitch_e1
        0x309 -> :sswitch_13a
        0x30a -> :sswitch_13a
        0x30b -> :sswitch_13a
        0x30c -> :sswitch_13a
        0x30d -> :sswitch_13a
        0x30e -> :sswitch_cf
        0x30f -> :sswitch_cf
        0x310 -> :sswitch_13a
        0x311 -> :sswitch_13a
        0x312 -> :sswitch_13a
        0x313 -> :sswitch_13a
        0x315 -> :sswitch_7e
        0x316 -> :sswitch_13a
        0x317 -> :sswitch_13a
    .end sparse-switch
.end method

.method public OnEVSheetFuction(III)V
    .registers 13
    .parameter "eSheetFormatType"
    .parameter "nParam1"
    .parameter "nParam2"

    .prologue
    const/4 v3, 0x0

    .line 928
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 929
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 930
    :cond_12
    packed-switch p1, :pswitch_data_bc

    .line 980
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 933
    :pswitch_16
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p2, p3}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetAlignment(II)V

    goto :goto_15

    .line 936
    :pswitch_1c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    if-ltz v0, :cond_15

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_15

    .line 937
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 938
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v3, v3, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v4, v4, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v5, v5, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    .line 939
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v6, v6, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v7, v7, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v8, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    .line 937
    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISheetFormat(IIIIIIII)V

    goto :goto_15

    .line 942
    :pswitch_50
    if-ltz p2, :cond_15

    const/4 v0, 0x4

    if-gt p2, v0, :cond_15

    .line 943
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p2}, Lcom/infraware/office/evengine/EvInterface;->ISheetFunction(I)V

    goto :goto_15

    .line 946
    :pswitch_5b
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetRecalculate()V

    goto :goto_15

    .line 949
    :pswitch_61
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x0

    move v1, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    goto :goto_15

    .line 952
    :pswitch_6c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetFixFrame()V

    goto :goto_15

    .line 955
    :pswitch_72
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p2, p3, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertRows(III)V

    goto :goto_15

    .line 959
    :pswitch_78
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p2, p3, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetShowHideRowCol(III)V

    goto :goto_15

    .line 962
    :pswitch_7e
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetProtection()V

    goto :goto_15

    .line 965
    :pswitch_84
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p2, p3, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertColumns(III)V

    goto :goto_15

    .line 968
    :pswitch_8a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3, p2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetRowColSize(III)V

    goto :goto_15

    .line 971
    :pswitch_90
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetRowColSize(III)V

    goto/16 :goto_15

    .line 974
    :pswitch_98
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsMergeCells()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEmptyCell()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetCellType()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_b5

    .line 975
    :cond_ae
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetMerge()V

    goto/16 :goto_15

    .line 977
    :cond_b5
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto/16 :goto_15

    .line 930
    :pswitch_data_bc
    .packed-switch 0x300
        :pswitch_16
        :pswitch_16
        :pswitch_1c
        :pswitch_50
        :pswitch_5b
        :pswitch_61
        :pswitch_6c
        :pswitch_15
        :pswitch_7e
        :pswitch_15
        :pswitch_72
        :pswitch_84
        :pswitch_78
        :pswitch_78
        :pswitch_8a
        :pswitch_90
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_98
    .end packed-switch
.end method

.method public OnFindDialog()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 3609
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3610
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setVisibility(I)V

    .line 3611
    return-void
.end method

.method public OnFormatAlignment()V
    .registers 3

    .prologue
    .line 857
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 858
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 859
    return-void
.end method

.method public OnFormatHeight()V
    .registers 3

    .prologue
    .line 863
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->wRowHeight:I

    if-lez v0, :cond_34

    .line 864
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->wRowHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 868
    :goto_10
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    .line 870
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_33

    .line 871
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 873
    :cond_33
    return-void

    .line 866
    :cond_34
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    goto :goto_10
.end method

.method public OnFormatWidth()V
    .registers 3

    .prologue
    .line 877
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->wColWidth:I

    if-lez v0, :cond_34

    .line 878
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->wColWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 882
    :goto_10
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    .line 884
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_33

    .line 885
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 886
    :cond_33
    return-void

    .line 880
    :cond_34
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    goto :goto_10
.end method

.method public OnGetFormulaFieldSelection()[I
    .registers 5

    .prologue
    .line 1430
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 1433
    :goto_5
    return-object v0

    .line 1431
    :cond_6
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    aput v2, v0, v1

    .line 1432
    .local v0, cellPostion:[I
    const-string v1, "SheetEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=== mStartSelPosition [mStartSelPosition]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[mEndSelPostion]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public OnGetFormulaFieldText()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1413
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-eqz v1, :cond_6

    .line 1417
    :cond_5
    :goto_5
    return-object v0

    .line 1414
    :cond_6
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1415
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    .line 1416
    :cond_18
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    goto :goto_5
.end method

.method public OnGetSheetScrollIInfo()[I
    .registers 2

    .prologue
    .line 1449
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnHidAction(I)V
    .registers 3
    .parameter "eev_hid_action"

    .prologue
    .line 1396
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 1398
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bNeedRecalc:Z

    if-eqz v0, :cond_f

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_bNeedRecalc:Z

    .line 1401
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetRecalculate()V

    .line 1404
    :cond_f
    return-void
.end method

.method public OnInsertChart()V
    .registers 3

    .prologue
    .line 841
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 842
    .local v0, chartIntent:Landroid/content/Intent;
    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 843
    return-void
.end method

.method public OnInsertDeleteCell(I)V
    .registers 5
    .parameter "insert"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 827
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeCols()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 828
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertColumns(III)V

    .line 837
    :cond_d
    :goto_d
    return-void

    .line 829
    :cond_e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeRows()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 830
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertRows(III)V

    goto :goto_d

    .line 832
    :cond_1a
    if-nez p1, :cond_22

    .line 833
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_d

    .line 834
    :cond_22
    if-ne p1, v1, :cond_d

    .line 835
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto :goto_d
.end method

.method public OnInsertFunction()V
    .registers 2

    .prologue
    .line 848
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    .line 853
    return-void
.end method

.method public OnLoadComplete(Ljava/lang/String;)V
    .registers 4
    .parameter "strWritePassword"

    .prologue
    .line 673
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 674
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTabScroll:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 675
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeSheetList()V

    .line 677
    :cond_e
    return-void
.end method

.method public OnNegativeNumbersDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 3588
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    .line 3589
    return-void
.end method

.method public OnSearchMode(IIII)V
    .registers 15
    .parameter "nResult"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    const/4 v1, 0x1

    .line 3510
    const-string v0, "SheetEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnSearchMode nReuslt = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    packed-switch p1, :pswitch_data_82

    .line 3520
    invoke-super {p0, p1, p2, p3, p4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSearchMode(IIII)V

    .line 3522
    const/4 v0, 0x3

    if-eq p1, v0, :cond_48

    .line 3523
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_48

    .line 3525
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 3526
    .local v8, totalNum:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_29
    if-lt v7, v8, :cond_5b

    .line 3531
    add-int/lit8 v6, p2, -0x1

    .line 3532
    .local v6, curSheetTab:I
    if-lez v8, :cond_48

    if-ltz v6, :cond_48

    .line 3534
    :try_start_31
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3535
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_48} :catch_7f

    .line 3543
    .end local v6           #curSheetTab:I
    .end local v7           #i:I
    .end local v8           #totalNum:I
    :cond_48
    :goto_48
    return-void

    .line 3514
    :pswitch_49
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    sget-object v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->searchResultCode:Ljava/lang/String;

    const/16 v3, 0x33

    sget-object v4, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->searchContent:Ljava/lang/String;

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_48

    .line 3527
    .restart local v7       #i:I
    .restart local v8       #totalNum:I
    :cond_5b
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 3528
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3529
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 3526
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 3537
    .restart local v6       #curSheetTab:I
    :catch_7f
    move-exception v0

    goto :goto_48

    .line 3511
    nop

    :pswitch_data_82
    .packed-switch 0x33
        :pswitch_49
    .end packed-switch
.end method

.method public OnSetFormulaFieldSelection(II)V
    .registers 4
    .parameter "nStartPos"
    .parameter "nEndPos"

    .prologue
    .line 1437
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-eqz v0, :cond_5

    .line 1446
    :cond_4
    :goto_4
    return-void

    .line 1438
    :cond_5
    if-gez p1, :cond_8

    const/4 p1, 0x0

    .line 1439
    :cond_8
    if-gez p2, :cond_b

    const/4 p2, 0x0

    .line 1440
    :cond_b
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    .line 1441
    iput p2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    .line 1442
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1443
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    goto :goto_4

    .line 1444
    :cond_23
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1445
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    goto :goto_4
.end method

.method public OnSetFormulaFieldText(Ljava/lang/String;I)V
    .registers 5
    .parameter "str"
    .parameter "bOnlyFormulaField"

    .prologue
    .line 1421
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    if-nez v0, :cond_9

    .line 1427
    :cond_8
    :goto_8
    return-void

    .line 1422
    :cond_9
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    .line 1423
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 1424
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1426
    :cond_17
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public OnSetNameBoxText(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 1410
    return-void
.end method

.method public OnSetSheetScrollIInfo(IIIII)V
    .registers 6
    .parameter "nValue"
    .parameter "nMin"
    .parameter "nMax"
    .parameter "nSize"
    .parameter "bHorizontal"

    .prologue
    .line 1453
    return-void
.end method

.method public OnSheetChart(I)V
    .registers 2
    .parameter "EV_SHEET_EDITOR_STATUS"

    .prologue
    .line 1407
    return-void
.end method

.method public OnSheetEdit(II)V
    .registers 4
    .parameter "EEV_SHEET_EDIT"
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 1132
    packed-switch p1, :pswitch_data_c

    .line 1141
    :cond_3
    :goto_3
    return-void

    .line 1134
    :pswitch_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 1135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setSheetTitle(I)V

    goto :goto_3

    .line 1132
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public OnSheetFocus()V
    .registers 9

    .prologue
    const/16 v7, 0x10f

    const/16 v6, 0x10e

    const/16 v3, 0x10d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1315
    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-eqz v2, :cond_d

    .line 1367
    :goto_c
    return-void

    .line 1316
    :cond_d
    sget-boolean v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mIsLongPress:Z

    if-eqz v2, :cond_14

    .line 1317
    sput-boolean v4, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mIsLongPress:Z

    goto :goto_c

    .line 1320
    :cond_14
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wHorizontalAlignment:I

    .line 1321
    .local v0, nHAlign:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wVerticalAlignment:I

    .line 1323
    .local v1, nVAlign:I
    packed-switch v0, :pswitch_data_ac

    .line 1350
    :cond_1f
    :goto_1f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeCellEdit(Ljava/lang/Boolean;)V

    .line 1351
    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8a

    .line 1352
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    goto :goto_c

    .line 1325
    :pswitch_30
    if-ne v1, v3, :cond_3a

    .line 1326
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1327
    :cond_3a
    if-ne v1, v6, :cond_44

    .line 1328
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1329
    :cond_44
    if-ne v1, v7, :cond_1f

    .line 1330
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1333
    :pswitch_4e
    if-ne v1, v3, :cond_58

    .line 1334
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1335
    :cond_58
    if-ne v1, v6, :cond_62

    .line 1336
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1337
    :cond_62
    if-ne v1, v7, :cond_1f

    .line 1338
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1341
    :pswitch_6c
    if-ne v1, v3, :cond_76

    .line 1342
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1343
    :cond_76
    if-ne v1, v6, :cond_80

    .line 1344
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1345
    :cond_80
    if-ne v1, v7, :cond_1f

    .line 1346
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setGravity(I)V

    goto :goto_1f

    .line 1355
    :cond_8a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v2

    if-nez v2, :cond_94

    .line 1356
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 1358
    :cond_94
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setSingleLine(Z)V

    .line 1359
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2, v5}, Lcom/infraware/polarisoffice/common/ExEditText;->setLines(I)V

    .line 1361
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxLines(I)V

    .line 1364
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 1365
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->moveCellInlineEdit()V

    goto/16 :goto_c

    .line 1323
    :pswitch_data_ac
    .packed-switch 0x109
        :pswitch_30
        :pswitch_4e
        :pswitch_6c
    .end packed-switch
.end method

.method public OnSheetFunction(III)V
    .registers 6
    .parameter "SHEET_EDITOR_STATUS"
    .parameter "EEV_SHEET_FUNCTION_ERROR"
    .parameter "EEV_SHEET_FUNCTION_ERROR_CODE"

    .prologue
    const/16 v0, 0x10

    .line 1116
    if-ne p1, v0, :cond_18

    .line 1117
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 1118
    if-lez p2, :cond_17

    if-lez p3, :cond_17

    .line 1119
    const v0, 0x7f08021d

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 1120
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1129
    :cond_17
    :goto_17
    return-void

    .line 1123
    :cond_18
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1124
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    goto :goto_17

    .line 1128
    :cond_2c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    goto :goto_17
.end method

.method public OnSheetInputField(II)V
    .registers 7
    .parameter "EEV_SHEET_EDITOR_RESULT"
    .parameter "EV_SHEET_INPUTFIELD_RESULT"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1370
    if-ne p1, v1, :cond_e

    .line 1371
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v2, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setSelection(II)V

    .line 1372
    packed-switch p2, :pswitch_data_32

    .line 1393
    :cond_e
    :goto_e
    return-void

    .line 1374
    :pswitch_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1375
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    goto :goto_e

    .line 1383
    :pswitch_18
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1384
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1385
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 1389
    :goto_26
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetRecalculate()V

    goto :goto_e

    .line 1388
    :cond_2c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    goto :goto_26

    .line 1372
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_18
        :pswitch_f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public OnSheetProtection(I)V
    .registers 4
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 1144
    sparse-switch p1, :sswitch_data_12

    .line 1156
    :goto_3
    :sswitch_3
    return-void

    .line 1150
    :sswitch_4
    const v0, 0x7f0801e6

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 1151
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1144
    nop

    :sswitch_data_12
    .sparse-switch
        -0x5 -> :sswitch_4
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method public OnSheetSort(I)V
    .registers 2
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 1159
    return-void
.end method

.method protected OnShowDialog(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 2615
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    if-ne v0, p1, :cond_c

    .line 2616
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    .line 2620
    :goto_b
    return-void

    .line 2619
    :cond_c
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    goto :goto_b
.end method

.method public OnSymbolDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 3591
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    .line 3592
    return-void
.end method

.method public OnToolbar_Alignment(I)V
    .registers 5
    .parameter "toolbarBtnId"

    .prologue
    .line 1672
    packed-switch p1, :pswitch_data_36

    .line 1713
    :goto_3
    return-void

    .line 1674
    :pswitch_4
    const/16 v0, 0x109

    .line 1675
    .local v0, nHAlign:I
    const/16 v1, 0x10d

    .line 1712
    .local v1, nVAlign:I
    :goto_8
    const/16 v2, 0x301

    invoke-virtual {p0, v2, v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_3

    .line 1678
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_e
    const/16 v0, 0x10a

    .line 1679
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10d

    .line 1680
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1682
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_13
    const/16 v0, 0x10b

    .line 1683
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10d

    .line 1684
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1686
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_18
    const/16 v0, 0x109

    .line 1687
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10e

    .line 1688
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1690
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_1d
    const/16 v0, 0x10a

    .line 1691
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10e

    .line 1692
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1694
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_22
    const/16 v0, 0x10b

    .line 1695
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10e

    .line 1696
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1698
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_27
    const/16 v0, 0x109

    .line 1699
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10f

    .line 1700
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1702
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_2c
    const/16 v0, 0x10a

    .line 1703
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10f

    .line 1704
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1706
    .end local v0           #nHAlign:I
    .end local v1           #nVAlign:I
    :pswitch_31
    const/16 v0, 0x10b

    .line 1707
    .restart local v0       #nHAlign:I
    const/16 v1, 0x10f

    .line 1708
    .restart local v1       #nVAlign:I
    goto :goto_8

    .line 1672
    :pswitch_data_36
    .packed-switch 0x7f0c02c0
        :pswitch_4
        :pswitch_e
        :pswitch_13
        :pswitch_18
        :pswitch_1d
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_31
    .end packed-switch
.end method

.method public OnToolbar_BackgroundColor(III)V
    .registers 5
    .parameter "backColor"
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    .line 1910
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1911
    invoke-virtual {p0, p2, p3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnMoreColors(II)V

    .line 1916
    :goto_6
    return-void

    .line 1914
    :cond_7
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetColor(I)V

    goto :goto_6
.end method

.method public OnToolbar_Border(I)V
    .registers 12
    .parameter "toolbarBtnId"

    .prologue
    .line 1810
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v3, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    .line 1811
    .local v3, nNewBorder:I
    shr-int/lit8 v8, v3, 0x14

    and-int/lit8 v2, v8, 0xf

    .line 1812
    .local v2, nLBorder:I
    shr-int/lit8 v8, v3, 0x10

    and-int/lit8 v6, v8, 0xf

    .line 1813
    .local v6, nTBorder:I
    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v4, v8, 0xf

    .line 1814
    .local v4, nRBorder:I
    shr-int/lit8 v8, v3, 0x8

    and-int/lit8 v0, v8, 0xf

    .line 1815
    .local v0, nBBorder:I
    shr-int/lit8 v8, v3, 0x4

    and-int/lit8 v7, v8, 0xf

    .line 1816
    .local v7, nVBorder:I
    and-int/lit8 v1, v3, 0xf

    .line 1817
    .local v1, nHBorder:I
    const/4 v5, 0x1

    .line 1818
    .local v5, nStyle:I
    packed-switch p1, :pswitch_data_64

    .line 1844
    :goto_1e
    and-int/lit8 v8, v2, 0xf

    shl-int/lit8 v8, v8, 0x14

    and-int/lit8 v9, v6, 0xf

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    and-int/lit8 v9, v4, 0xf

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v8, v9

    and-int/lit8 v9, v0, 0xf

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    and-int/lit8 v9, v7, 0xf

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    and-int/lit8 v9, v1, 0xf

    or-int v3, v8, v9

    .line 1845
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput v3, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    .line 1846
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    invoke-virtual {v8, v9}, Lcom/infraware/office/evengine/EvInterface;->ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1847
    return-void

    .line 1820
    :pswitch_46
    const/4 v1, 0x0

    move v7, v1

    move v0, v1

    move v4, v1

    move v6, v1

    move v2, v1

    .line 1821
    goto :goto_1e

    .line 1823
    :pswitch_4d
    move v2, v5

    .line 1824
    goto :goto_1e

    .line 1826
    :pswitch_4f
    move v6, v5

    .line 1827
    goto :goto_1e

    .line 1829
    :pswitch_51
    move v4, v5

    .line 1830
    goto :goto_1e

    .line 1832
    :pswitch_53
    move v0, v5

    .line 1833
    goto :goto_1e

    .line 1835
    :pswitch_55
    move v1, v5

    move v7, v5

    .line 1836
    goto :goto_1e

    .line 1838
    :pswitch_58
    move v0, v5

    move v4, v5

    move v6, v5

    move v2, v5

    .line 1839
    goto :goto_1e

    .line 1841
    :pswitch_5d
    move v1, v5

    move v7, v5

    move v0, v5

    move v4, v5

    move v6, v5

    move v2, v5

    goto :goto_1e

    .line 1818
    :pswitch_data_64
    .packed-switch 0x7f0c0231
        :pswitch_46
        :pswitch_4d
        :pswitch_51
        :pswitch_4f
        :pswitch_53
        :pswitch_55
        :pswitch_58
        :pswitch_5d
    .end packed-switch
.end method

.method public OnToolbar_Border_Style(I)V
    .registers 13
    .parameter "toolbarBtnId"

    .prologue
    .line 1850
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v8, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    if-nez v8, :cond_7

    .line 1887
    :goto_6
    return-void

    .line 1851
    :cond_7
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v3, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    .line 1852
    .local v3, nOldBorder:I
    shr-int/lit8 v8, v3, 0x14

    and-int/lit8 v2, v8, 0xf

    .line 1853
    .local v2, nLBorder:I
    shr-int/lit8 v8, v3, 0x10

    and-int/lit8 v6, v8, 0xf

    .line 1854
    .local v6, nTBorder:I
    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v4, v8, 0xf

    .line 1855
    .local v4, nRBorder:I
    shr-int/lit8 v8, v3, 0x8

    and-int/lit8 v0, v8, 0xf

    .line 1856
    .local v0, nBBorder:I
    shr-int/lit8 v8, v3, 0x4

    and-int/lit8 v7, v8, 0xf

    .line 1857
    .local v7, nVBorder:I
    and-int/lit8 v1, v3, 0xf

    .line 1858
    .local v1, nHBorder:I
    const/4 v5, 0x0

    .line 1859
    .local v5, nStyle:I
    packed-switch p1, :pswitch_data_64

    goto :goto_6

    .line 1861
    :pswitch_26
    const/4 v5, 0x0

    .line 1872
    :goto_27
    if-eqz v2, :cond_2a

    .line 1873
    move v2, v5

    .line 1874
    :cond_2a
    if-eqz v6, :cond_2d

    .line 1875
    move v6, v5

    .line 1876
    :cond_2d
    if-eqz v4, :cond_30

    .line 1877
    move v4, v5

    .line 1878
    :cond_30
    if-eqz v0, :cond_33

    .line 1879
    move v0, v5

    .line 1880
    :cond_33
    if-eqz v7, :cond_36

    .line 1881
    move v7, v5

    .line 1882
    :cond_36
    if-eqz v1, :cond_39

    .line 1883
    move v1, v5

    .line 1885
    :cond_39
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    and-int/lit8 v9, v2, 0xf

    shl-int/lit8 v9, v9, 0x14

    and-int/lit8 v10, v6, 0xf

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    and-int/lit8 v10, v4, 0xf

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0xf

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    and-int/lit8 v10, v7, 0xf

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    and-int/lit8 v10, v1, 0xf

    or-int/2addr v9, v10

    iput v9, v8, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    .line 1886
    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    invoke-virtual {v8, v9}, Lcom/infraware/office/evengine/EvInterface;->ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    goto :goto_6

    .line 1864
    :pswitch_60
    const/4 v5, 0x1

    .line 1865
    goto :goto_27

    .line 1867
    :pswitch_62
    const/4 v5, 0x2

    .line 1868
    goto :goto_27

    .line 1859
    :pswitch_data_64
    .packed-switch 0x7f0c02ca
        :pswitch_26
        :pswitch_60
        :pswitch_62
    .end packed-switch
.end method

.method public OnToolbar_Cell(I)V
    .registers 6
    .parameter "toolbarBtnId"

    .prologue
    const/16 v3, 0x30b

    const/16 v2, 0x30a

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1890
    packed-switch p1, :pswitch_data_20

    .line 1907
    :goto_9
    return-void

    .line 1892
    :pswitch_a
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    goto :goto_9

    .line 1895
    :pswitch_10
    invoke-virtual {p0, v3, v0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_9

    .line 1898
    :pswitch_14
    invoke-virtual {p0, v2, v0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_9

    .line 1901
    :pswitch_18
    invoke-virtual {p0, v3, v1, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_9

    .line 1904
    :pswitch_1c
    invoke-virtual {p0, v2, v1, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_9

    .line 1890
    :pswitch_data_20
    .packed-switch 0x7f0c02ce
        :pswitch_a
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public OnToolbar_Chart(I)V
    .registers 11
    .parameter "toolbarBtnId"

    .prologue
    const/4 v4, 0x0

    .line 1789
    const/4 v1, -0x1

    .line 1790
    .local v1, nType:I
    packed-switch p1, :pswitch_data_1e

    .line 1802
    const/4 v1, 0x3

    .line 1805
    :goto_6
    const/4 v0, -0x1

    if-eq v1, v0, :cond_17

    .line 1806
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1807
    :cond_17
    return-void

    .line 1792
    :pswitch_18
    const/4 v1, 0x0

    .line 1793
    goto :goto_6

    .line 1795
    :pswitch_1a
    const/4 v1, 0x1

    .line 1796
    goto :goto_6

    .line 1798
    :pswitch_1c
    const/4 v1, 0x2

    .line 1799
    goto :goto_6

    .line 1790
    :pswitch_data_1e
    .packed-switch 0x7f0c0261
        :pswitch_18
        :pswitch_1a
        :pswitch_1c
    .end packed-switch
.end method

.method public OnToolbar_CmdAlignmentUI()I
    .registers 7

    .prologue
    const/16 v5, 0x10f

    const/16 v4, 0x10e

    const/16 v3, 0x10d

    .line 1599
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wHorizontalAlignment:I

    .line 1600
    .local v0, nHAlign:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wVerticalAlignment:I

    .line 1602
    .local v1, nVAlign:I
    packed-switch v0, :pswitch_data_4a

    .line 1628
    :cond_11
    const/4 v2, -0x1

    :goto_12
    return v2

    .line 1604
    :pswitch_13
    if-ne v1, v3, :cond_19

    .line 1605
    const v2, 0x7f0c02c0

    goto :goto_12

    .line 1606
    :cond_19
    if-ne v1, v4, :cond_1f

    .line 1607
    const v2, 0x7f0c02c3

    goto :goto_12

    .line 1608
    :cond_1f
    if-ne v1, v5, :cond_11

    .line 1609
    const v2, 0x7f0c02c6

    goto :goto_12

    .line 1612
    :pswitch_25
    if-ne v1, v3, :cond_2b

    .line 1613
    const v2, 0x7f0c02c1

    goto :goto_12

    .line 1614
    :cond_2b
    if-ne v1, v4, :cond_31

    .line 1615
    const v2, 0x7f0c02c4

    goto :goto_12

    .line 1616
    :cond_31
    if-ne v1, v5, :cond_11

    .line 1617
    const v2, 0x7f0c02c7

    goto :goto_12

    .line 1620
    :pswitch_37
    if-ne v1, v3, :cond_3d

    .line 1621
    const v2, 0x7f0c02c2

    goto :goto_12

    .line 1622
    :cond_3d
    if-ne v1, v4, :cond_43

    .line 1623
    const v2, 0x7f0c02c5

    goto :goto_12

    .line 1624
    :cond_43
    if-ne v1, v5, :cond_11

    .line 1625
    const v2, 0x7f0c02c8

    goto :goto_12

    .line 1602
    nop

    :pswitch_data_4a
    .packed-switch 0x109
        :pswitch_13
        :pswitch_25
        :pswitch_37
    .end packed-switch
.end method

.method public OnToolbar_CmdBackgroundColorUI()I
    .registers 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFillColor:I

    return v0
.end method

.method public OnToolbar_CmdEditUI(Ljava/lang/Boolean;)[I
    .registers 11
    .parameter "bUndoRedo"

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 1529
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1530
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 1531
    .local v0, btnState:[I
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvClipBoardHelper;->hasText()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1532
    aput v6, v0, v3

    .line 1533
    :cond_18
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1534
    aput v6, v0, v8

    aput v6, v0, v7

    aput v6, v0, v3

    aput v6, v0, v4

    :cond_26
    :goto_26
    move-object v1, v0

    .line 1549
    .end local v0           #btnState:[I
    .local v1, btnState:[I
    :goto_27
    return-object v1

    .line 1536
    .end local v1           #btnState:[I
    .restart local v0       #btnState:[I
    :cond_28
    iget-wide v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    .line 1537
    aput v6, v0, v7

    .line 1538
    :cond_35
    iget-wide v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    .line 1539
    aput v6, v0, v8

    goto :goto_26

    .line 1544
    .end local v0           #btnState:[I
    :cond_43
    new-array v0, v7, [I

    .line 1545
    .restart local v0       #btnState:[I
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mClipBoard:Lcom/infraware/office/evengine/EvClipBoardHelper;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvClipBoardHelper;->hasText()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1546
    aput v6, v0, v3

    .line 1547
    :cond_4f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1548
    aput v6, v0, v3

    aput v6, v0, v4

    :cond_59
    move-object v1, v0

    .line 1549
    .end local v0           #btnState:[I
    .restart local v1       #btnState:[I
    goto :goto_27
.end method

.method public OnToolbar_CmdFontColorUI()I
    .registers 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFontColor:I

    return v0
.end method

.method public OnToolbar_CmdFontSizeUI()I
    .registers 2

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->nFontSize:I

    packed-switch v0, :pswitch_data_20

    .line 1593
    :pswitch_7
    const v0, 0x7f0c028d

    :goto_a
    return v0

    .line 1583
    :pswitch_b
    const v0, 0x7f0c0288

    goto :goto_a

    .line 1585
    :pswitch_f
    const v0, 0x7f0c0289

    goto :goto_a

    .line 1587
    :pswitch_13
    const v0, 0x7f0c028a

    goto :goto_a

    .line 1589
    :pswitch_17
    const v0, 0x7f0c028b

    goto :goto_a

    .line 1591
    :pswitch_1b
    const v0, 0x7f0c028c

    goto :goto_a

    .line 1581
    nop

    :pswitch_data_20
    .packed-switch 0x9
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_7
        :pswitch_1b
    .end packed-switch
.end method

.method public OnToolbar_CmdFontStyleUI()[I
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1517
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 1518
    .local v0, btnState:[I
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bBold:I

    if-lez v1, :cond_d

    .line 1519
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1520
    :cond_d
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bItalic:I

    if-lez v1, :cond_16

    .line 1521
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1522
    :cond_16
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bUnderLine:I

    if-lez v1, :cond_1e

    .line 1523
    aput v2, v0, v2

    .line 1524
    :cond_1e
    return-object v0
.end method

.method public OnToolbar_CmdSheetCellUI()[I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1650
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 1652
    .local v0, btnState:[I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeRows()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeCols()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1653
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1655
    :cond_13
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeRows()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1656
    aput v2, v0, v2

    .line 1658
    :cond_1b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeCols()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1659
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1661
    :cond_24
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeRows()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeCols()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1662
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 1664
    :cond_33
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeCols()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeRows()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1665
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 1667
    :cond_42
    return-object v0
.end method

.method public OnToolbar_CmdUndoRedoUI()[I
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1555
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1557
    .local v0, btnState:[I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1558
    aput v5, v0, v5

    aput v5, v0, v6

    .line 1566
    :cond_11
    :goto_11
    return-object v0

    .line 1560
    :cond_12
    iget-wide v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v3, 0x2

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-nez v1, :cond_1d

    .line 1561
    aput v5, v0, v6

    .line 1563
    :cond_1d
    iget-wide v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-nez v1, :cond_11

    .line 1564
    aput v5, v0, v5

    goto :goto_11
.end method

.method public OnToolbar_CmddecimalUI()[I
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1633
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1635
    .local v0, btnState:[I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_24

    .line 1636
    aput v3, v0, v3

    .line 1640
    :goto_15
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    if-lez v1, :cond_27

    .line 1641
    aput v3, v0, v4

    .line 1645
    :goto_23
    return-object v0

    .line 1638
    :cond_24
    aput v4, v0, v3

    goto :goto_15

    .line 1643
    :cond_27
    aput v4, v0, v4

    goto :goto_23
.end method

.method public OnToolbar_Decimal(I)V
    .registers 5
    .parameter "toolbarBtnId"

    .prologue
    const/4 v2, 0x0

    .line 1751
    packed-switch p1, :pswitch_data_2a

    .line 1761
    :goto_4
    const/16 v0, 0x302

    invoke-virtual {p0, v0, v2, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    .line 1762
    :cond_9
    return-void

    .line 1753
    :pswitch_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_9

    .line 1754
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    goto :goto_4

    .line 1757
    :pswitch_1b
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    if-lez v0, :cond_9

    .line 1758
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    goto :goto_4

    .line 1751
    :pswitch_data_2a
    .packed-switch 0x7f0c0266
        :pswitch_a
        :pswitch_1b
    .end packed-switch
.end method

.method public OnToolbar_FontSize(I)V
    .registers 12
    .parameter "toolbarBtnId"

    .prologue
    const/4 v4, 0x0

    .line 1457
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 1458
    .local v9, AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    const/4 v2, 0x0

    .line 1460
    .local v2, nFsize:I
    packed-switch p1, :pswitch_data_30

    .line 1480
    :goto_b
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    const/4 v3, 0x4

    iget v5, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFColor:I

    iget v6, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nBColor:I

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 1481
    :goto_18
    return-void

    .line 1462
    :pswitch_19
    const/16 v2, 0x9

    .line 1463
    goto :goto_b

    .line 1465
    :pswitch_1c
    const/16 v2, 0xa

    .line 1466
    goto :goto_b

    .line 1468
    :pswitch_1f
    const/16 v2, 0xb

    .line 1469
    goto :goto_b

    .line 1471
    :pswitch_22
    const/16 v2, 0xc

    .line 1472
    goto :goto_b

    .line 1474
    :pswitch_25
    const/16 v2, 0xe

    .line 1475
    goto :goto_b

    .line 1477
    :pswitch_28
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->nFontSize:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnFontSizeOthers(I)V

    goto :goto_18

    .line 1460
    :pswitch_data_30
    .packed-switch 0x7f0c0288
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public OnToolbar_FontStyle(I)V
    .registers 11
    .parameter "toolbarBtnId"

    .prologue
    const/4 v2, 0x0

    .line 1484
    const/4 v3, 0x0

    .line 1485
    .local v3, nMask:I
    const/4 v4, 0x0

    .line 1486
    .local v4, nFontAtt:I
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bBold:I

    if-lez v0, :cond_b

    or-int/lit16 v4, v4, 0x400

    .line 1487
    :cond_b
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bItalic:I

    if-lez v0, :cond_13

    or-int/lit16 v4, v4, 0x200

    .line 1488
    :cond_13
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bUnderLine:I

    if-lez v0, :cond_1b

    or-int/lit16 v4, v4, 0x100

    .line 1490
    :cond_1b
    packed-switch p1, :pswitch_data_4e

    .line 1513
    :goto_1e
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    const/4 v5, -0x1

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 1514
    return-void

    .line 1492
    :pswitch_29
    const/16 v3, 0x20

    .line 1493
    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_32

    .line 1494
    xor-int/lit16 v4, v4, 0x400

    goto :goto_1e

    .line 1496
    :cond_32
    or-int/lit16 v4, v4, 0x400

    .line 1497
    goto :goto_1e

    .line 1499
    :pswitch_35
    const/16 v3, 0x40

    .line 1500
    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_3e

    .line 1501
    xor-int/lit16 v4, v4, 0x200

    goto :goto_1e

    .line 1503
    :cond_3e
    or-int/lit16 v4, v4, 0x200

    .line 1504
    goto :goto_1e

    .line 1506
    :pswitch_41
    const/16 v3, 0x80

    .line 1507
    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_4a

    .line 1508
    xor-int/lit16 v4, v4, 0x100

    goto :goto_1e

    .line 1510
    :cond_4a
    or-int/lit16 v4, v4, 0x100

    goto :goto_1e

    .line 1490
    nop

    :pswitch_data_4e
    .packed-switch 0x7f0c028f
        :pswitch_29
        :pswitch_35
        :pswitch_41
    .end packed-switch
.end method

.method public OnToolbar_Form(I)V
    .registers 5
    .parameter "toolbarBtnId"

    .prologue
    const/4 v2, 0x0

    .line 1720
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 1721
    packed-switch p1, :pswitch_data_50

    .line 1748
    :goto_c
    return-void

    .line 1723
    :pswitch_d
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput v2, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 1724
    const/16 v1, 0x302

    invoke-virtual {p0, v1, v2, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_c

    .line 1727
    :pswitch_17
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 1728
    .local v0, decimalPlaces:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 1729
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    goto :goto_c

    .line 1732
    .end local v0           #decimalPlaces:I
    :pswitch_26
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 1733
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    goto :goto_c

    .line 1736
    :pswitch_35
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    goto :goto_c

    .line 1739
    :pswitch_3b
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    goto :goto_c

    .line 1742
    :pswitch_41
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;

    .line 1743
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    goto :goto_c

    .line 1721
    :pswitch_data_50
    .packed-switch 0x7f0c0293
        :pswitch_d
        :pswitch_17
        :pswitch_26
        :pswitch_35
        :pswitch_3b
        :pswitch_41
    .end packed-switch
.end method

.method public OnToolbar_Insert(I)V
    .registers 5
    .parameter "toolbarBtnId"

    .prologue
    .line 1765
    const/4 v0, -0x1

    .line 1766
    .local v0, nFucntionType:I
    packed-switch p1, :pswitch_data_16

    .line 1786
    :goto_4
    return-void

    .line 1768
    :pswitch_5
    const/4 v0, 0x0

    .line 1785
    :goto_6
    const/16 v1, 0x303

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_4

    .line 1771
    :pswitch_d
    const/4 v0, 0x1

    .line 1772
    goto :goto_6

    .line 1774
    :pswitch_f
    const/4 v0, 0x2

    .line 1775
    goto :goto_6

    .line 1777
    :pswitch_11
    const/4 v0, 0x3

    .line 1778
    goto :goto_6

    .line 1780
    :pswitch_13
    const/4 v0, 0x4

    .line 1781
    goto :goto_6

    .line 1766
    nop

    :pswitch_data_16
    .packed-switch 0x7f0c02d4
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public OnToolbar_Merge(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    const/4 v1, 0x0

    .line 1716
    const/16 v0, 0x317

    invoke-virtual {p0, v0, v1, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    .line 1717
    return-void
.end method

.method public OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 13
    .parameter "toolbarBtnId"
    .parameter "update"

    .prologue
    const/4 v9, 0x5

    const-wide/16 v3, 0x10

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1920
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    if-nez v1, :cond_18

    :cond_13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2015
    :cond_17
    :goto_17
    return-object v0

    .line 1922
    :cond_18
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1923
    .local v0, bEnable:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1924
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1925
    sparse-switch p1, :sswitch_data_168

    .line 2008
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeRows()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsWholeCols()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2009
    const/4 v1, 0x4

    if-ne p1, v1, :cond_51

    iget-wide v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v3, 0x2

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-nez v1, :cond_51

    iget-wide v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-nez v1, :cond_51

    .line 2010
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2011
    :cond_51
    if-ne p1, v9, :cond_17

    .line 2012
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_17

    .line 1929
    :sswitch_58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1930
    goto :goto_2c

    .line 1932
    :sswitch_5d
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v1

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2c

    .line 1933
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2c

    .line 1937
    :cond_6d
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditInFieldMode()Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v1

    if-nez v1, :cond_7f

    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_98

    .line 1938
    :cond_7f
    sparse-switch p1, :sswitch_data_17a

    goto :goto_2c

    .line 1943
    :sswitch_83
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v1

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2c

    .line 1944
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2c

    .line 1940
    :sswitch_93
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1941
    goto :goto_2c

    .line 1949
    :cond_98
    sparse-switch p1, :sswitch_data_184

    .line 2004
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2c

    .line 1960
    :sswitch_a4
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1961
    goto :goto_2c

    .line 1965
    :sswitch_ad
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1966
    goto/16 :goto_2c

    .line 1968
    :sswitch_b3
    iget-wide v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v3, 0x2

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-nez v1, :cond_cb

    iget-wide v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditStatus:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-nez v1, :cond_cb

    .line 1969
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2c

    .line 1971
    :cond_cb
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1972
    goto/16 :goto_2c

    .line 1974
    :sswitch_d1
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSingleCell()Z

    move-result v1

    if-nez v1, :cond_ec

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1975
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/16 v2, 0x31

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnChangeToolbarBtn(ILjava/lang/Boolean;)V

    .line 1976
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1978
    :cond_ec
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsMergeCells()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1979
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/16 v2, 0x31

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnChangeToolbarBtn(ILjava/lang/Boolean;)V

    .line 1980
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1982
    goto/16 :goto_2c

    .line 1984
    :sswitch_103
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    if-eq v1, v5, :cond_123

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_123

    .line 1985
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    if-eq v1, v9, :cond_123

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2c

    .line 1986
    :cond_123
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1987
    goto/16 :goto_2c

    .line 1989
    :sswitch_129
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSingleCell()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1990
    goto/16 :goto_2c

    .line 1992
    :sswitch_133
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEmptyCell()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1993
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1994
    goto/16 :goto_2c

    .line 1996
    :sswitch_145
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsCellSelected()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    if-eqz v1, :cond_2c

    .line 1997
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1998
    goto/16 :goto_2c

    .line 2000
    :sswitch_157
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v1

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2c

    .line 2001
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2002
    goto/16 :goto_2c

    .line 1925
    :sswitch_data_168
    .sparse-switch
        0x4 -> :sswitch_58
        0x5 -> :sswitch_58
        0x15 -> :sswitch_5d
        0x39 -> :sswitch_58
    .end sparse-switch

    .line 1938
    :sswitch_data_17a
    .sparse-switch
        0x15 -> :sswitch_83
        0x39 -> :sswitch_93
    .end sparse-switch

    .line 1949
    :sswitch_data_184
    .sparse-switch
        0x2 -> :sswitch_a4
        0x3 -> :sswitch_a4
        0x4 -> :sswitch_ad
        0x5 -> :sswitch_ad
        0x6 -> :sswitch_a4
        0x7 -> :sswitch_a4
        0x10 -> :sswitch_a4
        0x11 -> :sswitch_a4
        0x12 -> :sswitch_a4
        0x14 -> :sswitch_b3
        0x15 -> :sswitch_157
        0x30 -> :sswitch_a4
        0x31 -> :sswitch_d1
        0x32 -> :sswitch_a4
        0x33 -> :sswitch_103
        0x34 -> :sswitch_129
        0x35 -> :sswitch_133
        0x36 -> :sswitch_145
        0x37 -> :sswitch_a4
        0x39 -> :sswitch_ad
    .end sparse-switch
.end method

.method public OnWordCellSeparateMode(I)V
    .registers 2
    .parameter "nResult"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    return-void
.end method

.method protected TemplateDocumetMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 985
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTabScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setVisibility(I)V

    .line 988
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->NewDocumentMode()V

    .line 989
    return-void
.end method

.method protected cellInlineEditStyle()V
    .registers 6

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    if-nez v0, :cond_9

    .line 2570
    :cond_8
    :goto_8
    return-void

    .line 2546
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 2547
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setPaintFlags(I)V

    .line 2548
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2550
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bBold:I

    if-lez v0, :cond_3c

    .line 2551
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setPaintFlags(I)V

    .line 2552
    :cond_3c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bUnderLine:I

    if-lez v0, :cond_4f

    .line 2553
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setPaintFlags(I)V

    .line 2554
    :cond_4f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bStrikeout:I

    if-lez v0, :cond_62

    .line 2555
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setPaintFlags(I)V

    .line 2556
    :cond_62
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bItalic:I

    if-lez v0, :cond_74

    .line 2557
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2558
    :cond_74
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setPaintFlags(I)V

    .line 2559
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFontColor:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setTextColor(I)V

    .line 2560
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFillColor:I

    if-nez v0, :cond_a7

    .line 2561
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setBackgroundColor(I)V

    .line 2565
    :goto_96
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeCellRect()V

    .line 2566
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setPadding(IIII)V

    goto/16 :goto_8

    .line 2568
    :catch_a4
    move-exception v0

    goto/16 :goto_8

    .line 2563
    :cond_a7
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->dwFillColor:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setBackgroundColor(I)V
    :try_end_b0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_b0} :catch_a4

    goto :goto_96
.end method

.method public decideInputState(I)V
    .registers 9
    .parameter "nAdvanceCellType"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x2

    const/16 v2, 0x28

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 501
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 502
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v6}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 503
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 504
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    .line 549
    :goto_1e
    return-void

    .line 507
    :cond_1f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditInFieldMode()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 508
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    .line 510
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    .line 511
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    .line 512
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    .line 513
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    goto :goto_1e

    .line 515
    :cond_51
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 516
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    .line 518
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    .line 519
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 521
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v6}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 522
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 523
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    if-nez p1, :cond_9b

    .line 526
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    .line 540
    :cond_97
    :goto_97
    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    goto :goto_1e

    .line 529
    :cond_9b
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    .line 530
    const/4 v0, 0x5

    if-ne p1, v0, :cond_ac

    .line 531
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_97

    .line 532
    :cond_ac
    if-ne p1, v5, :cond_b7

    .line 533
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v1, v5

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_97

    .line 534
    :cond_b7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c3

    .line 535
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v1, v3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_97

    .line 536
    :cond_c3
    if-ne p1, v1, :cond_97

    .line 537
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v1, v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_97

    .line 543
    :cond_ce
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v3, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setSelection(II)V

    .line 544
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    .line 545
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    .line 546
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    goto/16 :goto_1e
.end method

.method public getMatches(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "strKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3439
    const-string v2, ""

    if-ne p1, v2, :cond_b

    .line 3440
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->list:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    .line 3441
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    .line 3458
    :goto_a
    return-object v2

    .line 3443
    :cond_b
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3444
    const/4 v1, 0x0

    .line 3445
    .local v1, isMatchCase:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_23

    .line 3451
    if-eqz v1, :cond_50

    .line 3452
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3458
    :goto_20
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    goto :goto_a

    .line 3446
    :cond_23
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4d

    .line 3447
    :cond_3f
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3448
    const/4 v1, 0x1

    .line 3445
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 3454
    :cond_50
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3455
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20
.end method

.method protected makeCellEdit(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "isCell"

    .prologue
    .line 2533
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->cellInlineEditStyle()V

    .line 2534
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2535
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2536
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 2537
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    .line 2538
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2540
    :cond_21
    return-void
.end method

.method protected makeCellRect()V
    .registers 10

    .prologue
    .line 2573
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2574
    .local v0, display:Landroid/view/Display;
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v6

    iget v5, v6, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    .line 2575
    .local v5, zoomRatio:I
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v6, v6, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->nFontSize:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0x2

    int-to-float v1, v6

    .line 2576
    .local v1, nFontSize:F
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v6, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setTextSize(F)V

    .line 2578
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v6, v6, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v6, v6, Lcom/infraware/office/evengine/EV$RANGE;->nRight:I

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v7, v7, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v7, v7, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 2579
    .local v4, nWidth:I
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v6, v6, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v6, v6, Lcom/infraware/office/evengine/EV$RANGE;->nBottom:I

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v7, v7, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v7, v7, Lcom/infraware/office/evengine/EV$RANGE;->nTop:I

    sub-int/2addr v6, v7

    add-int/lit8 v2, v6, 0x5

    .line 2581
    .local v2, nHeight:I
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v6, v6, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v6, v6, Lcom/infraware/office/evengine/EV$RANGE;->nRight:I

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v7, v7, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v7, v7, Lcom/infraware/office/evengine/EV$RANGE;->nRight:I

    if-le v6, v7, :cond_60

    .line 2582
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v6, v6, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v6, v6, Lcom/infraware/office/evengine/EV$RANGE;->nRight:I

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v7, v7, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v7, v7, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 2583
    :cond_60
    if-gez v4, :cond_63

    const/4 v4, 0x0

    .line 2584
    :cond_63
    if-gez v2, :cond_66

    const/4 v2, 0x0

    .line 2585
    :cond_66
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v6, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxHeight(I)V

    .line 2586
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v8, v8, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v8, v8, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxWidth(I)V

    .line 2587
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v6, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setWidth(I)V

    .line 2588
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v6, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setHeight(I)V

    .line 2589
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/common/ExEditText;->setSingleLine(Z)V

    .line 2590
    float-to-int v6, v1

    div-int/lit8 v7, v5, 0xa

    add-int/2addr v6, v7

    div-int v3, v2, v6

    .line 2591
    .local v3, nLines:I
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    if-gtz v3, :cond_98

    const/4 v3, 0x1

    .end local v3           #nLines:I
    :cond_98
    invoke-virtual {v6, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxLines(I)V

    .line 2592
    return-void
.end method

.method public makeSheetList()V
    .registers 8

    .prologue
    .line 681
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 683
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 684
    .local v0, display:Landroid/view/Display;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EV;->getSheetInfo()Lcom/infraware/office/evengine/EV$SHEET_INFO;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 685
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetCount()I

    move-result v3

    .line 686
    .local v3, totalPageNum:I
    new-array v2, v3, [Landroid/widget/Button;

    .line 687
    .local v2, tabBtn:[Landroid/widget/Button;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    if-lt v1, v3, :cond_29

    .line 721
    return-void

    .line 688
    :cond_29
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    invoke-virtual {v4, v5, v1}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 689
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v1

    .line 690
    aget-object v4, v2, v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setId(I)V

    .line 691
    aget-object v4, v2, v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 692
    aget-object v4, v2, v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget-object v6, v6, Lcom/infraware/office/evengine/EV$SHEET_INFO;->szSheetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 693
    aget-object v4, v2, v1

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020265

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetCurrentSheetIndex()I

    move-result v4

    if-ne v1, v4, :cond_9c

    .line 696
    aget-object v4, v2, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 697
    aget-object v4, v2, v1

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 704
    :goto_88
    aget-object v4, v2, v1

    new-instance v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 700
    :cond_9c
    aget-object v4, v2, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 701
    aget-object v4, v2, v1

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_88
.end method

.method protected moveCellInlineEdit()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2595
    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2596
    :cond_18
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 2597
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeCellRect()V

    .line 2598
    const/4 v0, 0x0

    .local v0, nLeft:I
    const/4 v1, 0x0

    .line 2599
    .local v1, nTop:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    if-le v2, v5, :cond_59

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nTop:I

    if-le v2, v5, :cond_59

    .line 2600
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v0, v2, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    .line 2601
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v2, Lcom/infraware/office/evengine/EV$RANGE;->nTop:I

    .line 2607
    :goto_41
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    if-le v0, v6, :cond_47

    add-int/lit8 v0, v0, -0x4

    .end local v0           #nLeft:I
    :cond_47
    if-le v1, v6, :cond_4b

    add-int/lit8 v1, v1, -0x4

    .end local v1           #nTop:I
    :cond_4b
    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2608
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetSubCell:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2609
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2611
    :cond_58
    return-void

    .line 2604
    .restart local v0       #nLeft:I
    .restart local v1       #nTop:I
    :cond_59
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v0, v2, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    .line 2605
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v1, v2, Lcom/infraware/office/evengine/EV$RANGE;->nTop:I

    goto :goto_41
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 20
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2272
    invoke-super/range {p0 .. p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2273
    sparse-switch p1, :sswitch_data_108

    .line 2316
    :cond_6
    :goto_6
    return-void

    .line 2275
    :sswitch_7
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    .line 2276
    const-string v1, "android.intent.extra.INTENT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 2277
    .local v10, b:Landroid/os/Bundle;
    if-eqz v10, :cond_6

    .line 2278
    const-string v1, "functionTitle"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2279
    .local v14, strTitle:Ljava/lang/String;
    const-string v1, "functionDef"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2280
    .local v12, strDef:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->GetEditText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2281
    .local v13, strFunction:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->GetEditSelection(Ljava/lang/String;)I

    move-result v11

    .line 2283
    .local v11, idx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    .line 2284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    .line 2285
    move-object/from16 v0, p0

    iput v11, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    .line 2287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1, v13}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    .line 2289
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    goto :goto_6

    .line 2294
    .end local v10           #b:Landroid/os/Bundle;
    .end local v11           #idx:I
    .end local v12           #strDef:Ljava/lang/String;
    .end local v13           #strFunction:Ljava/lang/String;
    .end local v14           #strTitle:Ljava/lang/String;
    :sswitch_59
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    .line 2295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getRange()Lcom/infraware/office/evengine/EV$RANGE;

    move-result-object v3

    .line 2296
    .local v3, range:Lcom/infraware/office/evengine/EV$RANGE;
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nChartType:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2297
    .local v2, a_nChartType:I
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRow1:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    .line 2298
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nCol1:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    .line 2299
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRow2:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    .line 2300
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nCol2:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    .line 2301
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nLeft:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    .line 2302
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nTop:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nTop:I

    .line 2303
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRight:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nRight:I

    .line 2304
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nBottom:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/infraware/office/evengine/EV$RANGE;->nBottom:I

    .line 2305
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nSeriesIn:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2306
    .local v4, a_nSeriesIn:I
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2307
    .local v5, a_szTitle:Ljava/lang/String;
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szXAxis:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2308
    .local v6, a_szXAxis:Ljava/lang/String;
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szYAxis:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2309
    .local v7, a_szYAxis:Ljava/lang/String;
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nLegend:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2310
    .local v8, a_nLegend:I
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nDimension:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2312
    .local v9, a_nDimension:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual/range {v1 .. v9}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_6

    .line 2273
    nop

    :sswitch_data_108
    .sparse-switch
        0x0 -> :sswitch_7
        0x18 -> :sswitch_59
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2319
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ReplaceBarClose()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2320
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-nez v0, :cond_18

    .line 2321
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2322
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setVisibility(I)V

    .line 2324
    :cond_18
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDisabledToolbar(Ljava/lang/Boolean;)V

    .line 2326
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-ne v0, v2, :cond_2d

    .line 2327
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 2345
    :goto_2c
    return-void

    .line 2329
    :cond_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_2c

    .line 2334
    :cond_35
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditInFieldMode()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    if-ne v0, v1, :cond_69

    .line 2335
    :cond_45
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 2336
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 2337
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 2338
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;

    .line 2339
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    .line 2340
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2c

    .line 2344
    :cond_69
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onBackPressed()V

    goto :goto_2c
.end method

.method public onChangeImm(Z)V
    .registers 5
    .parameter "showStatus"

    .prologue
    const/4 v2, 0x0

    .line 552
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-eqz v0, :cond_6

    .line 567
    :cond_5
    :goto_5
    return-void

    .line 553
    :cond_6
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_14

    .line 554
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 555
    :cond_14
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 556
    if-eqz p1, :cond_26

    .line 557
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_5

    .line 559
    :cond_26
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_5

    .line 561
    :cond_32
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    if-eqz p1, :cond_44

    .line 563
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_5

    .line 565
    :cond_44
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1113
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 570
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nOrientation:I

    .line 571
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 572
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    .line 2266
    :pswitch_8
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 2268
    :goto_c
    return v1

    .line 2256
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2257
    .local v0, chartIntent:Landroid/content/Intent;
    const-string v2, "edit_chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2259
    const/16 v2, 0x18

    invoke-virtual {p0, v0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 2263
    .end local v0           #chartIntent:Landroid/content/Intent;
    :pswitch_1f
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v1}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    goto :goto_c

    .line 2254
    :pswitch_data_26
    .packed-switch 0x7f0c0301
        :pswitch_d
        :pswitch_8
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f0c0146

    .line 159
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 160
    const v5, 0x7f030035

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setContentView(I)V

    .line 161
    new-instance v5, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 162
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const-string v6, "SheetToolbar"

    sget-object v7, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBaseSheetToolBar:[I

    invoke-virtual {v5, p0, v6, v7}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetInit(Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;Ljava/lang/String;[I)V

    .line 163
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v5

    iput v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nLocaleCode:I

    .line 164
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nOrientation:I

    .line 166
    const v5, 0x7f08030e

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;

    .line 168
    new-instance v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    .line 209
    const v5, 0x7f0c0159

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTabScroll:Landroid/widget/HorizontalScrollView;

    .line 210
    const v5, 0x7f0c015a

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    .line 211
    const v5, 0x7f0c0131

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetFuctionMenu:Landroid/widget/RelativeLayout;

    .line 212
    const v5, 0x7f0c0132

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionButton:Landroid/widget/ImageButton;

    .line 213
    const v5, 0x7f0c0133

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionSaveButton:Landroid/widget/ImageButton;

    .line 214
    const v5, 0x7f0c0144

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    .line 215
    const v5, 0x7f0c0145

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetSubCell:Landroid/widget/LinearLayout;

    .line 216
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/infraware/polarisoffice/common/ExEditText;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    .line 217
    const v5, 0x7f0c015c

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/infraware/polarisoffice/common/ExEditText;

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    .line 218
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/common/ExEditText;->setSingleLine(Z)V

    .line 219
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v9}, Lcom/infraware/polarisoffice/common/ExEditText;->setLines(I)V

    .line 221
    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    .line 277
    .local v1, mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    .line 305
    .local v0, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;
    new-instance v3, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$5;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$5;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    .line 322
    .local v3, mTextListener:Landroid/text/TextWatcher;
    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    .line 337
    .local v2, mLongClickListenr:Landroid/view/View$OnLongClickListener;
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 338
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 340
    new-instance v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

    .line 376
    new-instance v4, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    .line 454
    .local v4, onKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v8}, Lcom/infraware/polarisoffice/common/ExEditText;->setNextFocusDownId(I)V

    .line 455
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v8}, Lcom/infraware/polarisoffice/common/ExEditText;->setNextFocusLeftId(I)V

    .line 456
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v8}, Lcom/infraware/polarisoffice/common/ExEditText;->setNextFocusRightId(I)V

    .line 457
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v8}, Lcom/infraware/polarisoffice/common/ExEditText;->setNextFocusUpId(I)V

    .line 459
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 460
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 461
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnKeyPreImeListener(Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;)V

    .line 462
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnKeyPreImeListener(Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;)V

    .line 463
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 464
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v1}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 465
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v0}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 466
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v0}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 467
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 468
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v5, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 470
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;

    new-instance v6, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$9;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$9;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;

    new-instance v6, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$10;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$10;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$11;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$11;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mFunctionSaveButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$12;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$12;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 496
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v5, p0}, Lcom/infraware/office/baseframe/EvBaseView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 497
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2250
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2251
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 2624
    packed-switch p1, :pswitch_data_22

    .line 2651
    :pswitch_3
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 2627
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateNumbersPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 2632
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateInputValuePopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 2645
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateListPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 2647
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateMsgPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 2649
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateInputListPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 2624
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_1c
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    .line 130
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeOptionMenu()V

    .line 131
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3597
    const/16 v0, 0x54

    if-ne p1, v0, :cond_22

    .line 3598
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEV_VIEW_MODE:I

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->isShowSearchBar()Z

    move-result v0

    if-nez v0, :cond_22

    .line 3599
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 3601
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnFindDialog()V

    .line 3602
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDisabledToolbar(Ljava/lang/Boolean;)V

    .line 3605
    :cond_22
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLocaleChange(I)V
    .registers 13
    .parameter "nLocale"

    .prologue
    const v10, 0x7f080045

    const v9, 0x7f080043

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 575
    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nLocaleCode:I

    if-eq v4, p1, :cond_11b

    .line 576
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nLocaleCode:I

    .line 577
    iput-boolean v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mbMenuChange:Z

    .line 578
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v4}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 579
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeOptionMenu()V

    .line 581
    :cond_20
    const/4 v2, 0x0

    .line 582
    .local v2, nTitleId:I
    const/4 v1, 0x0

    .line 583
    .local v1, nHintId:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 584
    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    packed-switch v4, :pswitch_data_1c8

    .line 618
    :cond_33
    :goto_33
    new-instance v0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    invoke-direct {v0, v4, v5}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;-><init>(Landroid/content/Context;I)V

    .line 619
    .local v0, filter:Lcom/infraware/polarisoffice/sheet/InputValueFilter;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 620
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 622
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 623
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 624
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 625
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    .line 626
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(I)V

    .line 628
    .end local v0           #filter:Lcom/infraware/polarisoffice/sheet/InputValueFilter;
    :cond_7e
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_b6

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 629
    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    packed-switch v4, :pswitch_data_1d4

    .line 642
    :goto_8f
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 643
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtDecimal:Landroid/widget/TextView;

    const v5, 0x7f080182

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 644
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtNagativeNum:Landroid/widget/TextView;

    const v5, 0x7f0801cd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 645
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    .line 646
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mNumbersPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(I)V

    .line 648
    :cond_b6
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_cc

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 649
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 650
    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupListType:I

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    .line 652
    :cond_cc
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_ef

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 653
    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I

    packed-switch v4, :pswitch_data_1dc

    .line 658
    :goto_dd
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    .line 659
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(I)V

    .line 661
    :cond_ef
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_11b

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_11b

    .line 663
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;

    const v5, 0x7f0801c9

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    if-eqz v4, :cond_11b

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_11b

    .line 665
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTxtView:Landroid/widget/TextView;

    const v5, 0x7f08009d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 669
    .end local v1           #nHintId:I
    .end local v2           #nTitleId:I
    :cond_11b
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onLocaleChange(I)V

    .line 670
    return-void

    .line 586
    .restart local v1       #nHintId:I
    .restart local v2       #nTitleId:I
    :pswitch_11f
    const v2, 0x7f08014c

    .line 587
    const v1, 0x7f080182

    .line 588
    const v4, 0x7f0801ee

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 589
    const/4 v4, 0x0

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 590
    const/16 v4, 0x1e

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    .line 591
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    if-eqz v4, :cond_33

    .line 592
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    const v5, 0x7f080182

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_33

    .line 595
    :pswitch_13f
    const v2, 0x7f08014e

    .line 596
    const v1, 0x7f080182

    .line 597
    const v4, 0x7f0801ee

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 598
    const/4 v4, 0x0

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 599
    const/16 v4, 0x1e

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    .line 600
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    if-eqz v4, :cond_33

    .line 601
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvStatic:Landroid/widget/TextView;

    const v5, 0x7f080182

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_33

    .line 604
    :pswitch_15f
    const v2, 0x7f080127

    .line 605
    const v1, 0x7f080127

    .line 606
    const v4, 0x7f0801ec

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 607
    iput v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 608
    const/16 v4, 0x5a0

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    goto/16 :goto_33

    .line 611
    :pswitch_172
    const v2, 0x7f08012a

    .line 612
    const v1, 0x7f08012a

    .line 613
    const v4, 0x7f0801ed

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 614
    iput v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I

    .line 615
    const/16 v4, 0x5a0

    iput v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I

    goto/16 :goto_33

    .line 631
    :pswitch_185
    const v2, 0x7f080148

    .line 633
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;

    const v5, 0x7f0801cc

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_8f

    .line 636
    :pswitch_192
    const v2, 0x7f080149

    .line 637
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mTvSymbol:Landroid/widget/TextView;

    const v5, 0x7f0801ce

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 638
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, symbolItems:[Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnSymbol:Landroid/widget/Button;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v5, v5, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8f

    .line 655
    .end local v3           #symbolItems:[Ljava/lang/String;
    :pswitch_1b9
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMsgPopup:Landroid/app/AlertDialog;

    const v5, 0x7f0801e1

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_dd

    .line 584
    nop

    :pswitch_data_1c8
    .packed-switch 0x3
        :pswitch_11f
        :pswitch_13f
        :pswitch_15f
        :pswitch_172
    .end packed-switch

    .line 629
    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_185
        :pswitch_192
    .end packed-switch

    .line 653
    :pswitch_data_1dc
    .packed-switch 0x1f
        :pswitch_1b9
    .end packed-switch
.end method

.method public onMakeList(I)V
    .registers 8
    .parameter "nType"

    .prologue
    .line 3384
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3385
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->list:Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3386
    :cond_d
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3388
    :cond_16
    if-nez p1, :cond_31

    .line 3389
    const v4, 0x7f06002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3390
    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    .line 3428
    :cond_2a
    :goto_2a
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    array-length v0, v4

    .line 3430
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-lt v1, v0, :cond_fd

    .line 3437
    return-void

    .line 3392
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_31
    const/4 v4, 0x1

    if-ne p1, v4, :cond_47

    .line 3393
    const v4, 0x7f06002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3394
    const v4, 0x7f06002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto :goto_2a

    .line 3396
    :cond_47
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5d

    .line 3397
    const v4, 0x7f06002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3398
    const v4, 0x7f060030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto :goto_2a

    .line 3400
    :cond_5d
    const/4 v4, 0x3

    if-ne p1, v4, :cond_73

    .line 3401
    const v4, 0x7f060031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3402
    const v4, 0x7f060032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto :goto_2a

    .line 3404
    :cond_73
    const/4 v4, 0x4

    if-ne p1, v4, :cond_89

    .line 3405
    const v4, 0x7f060033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3406
    const v4, 0x7f060034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto :goto_2a

    .line 3408
    :cond_89
    const/4 v4, 0x5

    if-ne p1, v4, :cond_9f

    .line 3409
    const v4, 0x7f060035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3410
    const v4, 0x7f060036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto :goto_2a

    .line 3412
    :cond_9f
    const/4 v4, 0x6

    if-ne p1, v4, :cond_b6

    .line 3413
    const v4, 0x7f060037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3414
    const v4, 0x7f060038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto/16 :goto_2a

    .line 3416
    :cond_b6
    const/4 v4, 0x7

    if-ne p1, v4, :cond_cd

    .line 3417
    const v4, 0x7f060039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3418
    const v4, 0x7f06003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto/16 :goto_2a

    .line 3420
    :cond_cd
    const/16 v4, 0x8

    if-ne p1, v4, :cond_e5

    .line 3421
    const v4, 0x7f06003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3422
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto/16 :goto_2a

    .line 3424
    :cond_e5
    const/16 v4, 0x9

    if-ne p1, v4, :cond_2a

    .line 3425
    const v4, 0x7f06003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    .line 3426
    const v4, 0x7f06003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    goto/16 :goto_2a

    .line 3431
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_fd
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 3432
    .local v2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->upList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3433
    const-string v4, "definition"

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->downList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3434
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3435
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3430
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2e
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 820
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    .line 821
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->CheckMenuStatus()V

    .line 822
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 889
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mbMenuOpen:Z

    .line 890
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 921
    :pswitch_a
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 923
    :goto_e
    return v2

    .line 893
    :pswitch_f
    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    .line 923
    :goto_14
    const/4 v2, 0x1

    goto :goto_e

    .line 897
    :pswitch_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSubMenu(I)V

    goto :goto_14

    .line 901
    :pswitch_1e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/sheet/SheetViewList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 902
    .local v1, viewListIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 905
    .end local v1           #viewListIntent:Landroid/content/Intent;
    :pswitch_29
    const/16 v2, 0x308

    invoke-virtual {p0, v2, v3, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_14

    .line 908
    :pswitch_2f
    const/16 v2, 0x304

    invoke-virtual {p0, v2, v3, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_14

    .line 911
    :pswitch_35
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/sheet/SortView;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 912
    .local v0, sortIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 915
    .end local v0           #sortIntent:Landroid/content/Intent;
    :pswitch_40
    const/16 v2, 0x306

    invoke-virtual {p0, v2, v3, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_14

    .line 918
    :pswitch_46
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCustomToolbarActivity()V

    goto :goto_14

    .line 890
    :pswitch_data_4a
    .packed-switch 0x7f0c0320
        :pswitch_16
        :pswitch_16
        :pswitch_1e
        :pswitch_29
        :pswitch_2f
        :pswitch_35
        :pswitch_40
        :pswitch_46
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 152
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 155
    :cond_1c
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onPause()V

    .line 156
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 3546
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 3547
    packed-switch p1, :pswitch_data_1e

    .line 3574
    :goto_6
    :pswitch_6
    return-void

    .line 3568
    :pswitch_7
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    .line 3569
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3570
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3571
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->removeDialog(I)V

    goto :goto_6

    .line 3547
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_9

    .line 2021
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 2022
    :cond_9
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeOptionMenu()V

    .line 2023
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->CheckMenuStatus()V

    .line 2024
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V
    .registers 6
    .parameter "edit"

    .prologue
    const/4 v3, 0x0

    .line 3613
    if-eqz p1, :cond_24

    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    if-ltz v1, :cond_24

    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    if-ltz v1, :cond_24

    sget-boolean v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mIsLongPress:Z

    if-nez v1, :cond_24

    .line 3614
    invoke-virtual {p1}, Lcom/infraware/polarisoffice/common/ExEditText;->length()I

    move-result v1

    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    if-ge v1, v2, :cond_1d

    .line 3615
    invoke-virtual {p1}, Lcom/infraware/polarisoffice/common/ExEditText;->length()I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    .line 3617
    :cond_1d
    :try_start_1d
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    iget v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    invoke-virtual {p1, v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setSelection(II)V
    :try_end_24
    .catch Ljava/lang/IllegalAccessError; {:try_start_1d .. :try_end_24} :catch_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_24} :catch_2b

    .line 3628
    :cond_24
    :goto_24
    return-void

    .line 3619
    :catch_25
    move-exception v0

    .line 3620
    .local v0, e:Ljava/lang/IllegalAccessError;
    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    goto :goto_24

    .line 3622
    .end local v0           #e:Ljava/lang/IllegalAccessError;
    :catch_2b
    move-exception v0

    .line 3623
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I

    iput v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I

    goto :goto_24
.end method

.method public setEditMode(I)V
    .registers 2
    .parameter "editMode"

    .prologue
    .line 724
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    .line 725
    return-void
.end method

.method public setEvListener()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 728
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v2, p0

    move-object v4, v3

    move-object v5, p0

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 729
    return-void
.end method

.method protected sheetEditViewKeyProc(ILandroid/view/KeyEvent;)I
    .registers 13
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x28

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2426
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    .line 2428
    .local v6, action:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_25

    move v8, v9

    .line 2429
    .local v8, bShift:I
    :goto_13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v0, v4, :cond_27

    move v7, v9

    .line 2431
    .local v7, bCtrl:I
    :goto_1e
    if-nez v6, :cond_24

    .line 2432
    sparse-switch p1, :sswitch_data_f0

    :cond_23
    :goto_23
    :sswitch_23
    move v3, v9

    .line 2530
    :cond_24
    :goto_24
    :sswitch_24
    return v3

    .end local v7           #bCtrl:I
    .end local v8           #bShift:I
    :cond_25
    move v8, v3

    .line 2428
    goto :goto_13

    .restart local v8       #bShift:I
    :cond_27
    move v7, v3

    .line 2429
    goto :goto_1e

    .line 2434
    .restart local v7       #bCtrl:I
    :sswitch_29
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->decideInputState(I)V

    goto :goto_23

    .line 2437
    :sswitch_2d
    if-eq v8, v9, :cond_31

    if-ne v7, v9, :cond_37

    .line 2438
    :cond_31
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v8, v7}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    goto :goto_23

    .line 2441
    :cond_37
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2442
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_23

    .line 2446
    :sswitch_45
    if-eq v8, v9, :cond_49

    if-ne v7, v9, :cond_50

    .line 2447
    :cond_49
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8, v7}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    goto :goto_23

    .line 2450
    :cond_50
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2451
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_23

    .line 2455
    :sswitch_5f
    if-eq v8, v9, :cond_63

    if-ne v7, v9, :cond_69

    .line 2456
    :cond_63
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3, v8, v7}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    goto :goto_23

    .line 2459
    :cond_69
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2460
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v1, v3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_23

    .line 2464
    :sswitch_78
    if-eq v8, v9, :cond_7c

    if-ne v7, v9, :cond_82

    .line 2465
    :cond_7c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v9, v8, v7}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    goto :goto_23

    .line 2468
    :cond_82
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2469
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v1, v9

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    goto :goto_23

    .line 2484
    :sswitch_91
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    if-nez v0, :cond_99

    move v3, v9

    .line 2485
    goto :goto_24

    .line 2486
    :cond_99
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ReplaceBarClose()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2487
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsProtectSheet()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 2488
    const v0, 0x7f0801eb

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    .line 2489
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_23

    .line 2491
    :cond_b3
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2492
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeCellEdit(Ljava/lang/Boolean;)V

    goto/16 :goto_23

    .line 2497
    :sswitch_c2
    if-ne v7, v9, :cond_23

    .line 2498
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3, v3, v3, v5}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    goto/16 :goto_23

    .line 2502
    :sswitch_cb
    if-ne v7, v9, :cond_23

    .line 2503
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v9, v3, v3, v5}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    goto/16 :goto_23

    .line 2507
    :sswitch_d4
    if-ne v7, v9, :cond_23

    .line 2508
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v3, v3, v5}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    goto/16 :goto_23

    .line 2512
    :sswitch_dd
    if-ne v7, v9, :cond_23

    .line 2513
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v9}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    goto/16 :goto_23

    .line 2517
    :sswitch_e6
    if-ne v7, v9, :cond_23

    .line 2518
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v3}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    goto/16 :goto_23

    .line 2432
    nop

    :sswitch_data_f0
    .sparse-switch
        0x3 -> :sswitch_24
        0x4 -> :sswitch_24
        0x13 -> :sswitch_5f
        0x14 -> :sswitch_78
        0x15 -> :sswitch_2d
        0x16 -> :sswitch_45
        0x17 -> :sswitch_29
        0x18 -> :sswitch_24
        0x19 -> :sswitch_24
        0x1a -> :sswitch_24
        0x1f -> :sswitch_cb
        0x32 -> :sswitch_d4
        0x34 -> :sswitch_c2
        0x35 -> :sswitch_e6
        0x36 -> :sswitch_dd
        0x42 -> :sswitch_91
        0x52 -> :sswitch_24
        0x54 -> :sswitch_23
    .end sparse-switch
.end method
