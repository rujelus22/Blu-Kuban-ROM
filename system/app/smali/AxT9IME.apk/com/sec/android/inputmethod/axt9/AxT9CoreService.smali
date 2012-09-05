.class public Lcom/sec/android/inputmethod/axt9/AxT9CoreService;
.super Ljava/lang/Object;
.source "AxT9CoreService.java"


# static fields
.field private static mASDBBuffer:[B

.field private static mCDBBuffer:[B

.field private static mUDBBuffer:[B


# instance fields
.field public final ASDB_DB_TYPE:B

.field public final CDB_DB_TYPE:B

.field private final DEBUG:Z

.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final EMPTY_MULTITAP_SEQ:[S

.field private final ERROR:Z

.field private final ET9ASPCMODE_EXACT:B

.field private final ET9ASPCMODE_OFF:B

.field private final ET9ASPCMODE_REGIONAL:B

.field private final INFO:Z

.field private final INPUT_TYPE_KEYPAD:I

.field private final INPUT_TYPE_PHONEPAD:I

.field private final INPUT_TYPE_QWERTY:I

.field final KEYMAP_KEYPAD:[S

.field final KEYMAP_PHONEPAD:[S

.field final KEYMAP_PHONEPAD_KR:[S

.field final KEYMAP_QWERTY:[S

.field final KEYMAP_QWERTY_BG:[S

.field final KEYMAP_QWERTY_DE:[S

.field final KEYMAP_QWERTY_EURO:[S

.field final KEYMAP_QWERTY_FR:[S

.field final KEYMAP_QWERTY_KR:[S

.field final KEYMAP_QWERTY_RU:[S

.field final KEYMAP_QWERTY_UK:[S

.field final KEYMAP_QWERTZ_FR:[S

.field public final UDB_DB_TYPE:B

.field mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

.field private mAutoAppendOn:Z

.field private mAutoSubstitutionOn:Z

.field private mCompletionOn:Z

.field private mContext:Landroid/content/Context;

.field private mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

.field private mCorrectionOn:Z

.field private mDefaultActiveWordIndex:B

.field mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

.field private mInitialized:Z

.field private mInputKeyMode:I

.field private mInputLanguageId:S

.field private mInputType:I

.field private mLanguageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictionOn:Z

.field private mRecaptureOn:Z

.field private mRegionalCorrectionOn:Z

.field private mSelTotalWords:B

.field private mSuggestion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mT9Language:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private mTraceOn:Z

.field private mValidLangList:[Z

.field final wENGLISH_HPD:S

.field final wENGLISH_KPD:S

.field final wFRENCH_HPD:S

.field final wGENERIC_HQR:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/16 v0, 0x5000

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    .line 87
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    .line 88
    const/16 v0, 0x2800

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->DEBUG:Z

    .line 41
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INFO:Z

    .line 42
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ERROR:Z

    .line 45
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    .line 65
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ET9ASPCMODE_OFF:B

    .line 66
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ET9ASPCMODE_EXACT:B

    .line 67
    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ET9ASPCMODE_REGIONAL:B

    .line 72
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->UDB_DB_TYPE:B

    .line 73
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->CDB_DB_TYPE:B

    .line 74
    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ASDB_DB_TYPE:B

    .line 100
    new-array v0, v2, [S

    fill-array-data v0, :array_c4

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_KR:[S

    .line 103
    const/16 v0, 0x21

    new-array v0, v0, [S

    fill-array-data v0, :array_e2

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_RU:[S

    .line 107
    const/16 v0, 0x20

    new-array v0, v0, [S

    fill-array-data v0, :array_108

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_UK:[S

    .line 111
    const/16 v0, 0x1f

    new-array v0, v0, [S

    fill-array-data v0, :array_12c

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_BG:[S

    .line 115
    new-array v0, v2, [S

    fill-array-data v0, :array_150

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .line 118
    new-array v0, v2, [S

    fill-array-data v0, :array_16e

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_FR:[S

    .line 121
    new-array v0, v2, [S

    fill-array-data v0, :array_18c

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_DE:[S

    .line 124
    new-array v0, v2, [S

    fill-array-data v0, :array_1aa

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY:[S

    .line 127
    new-array v0, v2, [S

    fill-array-data v0, :array_1c8

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTZ_FR:[S

    .line 130
    new-array v0, v5, [S

    fill-array-data v0, :array_1e6

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD:[S

    .line 131
    new-array v0, v5, [S

    fill-array-data v0, :array_1f4

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD_KR:[S

    .line 132
    new-array v0, v2, [S

    fill-array-data v0, :array_202

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_KEYPAD:[S

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->EMPTY_LIST:Ljava/util/List;

    .line 138
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->EMPTY_MULTITAP_SEQ:[S

    .line 142
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    .line 143
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    .line 144
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 145
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    .line 147
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    .line 149
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INPUT_TYPE_QWERTY:I

    .line 150
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INPUT_TYPE_PHONEPAD:I

    .line 151
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INPUT_TYPE_KEYPAD:I

    .line 156
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    .line 157
    const/16 v0, 0x9

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 159
    const/16 v0, 0x9ff

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wGENERIC_HQR:S

    .line 160
    const/16 v0, 0x60c

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wFRENCH_HPD:S

    .line 161
    const/16 v0, 0x609

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wENGLISH_HPD:S

    .line 162
    const/16 v0, 0x509

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wENGLISH_KPD:S

    .line 165
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mContext:Landroid/content/Context;

    .line 166
    return-void

    .line 100
    :array_c4
    .array-data 0x2
        0xat 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x1t 0x0t
        0x14t 0x0t
        0x5t 0x0t
        0x13t 0x0t
    .end array-data

    .line 103
    :array_e2
    .array-data 0x2
        0xft 0x0t
        0x1et 0x0t
        0xet 0x0t
        0x6t 0x0t
        0x14t 0x0t
        0x4t 0x0t
        0x15t 0x0t
        0x9t 0x0t
        0x1bt 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x13t 0x0t
        0x1at 0x0t
        0x5t 0x0t
        0x12t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x19t 0x0t
        0x1ct 0x0t
        0x2t 0x0t
        0xct 0x0t
        0xat 0x0t
        0x1t 0x0t
        0x18t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0xbt 0x0t
        0xdt 0x0t
        0x1dt 0x0t
        0x16t 0x0t
        0x1ft 0x0t
        0x17t 0x0t
        0x20t 0x0t
    .end array-data

    .line 107
    nop

    :array_108
    .array-data 0x2
        0xft 0x0t
        0x1et 0x0t
        0xet 0x0t
        0x6t 0x0t
        0x14t 0x0t
        0x4t 0x0t
        0x15t 0x0t
        0x9t 0x0t
        0x1bt 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x13t 0x0t
        0x1at 0x0t
        0x5t 0x0t
        0x12t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x19t 0x0t
        0x1ct 0x0t
        0x2t 0x0t
        0xct 0x0t
        0xat 0x0t
        0x1t 0x0t
        0x18t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x1dt 0x0t
        0x1ft 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0xdt 0x0t
        0xbt 0x0t
    .end array-data

    .line 111
    :array_12c
    .array-data 0x2
        0xft 0x0t
        0x1et 0x0t
        0xet 0x0t
        0x6t 0x0t
        0x14t 0x0t
        0x4t 0x0t
        0x15t 0x0t
        0x9t 0x0t
        0x1bt 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x13t 0x0t
        0x1at 0x0t
        0x5t 0x0t
        0x12t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x19t 0x0t
        0x1ct 0x0t
        0x2t 0x0t
        0xct 0x0t
        0xat 0x0t
        0x1t 0x0t
        0x18t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x17t 0x0t
        0xdt 0x0t
        0x1dt 0x0t
        0x16t 0x0t
        0xbt 0x0t
    .end array-data

    .line 115
    nop

    :array_150
    .array-data 0x2
        0xbt 0x0t
        0x1at 0x0t
        0x18t 0x0t
        0xdt 0x0t
        0x2t 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x7t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x1ct 0x0t
        0x1bt 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xct 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x19t 0x0t
        0x1t 0x0t
        0x17t 0x0t
        0x5t 0x0t
        0x16t 0x0t
    .end array-data

    .line 118
    :array_16e
    .array-data 0x2
        0x0t 0x0t
        0x18t 0x0t
        0x16t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x19t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x17t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x5t 0x0t
        0x1t 0x0t
    .end array-data

    .line 121
    :array_18c
    .array-data 0x2
        0xat 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x1t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x5t 0x0t
    .end array-data

    .line 124
    :array_1aa
    .array-data 0x2
        0xat 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x1t 0x0t
        0x14t 0x0t
        0x5t 0x0t
        0x13t 0x0t
    .end array-data

    .line 127
    :array_1c8
    .array-data 0x2
        0x0t 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x5t 0x0t
        0x1t 0x0t
    .end array-data

    .line 130
    :array_1e6
    .array-data 0x2
        0x9t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
    .end array-data

    .line 131
    :array_1f4
    .array-data 0x2
        0xat 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
    .end array-data

    .line 132
    :array_202
    .array-data 0x2
        0x5t 0x0t
        0xct 0x0t
        0xbt 0x0t
        0x6t 0x0t
        0x1t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x3t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0xct 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x5t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x0t 0x0t
        0xat 0x0t
        0x2t 0x0t
        0xat 0x0t
    .end array-data
.end method

.method public static getASDBBuffer()[B
    .registers 1

    .prologue
    .line 1465
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    return-object v0
.end method

.method public static getUDBBuffer()[B
    .registers 1

    .prologue
    .line 1457
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    return-object v0
.end method

.method private initSubLinguistic()V
    .registers 4

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->reInit()S

    move-result v0

    .line 198
    if-eqz v0, :cond_b

    .line 203
    :cond_b
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->WordSymbInit(Z)S

    move-result v0

    .line 204
    if-eqz v0, :cond_16

    .line 208
    :cond_16
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;->Init()S

    move-result v0

    .line 209
    if-eqz v0, :cond_20

    .line 214
    :cond_20
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbInit()S

    move-result v0

    .line 215
    if-eqz v0, :cond_2a

    .line 218
    :cond_2a
    return-void
.end method

.method private lookupChar(SZ)S
    .registers 13
    .parameter "wKey"
    .parameter "isHWInput"

    .prologue
    const/16 v9, 0x7a

    const/16 v5, 0x15

    const/16 v3, 0xa

    const/16 v4, 0x14

    const/16 v8, 0x61

    .line 1071
    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-nez v6, :cond_26

    .line 1072
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD_KR:[S

    .line 1074
    .local v2, keyMap:[S
    :goto_16
    const/16 v3, 0x30

    if-lt p1, v3, :cond_156

    const/16 v3, 0x39

    if-gt p1, v3, :cond_156

    .line 1075
    add-int/lit8 v3, p1, -0x30

    aget-short v3, v2, v3

    .line 1169
    .end local v2           #keyMap:[S
    :cond_22
    :goto_22
    return v3

    .line 1072
    :cond_23
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD:[S

    goto :goto_16

    .line 1077
    :cond_26
    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_36

    .line 1078
    if-lt p1, v8, :cond_156

    if-gt p1, v9, :cond_156

    .line 1079
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_KEYPAD:[S

    add-int/lit8 v4, p1, -0x61

    aget-short v3, v3, v4

    goto :goto_22

    .line 1082
    :cond_36
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1083
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_KR:[S

    .line 1084
    .restart local v2       #keyMap:[S
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getShiftMode()B

    move-result v3

    if-eqz v3, :cond_64

    .line 1085
    if-lt p1, v8, :cond_64

    if-gt p1, v9, :cond_64

    .line 1086
    const/16 v0, 0x1a

    .line 1087
    .local v0, SHIFTED_KEY_MIN_INDEX:S
    add-int/lit8 v3, p1, -0x61

    aget-short v1, v2, v3

    .line 1088
    .local v1, keyIndex:S
    if-ltz v1, :cond_56

    const/16 v3, 0x9

    if-gt v1, v3, :cond_56

    add-int/lit8 v1, v1, 0x1a

    .end local v1           #keyIndex:S
    :cond_56
    int-to-short v3, v1

    goto :goto_22

    .line 1092
    .end local v0           #SHIFTED_KEY_MIN_INDEX:S
    .end local v2           #keyMap:[S
    :cond_58
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0x19

    if-eq v6, v7, :cond_62

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-ne v6, v8, :cond_84

    .line 1094
    :cond_62
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_RU:[S

    .line 1154
    .restart local v2       #keyMap:[S
    :cond_64
    :goto_64
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x19

    if-eq v3, v4, :cond_79

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x22

    if-eq v3, v4, :cond_79

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_79

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-ne v3, v8, :cond_14c

    .line 1158
    :cond_79
    if-lt p1, v8, :cond_156

    const/16 v3, 0x81

    if-gt p1, v3, :cond_156

    .line 1159
    add-int/lit8 v3, p1, -0x61

    aget-short v3, v2, v3

    goto :goto_22

    .line 1095
    .end local v2           #keyMap:[S
    :cond_84
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0x22

    if-ne v6, v7, :cond_8d

    .line 1096
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_UK:[S

    .restart local v2       #keyMap:[S
    goto :goto_64

    .line 1097
    .end local v2           #keyMap:[S
    :cond_8d
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v7, 0x2

    if-ne v6, v7, :cond_95

    .line 1098
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_BG:[S

    .restart local v2       #keyMap:[S
    goto :goto_64

    .line 1099
    .end local v2           #keyMap:[S
    :cond_95
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_9e

    .line 1100
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY:[S

    .restart local v2       #keyMap:[S
    goto :goto_64

    .line 1101
    .end local v2           #keyMap:[S
    :cond_9e
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v7, 0x6

    if-ne v6, v7, :cond_b8

    .line 1102
    const/16 v6, 0xe5

    if-eq p1, v6, :cond_22

    .line 1104
    const/16 v3, 0xe6

    if-ne p1, v3, :cond_ae

    move v3, v4

    .line 1105
    goto/16 :goto_22

    .line 1106
    :cond_ae
    const/16 v3, 0xf8

    if-ne p1, v3, :cond_b5

    move v3, v5

    .line 1107
    goto/16 :goto_22

    .line 1109
    :cond_b5
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .restart local v2       #keyMap:[S
    goto :goto_64

    .line 1110
    .end local v2           #keyMap:[S
    :cond_b8
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-ne v6, v4, :cond_d1

    .line 1111
    const/16 v6, 0xe5

    if-eq p1, v6, :cond_22

    .line 1113
    const/16 v3, 0xe6

    if-ne p1, v3, :cond_c7

    move v3, v5

    .line 1114
    goto/16 :goto_22

    .line 1115
    :cond_c7
    const/16 v3, 0xf8

    if-ne p1, v3, :cond_ce

    move v3, v4

    .line 1116
    goto/16 :goto_22

    .line 1118
    :cond_ce
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .restart local v2       #keyMap:[S
    goto :goto_64

    .line 1119
    .end local v2           #keyMap:[S
    :cond_d1
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0xb

    if-eq v6, v7, :cond_dd

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0x1d

    if-ne v6, v7, :cond_f3

    .line 1121
    :cond_dd
    const/16 v6, 0xe5

    if-eq p1, v6, :cond_22

    .line 1123
    const/16 v3, 0xf6

    if-ne p1, v3, :cond_e8

    move v3, v4

    .line 1124
    goto/16 :goto_22

    .line 1125
    :cond_e8
    const/16 v3, 0xe4

    if-ne p1, v3, :cond_ef

    move v3, v5

    .line 1126
    goto/16 :goto_22

    .line 1128
    :cond_ef
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .restart local v2       #keyMap:[S
    goto/16 :goto_64

    .line 1129
    .end local v2           #keyMap:[S
    :cond_f3
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0xc

    if-ne v6, v7, :cond_106

    .line 1130
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isNeededQwertz()Z

    move-result v3

    if-eqz v3, :cond_103

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTZ_FR:[S

    .restart local v2       #keyMap:[S
    :goto_101
    goto/16 :goto_64

    .end local v2           #keyMap:[S
    :cond_103
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_FR:[S

    goto :goto_101

    .line 1132
    :cond_106
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v7, 0x7

    if-eq v6, v7, :cond_128

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v7, 0x5

    if-eq v6, v7, :cond_128

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0x80

    if-eq v6, v7, :cond_128

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0x59

    if-eq v6, v7, :cond_128

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0xe

    if-eq v6, v7, :cond_128

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0x24

    if-ne v6, v7, :cond_12c

    .line 1140
    :cond_128
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_DE:[S

    .restart local v2       #keyMap:[S
    goto/16 :goto_64

    .line 1141
    .end local v2           #keyMap:[S
    :cond_12c
    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v7, 0xf

    if-ne v6, v7, :cond_148

    .line 1142
    const/16 v6, 0xf0

    if-eq p1, v6, :cond_22

    .line 1144
    const/16 v3, 0xe6

    if-ne p1, v3, :cond_13d

    move v3, v4

    .line 1145
    goto/16 :goto_22

    .line 1146
    :cond_13d
    const/16 v3, 0xfe

    if-ne p1, v3, :cond_144

    move v3, v5

    .line 1147
    goto/16 :goto_22

    .line 1149
    :cond_144
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .restart local v2       #keyMap:[S
    goto/16 :goto_64

    .line 1152
    .end local v2           #keyMap:[S
    :cond_148
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY:[S

    .restart local v2       #keyMap:[S
    goto/16 :goto_64

    .line 1162
    :cond_14c
    if-lt p1, v8, :cond_156

    if-gt p1, v9, :cond_156

    .line 1163
    add-int/lit8 v3, p1, -0x61

    aget-short v3, v2, v3

    goto/16 :goto_22

    .line 1169
    .end local v2           #keyMap:[S
    :cond_156
    const/16 v3, 0x80

    goto/16 :goto_22
.end method

.method private makeSuggetionList(Ljava/util/List;[Ljava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter "words"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-ge v0, v1, :cond_d

    .line 1010
    aget-object v1, p2, v0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1012
    :cond_d
    return-void
.end method

.method private setXT9InputMode()V
    .registers 4

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, wStatus:S
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-nez v1, :cond_11

    .line 612
    const/4 v0, 0x0

    .line 613
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetAmbigMode()S

    move-result v0

    .line 614
    if-eqz v0, :cond_10

    .line 625
    :cond_10
    :goto_10
    return-void

    .line 617
    :cond_11
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 618
    const/4 v0, 0x0

    .line 620
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetMultiTapMode()S

    move-result v0

    .line 621
    if-eqz v0, :cond_10

    goto :goto_10
.end method


# virtual methods
.method public IsAutoAcceptBeforeTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z
    .registers 5
    .parameter "pPoints"
    .parameter "nPointCount"
    .parameter "pbAddSpace"

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->IsAutoAcceptBeforeTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v0

    return v0
.end method

.method public ProcessTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;IB)S
    .registers 7
    .parameter "pTracePoints"
    .parameter "nTracePointCount"
    .parameter "bCurrIndexInList"

    .prologue
    .line 1510
    const/4 v0, 0x0

    .line 1511
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->ProcessTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;IB)S

    move-result v0

    .line 1512
    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 1513
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1521
    :goto_f
    return v0

    .line 1516
    :cond_10
    if-eqz v0, :cond_12

    .line 1520
    :cond_12
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetUDBDelayedReorder(Z)S

    goto :goto_f
.end method

.method public breakContext()S
    .registers 3

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->CDBBreakContext()S

    move-result v0

    .line 1026
    .local v0, wStatus:S
    return v0
.end method

.method public changeKDBNum(II)V
    .registers 16
    .parameter "inputType"
    .parameter "editorType"

    .prologue
    .line 541
    const/4 v9, 0x0

    .line 544
    .local v9, wStatus:S
    const/4 v10, 0x1

    new-array v3, v10, [S

    .line 545
    .local v3, pwFirstKdbNum:[S
    const/4 v10, 0x1

    new-array v6, v10, [S

    .line 546
    .local v6, pwSecondKdbNum:[S
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v10, v3, v6}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetKdbNum([S[S)S

    move-result v9

    .line 547
    if-eqz v9, :cond_11

    .line 552
    :cond_11
    const/4 v10, 0x1

    new-array v5, v10, [S

    .line 553
    .local v5, pwFirstPageNum:[S
    const/4 v10, 0x1

    new-array v8, v10, [S

    .line 554
    .local v8, pwSecondPageNum:[S
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v10, v5, v8}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetPageNum([S[S)S

    move-result v9

    .line 555
    if-eqz v9, :cond_21

    .line 560
    :cond_21
    const/4 v10, 0x1

    new-array v4, v10, [S

    .line 561
    .local v4, pwFirstLdbNum:[S
    const/4 v10, 0x1

    new-array v7, v10, [S

    .line 562
    .local v7, pwSecondLdbNum:[S
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v10, v4, v7}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbGetLanguage([S[S)S

    move-result v9

    .line 563
    if-eqz v9, :cond_31

    .line 567
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v10

    if-eqz v10, :cond_45

    .line 568
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-short v11, v4, v11

    const v12, 0xff00

    and-int/2addr v11, v12

    iget-short v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v4, v10

    .line 571
    :cond_45
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, firstPageNum:S
    const/4 v1, 0x0

    .line 575
    .local v1, firstKdbNum:S
    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-nez v10, :cond_76

    .line 576
    const/4 v10, 0x0

    aget-short v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int/lit16 v10, v10, 0x600

    int-to-short v1, v10

    .line 593
    :goto_55
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    const/4 v11, 0x0

    aget-short v11, v6, v11

    const/4 v12, 0x0

    aget-short v12, v8, v12

    invoke-virtual {v10, v1, v2, v11, v12}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetKdbNum(SSSS)S

    move-result v9

    .line 594
    if-eqz v9, :cond_65

    .line 598
    :cond_65
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    const/4 v11, 0x0

    aget-short v11, v8, v11

    invoke-virtual {v10, v2, v11}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetPageNum(SS)S

    move-result v9

    .line 599
    if-eqz v9, :cond_72

    .line 603
    :cond_72
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setXT9InputMode()V

    .line 604
    return-void

    .line 577
    :cond_76
    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8f

    .line 578
    const/4 v10, 0x3

    if-ne p2, v10, :cond_88

    .line 579
    const/4 v2, 0x3

    .line 586
    :goto_7f
    const/4 v10, 0x0

    aget-short v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int/lit16 v10, v10, 0x500

    int-to-short v1, v10

    goto :goto_55

    .line 580
    :cond_88
    const/4 v10, 0x2

    if-ne p2, v10, :cond_8d

    .line 581
    const/4 v2, 0x2

    goto :goto_7f

    .line 583
    :cond_8d
    const/4 v2, 0x1

    goto :goto_7f

    .line 588
    :cond_8f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v10

    if-eqz v10, :cond_9f

    const/16 v0, 0x900

    .line 590
    .local v0, ET9SKID:S
    :goto_97
    const/4 v10, 0x0

    aget-short v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v0

    int-to-short v1, v10

    goto :goto_55

    .line 588
    .end local v0           #ET9SKID:S
    :cond_9f
    const/16 v0, 0x700

    goto :goto_97
.end method

.method public clearAllSymbs()S
    .registers 3

    .prologue
    .line 1279
    const/4 v0, 0x0

    .line 1280
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->ClearAllSymbs()S

    move-result v0

    .line 1281
    if-eqz v0, :cond_b

    .line 1284
    :cond_b
    return v0
.end method

.method public clearAlreadyInitFlag()V
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    .line 189
    return-void
.end method

.method public clearOneSymb()S
    .registers 3

    .prologue
    .line 1288
    const/4 v0, 0x0

    .line 1289
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->ClearOneSymb()S

    move-result v0

    .line 1290
    if-eqz v0, :cond_b

    .line 1293
    :cond_b
    return v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    .line 227
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    .line 230
    return-void
.end method

.method public doRecapture(Ljava/lang/String;S)V
    .registers 6
    .parameter "word"
    .parameter "length"

    .prologue
    .line 737
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRecaptureOn:Z

    if-eqz v2, :cond_25

    .line 738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 739
    .local v1, wordbuf:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 740
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 742
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v2, v1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->ReselectWord([SS)S

    .line 743
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 745
    .end local v0           #i:I
    .end local v1           #wordbuf:[S
    :cond_25
    return-void
.end method

.method public explictSymb(S)S
    .registers 3
    .parameter "wKeyIndex"

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getShiftMode()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    move-result v0

    return v0
.end method

.method public explictSymb(SB)S
    .registers 6
    .parameter "wKeyIndex"
    .parameter "currentShiftMode"

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->ExplicitSymb(SBB)S

    move-result v0

    .line 1203
    if-eqz v0, :cond_f

    .line 1206
    :cond_f
    return v0
.end method

.method public getAWInputWords(I)Ljava/lang/CharSequence;
    .registers 10
    .parameter "wordIndex"

    .prologue
    const/16 v3, 0x40

    .line 963
    iget-byte v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-lez v5, :cond_66

    .line 964
    iget-byte v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-ge p1, v5, :cond_1a

    move v1, p1

    .line 965
    .local v1, index:I
    :goto_b
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    int-to-byte v6, v1

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstGetWord(BLcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;)S

    move-result v4

    .line 967
    .local v4, wStatus:S
    if-eqz v4, :cond_1c

    .line 969
    const/4 v5, 0x0

    .line 989
    .end local v1           #index:I
    .end local v4           #wStatus:S
    :goto_19
    return-object v5

    .line 964
    :cond_1a
    const/4 v1, 0x0

    goto :goto_b

    .line 972
    .restart local v1       #index:I
    .restart local v4       #wStatus:S
    :cond_1c
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    if-ge v5, v3, :cond_26

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v3, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    .line 974
    .local v3, size:I
    :cond_26
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 976
    .local v2, sb:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-eqz v5, :cond_51

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAutoSubstitutionEnabled()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 978
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3e
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v0, v5, :cond_61

    .line 979
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 983
    .end local v0           #i:I
    :cond_51
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_52
    if-ge v0, v3, :cond_61

    .line 984
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 987
    :cond_61
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 989
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    .end local v3           #size:I
    .end local v4           #wStatus:S
    :cond_66
    const-string v5, ""

    goto :goto_19
.end method

.method public getActiveWordIndexOfSelList()B
    .registers 2

    .prologue
    .line 852
    iget-byte v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    return v0
.end method

.method public getHangulWord()Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;
    .registers 2

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    return-object v0
.end method

.method public getInputLanguageId()S
    .registers 2

    .prologue
    .line 1497
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    return v0
.end method

.method public getInputWords()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 907
    iget-byte v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getInputWords(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "wordIndex"

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 912
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getKInputWords()Ljava/lang/CharSequence;

    move-result-object v0

    .line 914
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getAWInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public getKDBStateBits()I
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetStateBits()I

    move-result v0

    return v0
.end method

.method public getKInputWords()Ljava/lang/CharSequence;
    .registers 12

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 919
    const/4 v6, 0x1

    .line 920
    .local v6, wStatus:S
    new-array v3, v9, [S

    .line 921
    .local v3, multiTapSequence:[S
    new-array v5, v8, [S

    .line 922
    .local v5, totalSymbols:[S
    new-array v1, v8, [B

    .line 924
    .local v1, currentSymbol:[B
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v7, v3, v9, v5, v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->getMultiTapSequence([SS[S[B)S

    .line 926
    aget-short v7, v5, v10

    if-ne v7, v8, :cond_1d

    .line 927
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->invokeTimeOut()V

    .line 928
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->EMPTY_MULTITAP_SEQ:[S

    .line 929
    aput-short v10, v5, v10

    .line 932
    :cond_1d
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 933
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    aget-short v9, v5, v10

    invoke-virtual {v7, v8, v3, v9}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;->BuildHangul(Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S

    move-result v6

    .line 934
    if-eqz v6, :cond_30

    .line 939
    :cond_30
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    if-lez v7, :cond_4f

    .line 941
    const/4 v2, 0x0

    .local v2, i:I
    :goto_37
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    if-ge v2, v7, :cond_4f

    .line 942
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v8, v8, v2

    int-to-byte v8, v8

    invoke-virtual {v7, v10, v8}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->DeleteSymbs(BB)S

    move-result v6

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 946
    .end local v2           #i:I
    :cond_4f
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v7, 0x40

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 948
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_57
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v2, v7, :cond_83

    .line 950
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v7, v7, v2

    int-to-char v7, v7

    invoke-static {v7}, Lcom/diotek/util/HangulManager;->isHangulJamo(C)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 951
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v7, v7, v2

    invoke-static {v7}, Lcom/diotek/util/HangulManager;->convJamoToCompatibiltyJamo(I)I

    move-result v7

    int-to-char v0, v7

    .line 955
    .local v0, code:C
    :goto_75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 953
    .end local v0           #code:C
    :cond_7b
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v7, v7, v2

    int-to-char v0, v7

    .restart local v0       #code:C
    goto :goto_75

    .line 958
    .end local v0           #code:C
    :cond_83
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getLanguageInfoListSize()I
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShiftMode()B
    .registers 3

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->GetStateBits()I

    move-result v0

    .line 1413
    .local v0, stateBits:I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_e

    .line 1414
    const/4 v1, 0x2

    .line 1418
    :goto_d
    return v1

    .line 1415
    :cond_e
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 1416
    const/4 v1, 0x1

    goto :goto_d

    .line 1418
    :cond_14
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getSuggestion()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    return-object v0
.end method

.method public getSuggetionFromXT9()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x40

    .line 878
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 880
    iget-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-lez v4, :cond_48

    .line 881
    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 882
    .local v3, wordList:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-ge v0, v4, :cond_40

    .line 888
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    .line 890
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v4, v4, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-lez v4, :cond_3d

    .line 891
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 892
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_24
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v4, v4, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v1, v4, :cond_37

    .line 893
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v4, v4, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v4, v4, v1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 895
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 882
    .end local v1           #j:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 899
    :cond_40
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->makeSuggetionList(Ljava/util/List;[Ljava/lang/CharSequence;)V

    .line 900
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    .line 903
    .end local v0           #i:I
    .end local v3           #wordList:[Ljava/lang/CharSequence;
    :goto_47
    return-object v4

    :cond_48
    const/4 v4, 0x0

    goto :goto_47
.end method

.method public initASDB()S
    .registers 5

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    const/16 v3, 0x2800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->ASDBInit([BS)S

    move-result v0

    .line 1450
    .local v0, wStatus:S
    if-eqz v0, :cond_e

    .line 1453
    :cond_e
    return v0
.end method

.method public initCDB()S
    .registers 5

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    const/16 v3, 0x800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->CDBInit([BS)S

    move-result v0

    .line 1434
    .local v0, wStatus:S
    if-eqz v0, :cond_e

    .line 1437
    :cond_e
    return v0
.end method

.method public initCore(S)V
    .registers 4
    .parameter "inputLanguageId"

    .prologue
    const/4 v1, 0x1

    .line 169
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 171
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    if-nez v0, :cond_1b

    .line 173
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->readDBdataFromFile(B)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->readDBdataFromFile(B)V

    .line 175
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->readDBdataFromFile(B)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initLinguistic()V

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initKDB()V

    .line 179
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    .line 185
    :goto_1a
    return-void

    .line 182
    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initSubLinguistic()V

    goto :goto_1a
.end method

.method public initKDB()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 418
    const/4 v6, 0x0

    .line 420
    .local v6, wStatus:S
    const/4 v2, 0x0

    .line 421
    .local v2, wFirstKdbNum:S
    const/4 v3, 0x0

    .line 422
    .local v3, wFirstPageNum:S
    const/4 v4, 0x0

    .line 423
    .local v4, wSecondKdbNum:S
    const/4 v5, 0x0

    .line 425
    .local v5, wSecondPageNum:S
    new-array v0, v9, [S

    .line 426
    .local v0, pwFirstLdbNum:[S
    new-array v1, v9, [S

    .line 429
    .local v1, pwSecondLdbNum:[S
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbGetLanguage([S[S)S

    move-result v6

    .line 430
    if-eqz v6, :cond_15

    .line 434
    :cond_15
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-nez v7, :cond_39

    .line 435
    aget-short v7, v0, v8

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x600

    int-to-short v2, v7

    .line 442
    :goto_20
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v7, v2, v3, v4, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->Init(SSSS)S

    move-result v6

    .line 443
    if-eqz v6, :cond_2a

    .line 465
    :cond_2a
    const/4 v6, 0x0

    .line 466
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v7, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->Validate(S)S

    move-result v6

    .line 467
    if-eqz v6, :cond_35

    .line 485
    :cond_35
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setXT9InputMode()V

    .line 486
    return-void

    .line 436
    :cond_39
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-ne v7, v9, :cond_45

    .line 437
    aget-short v7, v0, v8

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x500

    int-to-short v2, v7

    goto :goto_20

    .line 439
    :cond_45
    aget-short v7, v0, v8

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x700

    int-to-short v2, v7

    goto :goto_20
.end method

.method public initLanguage()V
    .registers 6

    .prologue
    .line 310
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mT9Language:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 311
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mT9Language:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    .line 313
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    if-nez v3, :cond_1c

    .line 314
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    .line 317
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_46

    .line 318
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v1

    .line 319
    .local v1, langId:S
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v3, v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbValidate(S)S

    move-result v2

    .line 321
    .local v2, wStatus:S
    if-nez v2, :cond_40

    .line 323
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 317
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 326
    :cond_40
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    goto :goto_3d

    .line 329
    .end local v1           #langId:S
    .end local v2           #wStatus:S
    :cond_46
    return-void
.end method

.method public initLinguistic()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->Init()S

    move-result v0

    .line 241
    if-eqz v0, :cond_e

    .line 246
    :cond_e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;->Init()S

    move-result v0

    .line 247
    if-eqz v0, :cond_18

    .line 252
    :cond_18
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbInit()S

    move-result v0

    .line 253
    if-eqz v0, :cond_22

    .line 257
    :cond_22
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-short v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbValidate(S)S

    move-result v0

    .line 258
    if-nez v0, :cond_73

    .line 259
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-short v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v0

    .line 260
    if-eqz v0, :cond_3a

    .line 271
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initLanguage()V

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initCDB()S

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initASDB()S

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    .line 276
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetUDBDelayedReorder(Z)S

    move-result v0

    .line 277
    if-eqz v0, :cond_50

    .line 280
    :cond_50
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v5}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetWordStemsPoint(S)S

    move-result v0

    .line 281
    if-eqz v0, :cond_5a

    .line 286
    :cond_5a
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    if-eqz v1, :cond_80

    .line 287
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    .line 288
    if-eqz v0, :cond_68

    .line 303
    :cond_68
    :goto_68
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoSubstitution(Z)V

    .line 304
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoAppend(Z)V

    .line 305
    return-void

    .line 265
    :cond_73
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v0

    .line 266
    if-eqz v0, :cond_3a

    goto :goto_3a

    .line 293
    :cond_80
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-nez v1, :cond_8f

    .line 294
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v5}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    .line 298
    :cond_8c
    :goto_8c
    if-eqz v0, :cond_68

    goto :goto_68

    .line 295
    :cond_8f
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-ne v1, v4, :cond_8c

    .line 296
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    goto :goto_8c
.end method

.method public initRUDB()S
    .registers 5

    .prologue
    .line 1441
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    const/16 v3, 0x5000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->UDBInit([BS)S

    move-result v0

    .line 1442
    .local v0, wStatus:S
    if-eqz v0, :cond_e

    .line 1445
    :cond_e
    return v0
.end method

.method public invokeTimeOut()V
    .registers 3

    .prologue
    .line 514
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->TimeOut()S

    move-result v0

    .line 516
    .local v0, wStatus:S
    if-eqz v0, :cond_a

    .line 519
    :cond_a
    return-void
.end method

.method public isAlphabetInputMode()Z
    .registers 3

    .prologue
    .line 1477
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_8

    .line 1478
    const/4 v0, 0x0

    .line 1480
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isAmbiguousMode()Z
    .registers 3

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getKDBStateBits()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    .line 536
    .local v0, result:Z
    :goto_9
    return v0

    .line 533
    .end local v0           #result:Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAutoSubstitutionEnabled()Z
    .registers 2

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    return v0
.end method

.method public isHangulInputMode()Z
    .registers 3

    .prologue
    .line 1473
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isMultitapMode()Z
    .registers 3

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getKDBStateBits()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_a

    const/4 v0, 0x1

    .line 529
    .local v0, result:Z
    :goto_9
    return v0

    .line 526
    .end local v0           #result:Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isNeededQwertz()Z
    .registers 5

    .prologue
    .line 1525
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1526
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1528
    .local v1, language:Ljava/lang/String;
    const-string v3, "CH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "de"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "it"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "fr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2c
    const/4 v3, 0x1

    :goto_2d
    return v3

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method public isNonAlphabetLanguage()Z
    .registers 3

    .prologue
    .line 1485
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x12

    if-eq v0, v1, :cond_23

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_23

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_23

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_23

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_25

    .line 1491
    :cond_23
    const/4 v0, 0x1

    .line 1493
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public noteWordDone(I)V
    .registers 7
    .parameter "index"

    .prologue
    .line 1236
    const/4 v1, 0x0

    .line 1237
    .local v1, wStatus:S
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    .line 1240
    .local v0, pCurrentActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    int-to-byte v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstGetWord(BLcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;)S

    move-result v1

    .line 1241
    if-eqz v1, :cond_11

    .line 1245
    :cond_11
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v1

    .line 1246
    if-eqz v1, :cond_25

    .line 1248
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v1

    .line 1249
    if-eqz v1, :cond_26

    .line 1258
    :cond_25
    :goto_25
    return-void

    .line 1252
    :cond_26
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v1

    .line 1253
    if-eqz v1, :cond_25

    goto :goto_25
.end method

.method public noteWordDoneByActiveWord()V
    .registers 5

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1263
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v0

    .line 1264
    if-eqz v0, :cond_19

    .line 1266
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v0

    .line 1267
    if-eqz v0, :cond_1a

    .line 1276
    :cond_19
    :goto_19
    return-void

    .line 1270
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v0

    .line 1271
    if-eqz v0, :cond_19

    goto :goto_19
.end method

.method public processKey(S)S
    .registers 3
    .parameter "wKeyIndex"

    .prologue
    .line 1210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->processKey(SZ)S

    move-result v0

    return v0
.end method

.method public processKey(SZ)S
    .registers 8
    .parameter "wKeyIndex"
    .parameter "isHWInput"

    .prologue
    .line 1214
    const/4 v3, 0x1

    new-array v0, v3, [S

    .line 1215
    .local v0, sFunctionKey:[S
    const/4 v2, 0x0

    .line 1216
    .local v2, wStatus:S
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->lookupChar(SZ)S

    move-result v1

    .line 1220
    .local v1, wKeytoMapVal:S
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->ProcessKey(SB[S)S

    move-result v2

    .line 1221
    if-eqz v2, :cond_13

    .line 1224
    :cond_13
    return v2
.end method

.method public readDBdataFromFile(B)V
    .registers 15
    .parameter "dbType"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1360
    const-string v4, ""

    .line 1363
    .local v4, fileName:Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1364
    const-string v4, "xT9UdbData.dat"

    .line 1371
    :cond_8
    :goto_8
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mContext:Landroid/content/Context;

    const-string v9, "xT9DB"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1372
    .local v0, dir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1374
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 1375
    const/4 v5, 0x0

    .line 1376
    .local v5, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 1378
    .local v7, returnOfRead:I
    :try_start_1e
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_85
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_54
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_76

    .line 1379
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    if-nez p1, :cond_3c

    .line 1380
    :try_start_25
    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_a0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_9d

    move-result v7

    .line 1395
    :cond_2b
    :goto_2b
    if-eqz v6, :cond_30

    :try_start_2d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4e

    :cond_30
    move-object v5, v6

    .line 1408
    .end local v6           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_31
    :goto_31
    return-void

    .line 1365
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    :cond_32
    if-ne p1, v11, :cond_37

    .line 1366
    const-string v4, "xT9CdbData.dat"

    goto :goto_8

    .line 1367
    :cond_37
    if-ne p1, v12, :cond_8

    .line 1368
    const-string v4, "xT9ASdbData.dat"

    goto :goto_8

    .line 1382
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :cond_3c
    if-ne p1, v11, :cond_45

    .line 1383
    :try_start_3e
    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    goto :goto_2b

    .line 1385
    :cond_45
    if-ne p1, v12, :cond_2b

    .line 1386
    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4c} :catch_a0
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4c} :catch_9d

    move-result v7

    goto :goto_2b

    .line 1396
    :catch_4e
    move-exception v1

    .line 1397
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 1399
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_31

    .line 1389
    .end local v1           #e:Ljava/io/IOException;
    :catch_54
    move-exception v1

    .line 1390
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_55
    :try_start_55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File was removed durning test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_85

    .line 1395
    if-eqz v5, :cond_31

    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_31

    .line 1396
    :catch_71
    move-exception v1

    .line 1397
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 1391
    .end local v1           #e:Ljava/io/IOException;
    :catch_76
    move-exception v1

    .line 1392
    .restart local v1       #e:Ljava/io/IOException;
    :goto_77
    :try_start_77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_85

    .line 1395
    if-eqz v5, :cond_31

    :try_start_7c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_31

    .line 1396
    :catch_80
    move-exception v1

    .line 1397
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 1394
    .end local v1           #e:Ljava/io/IOException;
    :catchall_85
    move-exception v8

    .line 1395
    :goto_86
    if-eqz v5, :cond_8b

    :try_start_88
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    .line 1398
    :cond_8b
    :goto_8b
    throw v8

    .line 1396
    :catch_8c
    move-exception v1

    .line 1397
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8b

    .line 1402
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_91
    :try_start_91
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_31

    .line 1403
    :catch_95
    move-exception v2

    .line 1404
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 1394
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_9a
    move-exception v8

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_86

    .line 1391
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_9d
    move-exception v1

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_77

    .line 1389
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_a0
    move-exception v1

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_55
.end method

.method public selectWord(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1229
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstSelWord(B)S

    .line 1230
    if-eqz v0, :cond_b

    .line 1233
    :cond_b
    return-void
.end method

.method public setAutoAppend(Z)V
    .registers 5
    .parameter "set"

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    .line 706
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetAutoAppendInList(Z)S

    move-result v0

    .line 708
    if-eqz v0, :cond_f

    .line 711
    :cond_f
    return-void
.end method

.method public setAutoAppendEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 800
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    .line 801
    return-void
.end method

.method public setAutoSubstitution(Z)V
    .registers 5
    .parameter "set"

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    .line 716
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetLDBAutoSubstitution(Z)S

    move-result v0

    .line 717
    if-eqz v0, :cond_f

    .line 721
    :cond_f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetUserDefinedAutoSubstitution(Z)S

    move-result v0

    .line 722
    if-eqz v0, :cond_21

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initASDB()S

    move-result v0

    .line 725
    if-eqz v0, :cond_22

    .line 734
    :cond_21
    :goto_21
    return-void

    .line 728
    :cond_22
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetUserDefinedAutoSubstitution(Z)S

    move-result v0

    .line 729
    if-eqz v0, :cond_21

    goto :goto_21
.end method

.method public setAutoSubstitutionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    .line 805
    return-void
.end method

.method public setCorrection(B)V
    .registers 5
    .parameter "eSpellMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, wStatus:S
    if-nez p1, :cond_14

    .line 660
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 661
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    .line 670
    :goto_9
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    .line 672
    if-eqz v0, :cond_13

    .line 675
    :cond_13
    return-void

    .line 662
    :cond_14
    if-ne p1, v2, :cond_1b

    .line 663
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 664
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    goto :goto_9

    .line 666
    :cond_1b
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 667
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    goto :goto_9
.end method

.method public setCorrectionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 797
    return-void
.end method

.method public setInputLanguage(II)S
    .registers 11
    .parameter "validLangIndex"
    .parameter "editorType"

    .prologue
    const/16 v6, 0x12

    .line 342
    const/4 v3, 0x0

    .line 343
    .local v3, numberOfValidLang:B
    const/4 v1, 0x0

    .line 347
    .local v1, indexOfValidLang:B
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v5

    if-ne v5, v6, :cond_20

    .line 348
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 349
    iput-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 350
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 352
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 376
    :goto_1f
    return v5

    .line 355
    :cond_20
    const/4 v0, 0x0

    .local v0, i:B
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-byte v2, v5

    .local v2, n:B
    :goto_28
    if-ge v0, v2, :cond_33

    .line 356
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_51

    .line 357
    if-ne v3, p1, :cond_51

    .line 358
    move v1, v0

    .line 365
    :cond_33
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v5

    iput-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 366
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v4

    .line 367
    .local v4, wStatus:S
    if-eqz v4, :cond_58

    .line 376
    :goto_4e
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    goto :goto_1f

    .line 362
    .end local v4           #wStatus:S
    :cond_51
    add-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    .line 355
    add-int/lit8 v5, v0, 0x1

    int-to-byte v0, v5

    goto :goto_28

    .line 373
    .restart local v4       #wStatus:S
    :cond_58
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    goto :goto_4e
.end method

.method public setInputLanguageWithID(SI)V
    .registers 8
    .parameter "languageID"
    .parameter "editorType"

    .prologue
    .line 382
    const/4 v0, 0x0

    .local v0, i:B
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v1, v3

    .local v1, n:B
    :goto_8
    if-ge v0, v1, :cond_23

    .line 383
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    if-ne v3, p1, :cond_3d

    .line 384
    const/16 v3, 0x12

    if-ne p1, v3, :cond_24

    .line 385
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 386
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 407
    :cond_23
    :goto_23
    return-void

    .line 389
    :cond_24
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_23

    .line 390
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v2

    .line 391
    .local v2, wStatus:S
    if-nez v2, :cond_23

    .line 397
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 398
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    goto :goto_23

    .line 382
    .end local v2           #wStatus:S
    :cond_3d
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_8
.end method

.method public setInputMode(I)V
    .registers 3
    .parameter "inputMode"

    .prologue
    .line 1299
    if-ltz p1, :cond_e

    const/4 v0, 0x1

    if-gt p1, v0, :cond_e

    .line 1300
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-eq v0, p1, :cond_b

    .line 1301
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    .line 1303
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setXT9InputMode()V

    .line 1305
    :cond_e
    return-void
.end method

.method public setKeyboardSize(SS)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetKeyboardSize(SS)S

    .line 1503
    return-void
.end method

.method public setNextWordPrediction(Z)V
    .registers 5
    .parameter "set"

    .prologue
    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mPredictionOn:Z

    .line 649
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mPredictionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetDBPrediction(Z)S

    move-result v0

    .line 651
    if-eqz v0, :cond_f

    .line 654
    :cond_f
    return-void
.end method

.method public setNextWordPredictionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mPredictionOn:Z

    .line 793
    return-void
.end method

.method public setRecapture(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 748
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRecaptureOn:Z

    .line 749
    return-void
.end method

.method public setRecaptureEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRecaptureOn:Z

    .line 825
    return-void
.end method

.method public setRegionalCorrectionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 808
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    .line 809
    return-void
.end method

.method public setRegionalCorrectionOn(Z)S
    .registers 4
    .parameter "enabled"

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 814
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetRegionalCorrection(Z)S

    move-result v0

    .line 816
    if-eqz v0, :cond_b

    .line 820
    :cond_b
    return v0
.end method

.method public setShiftMode(B)V
    .registers 4
    .parameter "bShiftState"

    .prologue
    .line 1423
    const/4 v0, 0x0

    .line 1425
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetShiftState(B)S

    move-result v0

    .line 1426
    if-eqz v0, :cond_b

    .line 1429
    :cond_b
    return-void
.end method

.method public setTrace(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mTraceOn:Z

    .line 753
    return-void
.end method

.method public setTraceEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 828
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mTraceOn:Z

    .line 829
    return-void
.end method

.method public setWordCompletion(Z)V
    .registers 5
    .parameter "set"

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    .line 630
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetDBCompletion(Z)S

    move-result v0

    .line 632
    if-eqz v0, :cond_f

    .line 635
    :cond_f
    return-void
.end method

.method public setWordCompletionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 788
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    .line 789
    return-void
.end method

.method public setWordCompletionPoint(S)V
    .registers 4
    .parameter "point"

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetWordCompletionPoint(S)S

    move-result v0

    .line 641
    if-eqz v0, :cond_b

    .line 644
    :cond_b
    return-void
.end method

.method public updateSelectList()B
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 832
    const/4 v2, 0x0

    .line 833
    .local v2, wStatus:S
    new-array v1, v3, [B

    .line 834
    .local v1, bTotalWords:[B
    new-array v0, v3, [B

    .line 836
    .local v0, bDefaultListIndex:[B
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v3, v1, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstBuild([B[B)S

    move-result v2

    .line 837
    if-eqz v2, :cond_18

    .line 839
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 840
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    .line 848
    :goto_15
    iget-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    return v3

    .line 844
    :cond_18
    aget-byte v3, v1, v4

    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 845
    aget-byte v3, v0, v4

    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    goto :goto_15
.end method

.method public updateSelectListPostShift(B)B
    .registers 7
    .parameter "eMode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 856
    const/4 p1, 0x3

    .line 857
    const/4 v2, 0x0

    .line 858
    .local v2, wStatus:S
    new-array v1, v3, [B

    .line 859
    .local v1, bTotalWords:[B
    new-array v0, v3, [B

    .line 861
    .local v0, bDefaultListIndex:[B
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v3, p1, v1, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstPostShift(B[B[B)S

    move-result v2

    .line 862
    if-eqz v2, :cond_19

    .line 864
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 865
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    .line 873
    :goto_16
    iget-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    return v3

    .line 869
    :cond_19
    aget-byte v3, v1, v4

    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    goto :goto_16
.end method

.method public writeDBdataToFile(B)V
    .registers 14
    .parameter "dbType"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1309
    const-string v4, ""

    .line 1312
    .local v4, fileName:Ljava/lang/String;
    if-nez p1, :cond_3d

    .line 1313
    const-string v4, "xT9UdbData.dat"

    .line 1320
    :cond_9
    :goto_9
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mContext:Landroid/content/Context;

    const-string v8, "xT9DB"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1321
    .local v0, dir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1322
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 1324
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_47

    .line 1329
    :cond_1f
    :goto_1f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1330
    const/4 v5, 0x0

    .line 1332
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_26
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_88
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2c} :catch_99
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_97

    .line 1333
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    if-nez p1, :cond_4c

    .line 1334
    :try_start_2e
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_94
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_36} :catch_57
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_72

    .line 1345
    :cond_36
    :goto_36
    if-eqz v6, :cond_9b

    .line 1347
    :try_start_38
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_82

    move-object v5, v6

    .line 1356
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_3c
    :goto_3c
    return-void

    .line 1314
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    :cond_3d
    if-ne p1, v10, :cond_42

    .line 1315
    const-string v4, "xT9CdbData.dat"

    goto :goto_9

    .line 1316
    :cond_42
    if-ne p1, v11, :cond_9

    .line 1317
    const-string v4, "xT9ASdbData.dat"

    goto :goto_9

    .line 1325
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_47
    move-exception v2

    .line 1326
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 1335
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_4c
    if-ne p1, v10, :cond_67

    .line 1336
    :try_start_4e
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    const/4 v8, 0x0

    const/16 v9, 0x800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_94
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_72

    goto :goto_36

    .line 1340
    :catch_57
    move-exception v1

    move-object v5, v6

    .line 1341
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :goto_59
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_88

    .line 1345
    if-eqz v5, :cond_3c

    .line 1347
    :try_start_5e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_3c

    .line 1348
    :catch_62
    move-exception v1

    .line 1349
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 1337
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_67
    if-ne p1, v11, :cond_36

    .line 1338
    :try_start_69
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_94
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_71} :catch_57
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_36

    .line 1342
    :catch_72
    move-exception v1

    move-object v5, v6

    .line 1343
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :goto_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_88

    .line 1345
    if-eqz v5, :cond_3c

    .line 1347
    :try_start_79
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_3c

    .line 1348
    :catch_7d
    move-exception v1

    .line 1349
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 1348
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_82
    move-exception v1

    .line 1349
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 1350
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3c

    .line 1345
    .end local v1           #e:Ljava/io/IOException;
    :catchall_88
    move-exception v7

    :goto_89
    if-eqz v5, :cond_8e

    .line 1347
    :try_start_8b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 1350
    :cond_8e
    :goto_8e
    throw v7

    .line 1348
    :catch_8f
    move-exception v1

    .line 1349
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8e

    .line 1345
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_94
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_89

    .line 1342
    :catch_97
    move-exception v1

    goto :goto_74

    .line 1340
    :catch_99
    move-exception v1

    goto :goto_59

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_9b
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3c
.end method
