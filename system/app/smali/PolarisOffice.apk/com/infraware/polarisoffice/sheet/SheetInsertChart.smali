.class public Lcom/infraware/polarisoffice/sheet/SheetInsertChart;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SheetInsertChart.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CHART_SERIES;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CHART_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_CHART_LEGEND;
.implements Lcom/infraware/office/evengine/E$EV_SHEERT_CHART_DIMENSIONS;


# static fields
.field public static a_nChartType:Ljava/lang/String;

.field public static a_nDimension:Ljava/lang/String;

.field public static a_nLegend:Ljava/lang/String;

.field public static a_nSeriesIn:Ljava/lang/String;

.field public static a_szTitle:Ljava/lang/String;

.field public static a_szXAxis:Ljava/lang/String;

.field public static a_szYAxis:Ljava/lang/String;

.field public static a_tRange_nBottom:Ljava/lang/String;

.field public static a_tRange_nCol1:Ljava/lang/String;

.field public static a_tRange_nCol2:Ljava/lang/String;

.field public static a_tRange_nLeft:Ljava/lang/String;

.field public static a_tRange_nRight:Ljava/lang/String;

.field public static a_tRange_nRow1:Ljava/lang/String;

.field public static a_tRange_nRow2:Ljava/lang/String;

.field public static a_tRange_nTop:Ljava/lang/String;


# instance fields
.field legendItems:[Ljava/lang/String;

.field private mBtn_chartCancel:Landroid/widget/Button;

.field private mBtn_chartOk:Landroid/widget/Button;

.field private mBtn_more:Landroid/widget/Button;

.field private mBtn_moreLegend:Landroid/widget/Button;

.field private mEditChart:Z

.field private mEt_moreTitle:Landroid/widget/EditText;

.field private mEt_moreXaxis:Landroid/widget/EditText;

.field private mEt_moreYaxis:Landroid/widget/EditText;

.field private mImgbtn_hori_type1:Landroid/widget/ImageButton;

.field private mImgbtn_hori_type2:Landroid/widget/ImageButton;

.field private mImgbtn_hori_type3:Landroid/widget/ImageButton;

.field private mImgbtn_hori_type4:Landroid/widget/ImageButton;

.field private mImgbtn_type1:Landroid/widget/ImageButton;

.field private mImgbtn_type2:Landroid/widget/ImageButton;

.field private mImgbtn_type3:Landroid/widget/ImageButton;

.field private mImgbtn_type4:Landroid/widget/ImageButton;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInterface:Lcom/infraware/office/evengine/EvInterface;

.field mLegendDlg:Landroid/app/AlertDialog;

.field private mLlayout_moreInfo:Landroid/widget/LinearLayout;

.field private mLlayout_typeFirst:Landroid/widget/LinearLayout;

.field private mLlayout_typeFirstHorizontal:Landroid/widget/LinearLayout;

.field private mLlayout_typeSecond:Landroid/widget/LinearLayout;

.field private mTxtLegend:Landroid/widget/TextView;

.field private mTxtTitle:Landroid/widget/TextView;

.field private mTxtType:Landroid/widget/TextView;

.field private mTxtX:Landroid/widget/TextView;

.field private mTxtY:Landroid/widget/TextView;

.field private m_nChartType:I

.field private m_nLegend:I

.field private m_nPopupListType:I

.field private m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

.field private m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "a_nChartType"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nChartType:Ljava/lang/String;

    .line 48
    const-string v0, "a_tRange_nRow1"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRow1:Ljava/lang/String;

    .line 49
    const-string v0, "a_tRange_nCol1"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nCol1:Ljava/lang/String;

    .line 50
    const-string v0, "a_tRange_nRow2"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRow2:Ljava/lang/String;

    .line 51
    const-string v0, "a_tRange_nCol2"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nCol2:Ljava/lang/String;

    .line 52
    const-string v0, "a_tRange_nLeft"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nLeft:Ljava/lang/String;

    .line 53
    const-string v0, "a_tRange_nTop"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nTop:Ljava/lang/String;

    .line 54
    const-string v0, "a_tRange_nRight"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRight:Ljava/lang/String;

    .line 55
    const-string v0, "a_tRange_nBottom"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nBottom:Ljava/lang/String;

    .line 56
    const-string v0, "a_nSeriesIn"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nSeriesIn:Ljava/lang/String;

    .line 57
    const-string v0, "a_szTitle"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szTitle:Ljava/lang/String;

    .line 58
    const-string v0, "a_szXAxis"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szXAxis:Ljava/lang/String;

    .line 59
    const-string v0, "a_szYAxis"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szYAxis:Ljava/lang/String;

    .line 60
    const-string v0, "a_nLegend"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nLegend:Ljava/lang/String;

    .line 61
    const-string v0, "a_nDimension"

    sput-object v0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nDimension:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirst:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirstHorizontal:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeSecond:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_moreInfo:Landroid/widget/LinearLayout;

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreTitle:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartOk:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartCancel:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_moreLegend:Landroid/widget/Button;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtType:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtX:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtY:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtLegend:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I

    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    .line 40
    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nPopupListType:I

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 42
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEditChart:Z

    .line 43
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->legendItems:[Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    .line 45
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_moreInfo:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)I
    .registers 2
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    return v0
.end method

.method static synthetic access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    return-object v0
.end method

.method static synthetic access$17(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$18(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)I
    .registers 2
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I

    return v0
.end method

.method static synthetic access$19(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$20(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I

    return-void
.end method

.method static synthetic access$21(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_moreLegend:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public OnLegendDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 455
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->showDialog(I)V

    .line 456
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 366
    const v1, 0x7f08011a

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->setTitle(I)V

    .line 367
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtType:Landroid/widget/TextView;

    const v2, 0x7f080220

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 369
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;

    const v2, 0x7f080205

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 370
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtTitle:Landroid/widget/TextView;

    const v2, 0x7f0801c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 371
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtX:Landroid/widget/TextView;

    const v2, 0x7f0801c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 372
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtY:Landroid/widget/TextView;

    const v2, 0x7f0801c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtLegend:Landroid/widget/TextView;

    const v2, 0x7f0801c3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 374
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartOk:Landroid/widget/Button;

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 375
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartCancel:Landroid/widget/Button;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 376
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->legendItems:[Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_moreLegend:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->legendItems:[Ljava/lang/String;

    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7e

    .line 379
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 380
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 381
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nPopupListType:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->showDialog(I)V

    .line 384
    :cond_7e
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 385
    .local v0, bPivot:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 386
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 449
    :cond_97
    :goto_97
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 450
    return-void

    .line 388
    :cond_9b
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 389
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 390
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 391
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 393
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 394
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 395
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 396
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 398
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_164

    goto :goto_97

    .line 401
    :pswitch_c9
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirst:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeSecond:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirstHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-nez v1, :cond_e7

    .line 406
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 407
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_97

    .line 409
    :cond_e7
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-ne v1, v4, :cond_f6

    .line 410
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 411
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_97

    .line 413
    :cond_f6
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-ne v1, v7, :cond_105

    .line 414
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 415
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_97

    .line 417
    :cond_105
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-ne v1, v8, :cond_97

    .line 418
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 419
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_97

    .line 425
    :pswitch_114
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirst:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeSecond:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirstHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-nez v1, :cond_133

    .line 430
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 431
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_97

    .line 433
    :cond_133
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-ne v1, v4, :cond_143

    .line 434
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 435
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_97

    .line 437
    :cond_143
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-ne v1, v7, :cond_153

    .line 438
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 439
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_97

    .line 441
    :cond_153
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    if-ne v1, v8, :cond_97

    .line 442
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 443
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_97

    .line 398
    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_114
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 64
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030049

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->setContentView(I)V

    .line 68
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 70
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetChartInfo()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    .line 71
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2d

    .line 73
    const-string v1, "edit_chart"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEditChart:Z

    .line 75
    :cond_2d
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEditChart:Z

    if-nez v1, :cond_26a

    .line 76
    const v1, 0x7f08011a

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->setTitle(I)V

    .line 80
    :goto_37
    const v1, 0x7f0c01a7

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirst:Landroid/widget/LinearLayout;

    .line 81
    const v1, 0x7f0c01ad

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirstHorizontal:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0c01aa

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeSecond:Landroid/widget/LinearLayout;

    .line 84
    const v1, 0x7f0c01a8

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    .line 85
    const v1, 0x7f0c01a9

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    .line 86
    const v1, 0x7f0c01ab

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    .line 87
    const v1, 0x7f0c01ac

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    .line 89
    const v1, 0x7f0c01ae

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    .line 90
    const v1, 0x7f0c01af

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    .line 91
    const v1, 0x7f0c01b0

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    .line 92
    const v1, 0x7f0c01b1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    .line 94
    const v1, 0x7f0c01b2

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;

    .line 95
    const v1, 0x7f0c01b3

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_moreInfo:Landroid/widget/LinearLayout;

    .line 96
    const v1, 0x7f0c01b5

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreTitle:Landroid/widget/EditText;

    .line 97
    const v1, 0x7f0c01b7

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    .line 98
    const v1, 0x7f0c01b9

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    .line 99
    const v1, 0x7f0c01bb

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_moreLegend:Landroid/widget/Button;

    .line 100
    const v1, 0x7f0c01bc

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartOk:Landroid/widget/Button;

    .line 101
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartOk:Landroid/widget/Button;

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 102
    const v1, 0x7f0c01bd

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartCancel:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartCancel:Landroid/widget/Button;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 105
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->legendItems:[Ljava/lang/String;

    .line 107
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEditChart:Z

    if-eqz v1, :cond_12f

    .line 108
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    iget v1, v1, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->nLegend:I

    iput v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I

    .line 109
    :cond_12f
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_moreLegend:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->legendItems:[Ljava/lang/String;

    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v1, 0x7f0c01a6

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtType:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtType:Landroid/widget/TextView;

    const v2, 0x7f080220

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;

    const v2, 0x7f080205

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 116
    const v1, 0x7f0c01b4

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtTitle:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtTitle:Landroid/widget/TextView;

    const v2, 0x7f0801c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const v1, 0x7f0c01b6

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtX:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtX:Landroid/widget/TextView;

    const v2, 0x7f0801c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    const v1, 0x7f0c01b8

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtY:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtY:Landroid/widget/TextView;

    const v2, 0x7f0801c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const v1, 0x7f0c01ba

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtLegend:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mTxtLegend:Landroid/widget/TextView;

    const v2, 0x7f0801c3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 126
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_moreInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEditChart:Z

    if-nez v1, :cond_272

    .line 129
    iput v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    .line 130
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 131
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 170
    :goto_1c4
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$1;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$1;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$2;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$2;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$3;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$3;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$4;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$4;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$5;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$5;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$6;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$6;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$7;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$7;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$8;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$8;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartOk:Landroid/widget/Button;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_chartCancel:Landroid/widget/Button;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24e

    .line 354
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirst:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeSecond:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirstHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    :cond_24e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_269

    .line 359
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirstHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeFirst:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_typeSecond:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    :cond_269
    return-void

    .line 78
    :cond_26a
    const v1, 0x7f0801da

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->setTitle(I)V

    goto/16 :goto_37

    .line 134
    :cond_272
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    iget v1, v1, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->nChart:I

    iput v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    .line 135
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 136
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 137
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 138
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 139
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 141
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I

    packed-switch v1, :pswitch_data_302

    .line 165
    :goto_29b
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreTitle:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szXAxis:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sChartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szYAxis:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c4

    .line 143
    :pswitch_2b8
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 144
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_29b

    .line 147
    :pswitch_2c3
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 148
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_29b

    .line 151
    :pswitch_2ce
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 152
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 153
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 154
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 155
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 156
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 157
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 158
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_29b

    .line 161
    :pswitch_2f7
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 162
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImgbtn_hori_type4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_29b

    .line 141
    :pswitch_data_302
    .packed-switch 0x0
        :pswitch_2b8
        :pswitch_2c3
        :pswitch_2ce
        :pswitch_2f7
    .end packed-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "id"
    .parameter "args"

    .prologue
    .line 460
    packed-switch p1, :pswitch_data_34

    .line 474
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 462
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->legendItems:[Ljava/lang/String;

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 462
    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    .line 470
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 471
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 472
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLegendDlg:Landroid/app/AlertDialog;

    goto :goto_7

    .line 460
    nop

    :pswitch_data_34
    .packed-switch 0x20
        :pswitch_8
    .end packed-switch
.end method

.method public onLocaleChange(I)V
    .registers 2
    .parameter "nLocale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    return-void
.end method

.method public onPivotLock(I)V
    .registers 2
    .parameter "nMode"

    .prologue
    .line 452
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 479
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 480
    packed-switch p1, :pswitch_data_c

    .line 485
    :goto_6
    return-void

    .line 482
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->removeDialog(I)V

    goto :goto_6

    .line 480
    nop

    :pswitch_data_c
    .packed-switch 0x20
        :pswitch_7
    .end packed-switch
.end method
