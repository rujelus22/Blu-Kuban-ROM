.class public Lcom/sec/android/app/calculator/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# static fields
.field private static TEXT_SIZE_LARGE_LAND:F

.field private static TEXT_SIZE_LARGE_PORT:F

.field private static TEXT_SIZE_MEDIUM_LAND:F

.field private static TEXT_SIZE_MEDIUM_PORT:F

.field private static TEXT_SIZE_SMALL_LAND:F

.field private static TEXT_SIZE_SMALL_PORT:F


# instance fields
.field public SelectedTextSize:F

.field private checkChar:[Ljava/lang/String;

.field public delst:Z

.field public errorCursor:I

.field private exception:Lcom/sec/android/app/calculator/SyntaxException;

.field private frontText:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private isLongClick:Z

.field private isSelecting:Z

.field private isSelectingAll:Z

.field public lastError:I

.field private mContext:Landroid/content/Context;

.field private mCursorState:Z

.field private mDisplay:Landroid/widget/EditText;

.field public mEnterEnd:Z

.field private mHistory:Lcom/sec/android/app/calculator/History;

.field private mHistoryScreen:Landroid/widget/EditText;

.field private mIsError:Z

.field private mIsOpenedSignParenthesis:Z

.field public mPaste:Z

.field private mType:Landroid/graphics/Typeface;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const/high16 v0, 0x423c

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_PORT:F

    .line 91
    const/high16 v0, 0x428c

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_PORT:F

    .line 93
    const/high16 v0, 0x430d

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_PORT:F

    .line 95
    const/high16 v0, 0x41e8

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_LAND:F

    .line 97
    const/high16 v0, 0x4234

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_LAND:F

    .line 99
    const/high16 v0, 0x42c4

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_LAND:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;Landroid/graphics/Typeface;)V
    .registers 11
    .parameter "context"
    .parameter "display"
    .parameter "hisscreen"
    .parameter "history"
    .parameter "font"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Lcom/sec/android/app/calculator/SyntaxException;

    invoke-direct {v1}, Lcom/sec/android/app/calculator/SyntaxException;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    .line 63
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 65
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mCursorState:Z

    .line 68
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    .line 71
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    .line 73
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->isLongClick:Z

    .line 75
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 77
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    .line 79
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->delst:Z

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->frontText:Ljava/lang/String;

    .line 83
    iput v4, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    .line 85
    iput v4, p0, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    .line 103
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sin"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "cos"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "tan"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ln("

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "abs("

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "log("

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "^("

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u221a("

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->checkChar:[Ljava/lang/String;

    .line 107
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 129
    new-instance v1, Lcom/sec/android/app/calculator/EventHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/EventHandler$1;-><init>(Lcom/sec/android/app/calculator/EventHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->handler:Landroid/os/Handler;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    .line 111
    iput-object p1, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    .line 113
    iput-object p3, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    .line 114
    iput-object p4, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    .line 115
    iput-object p5, p0, Lcom/sec/android/app/calculator/EventHandler;->mType:Landroid/graphics/Typeface;

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_PORT:F

    .line 120
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_PORT:F

    .line 121
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_PORT:F

    .line 122
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_LAND:F

    .line 123
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_LAND:F

    .line 124
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_LAND:F

    .line 126
    return-void
.end method

.method public static checkCharCount(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .registers 5
    .parameter "src"
    .parameter "sub"

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, count:I
    const/4 v1, 0x0

    .line 786
    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 787
    const/4 v2, 0x0

    .line 793
    :goto_9
    return v2

    .line 789
    :cond_a
    :goto_a
    invoke-virtual {p0, p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_18

    .line 790
    add-int/lit8 v0, v0, 0x1

    .line 791
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_a

    :cond_18
    move v2, v0

    .line 793
    goto :goto_9
.end method

.method private clearSB()V
    .registers 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 209
    .local v0, len:I
    if-nez v0, :cond_9

    .line 212
    :goto_8
    return-void

    .line 211
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .registers 17
    .parameter "v"

    .prologue
    .line 1196
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1197
    .local v0, absv:D
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 1199
    .local v11, str:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v2, buf:Ljava/lang/StringBuffer;
    const/16 v10, 0xa

    .line 1202
    .local v10, roundingStart:I
    const/16 v13, 0x45

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1203
    .local v5, ePos:I
    const/4 v13, -0x1

    if-eq v5, v13, :cond_3a

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1205
    .local v6, exp:I
    :goto_22
    const/4 v13, -0x1

    if-eq v5, v13, :cond_28

    .line 1206
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1208
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 1210
    .local v8, len:I
    const/4 v3, 0x0

    .local v3, dotPos:I
    :goto_2d
    if-ge v3, v8, :cond_3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_3c

    .line 1211
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1203
    .end local v3           #dotPos:I
    .end local v6           #exp:I
    .end local v8           #len:I
    :cond_3a
    const/4 v6, 0x0

    goto :goto_22

    .line 1213
    .restart local v3       #dotPos:I
    .restart local v6       #exp:I
    .restart local v8       #len:I
    :cond_3c
    add-int/2addr v6, v3

    .line 1215
    if-ge v3, v8, :cond_44

    .line 1216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1217
    add-int/lit8 v8, v8, -0x1

    .line 1219
    :cond_44
    const/16 v13, 0x10

    if-ge v6, v13, :cond_4c

    const/16 v13, 0x11

    if-ge v8, v13, :cond_50

    :cond_4c
    const/16 v13, -0x9

    if-ge v6, v13, :cond_70

    :cond_50
    add-int/lit8 v10, v8, -0x1

    .line 1232
    :goto_52
    if-ge v10, v8, :cond_81

    .line 1235
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x35

    if-lt v13, v14, :cond_7e

    .line 1237
    add-int/lit8 v9, v10, -0x1

    .local v9, p:I
    :goto_5e
    if-ltz v9, :cond_72

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-ne v13, v14, :cond_72

    .line 1238
    const/16 v13, 0x30

    invoke-virtual {v2, v9, v13}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1237
    add-int/lit8 v9, v9, -0x1

    goto :goto_5e

    .line 1219
    .end local v9           #p:I
    :cond_70
    add-int/2addr v10, v6

    goto :goto_52

    .line 1240
    .restart local v9       #p:I
    :cond_72
    if-ltz v9, :cond_a8

    .line 1241
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, 0x1

    int-to-char v13, v13

    invoke-virtual {v2, v9, v13}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1248
    .end local v9           #p:I
    :cond_7e
    :goto_7e
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1251
    :cond_81
    const/4 v13, -0x5

    if-lt v6, v13, :cond_88

    const/16 v13, 0xf

    if-le v6, v13, :cond_b3

    .line 1252
    :cond_88
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_96

    .line 1255
    const/4 v13, 0x1

    const/16 v14, 0x2e

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1256
    add-int/lit8 v6, v6, -0x1

    .line 1266
    :cond_96
    :goto_96
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 1268
    const/4 v3, 0x0

    :goto_9b
    if-ge v3, v8, :cond_d4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_d4

    .line 1269
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 1243
    .restart local v9       #p:I
    :cond_a8
    const/4 v13, 0x0

    const/16 v14, 0x31

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1244
    add-int/lit8 v10, v10, 0x1

    .line 1245
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 1259
    .end local v9           #p:I
    :cond_b3
    move v7, v8

    .local v7, i:I
    :goto_b4
    if-ge v7, v6, :cond_be

    .line 1260
    const/16 v13, 0x30

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1259
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    .line 1261
    :cond_be
    move v7, v6

    :goto_bf
    if-gtz v7, :cond_ca

    .line 1262
    const/4 v13, 0x0

    const/16 v14, 0x30

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1261
    add-int/lit8 v7, v7, 0x1

    goto :goto_bf

    .line 1263
    :cond_ca
    if-gtz v6, :cond_cd

    const/4 v6, 0x1

    .end local v6           #exp:I
    :cond_cd
    const/16 v13, 0x2e

    invoke-virtual {v2, v6, v13}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1264
    const/4 v6, 0x0

    .restart local v6       #exp:I
    goto :goto_96

    .line 1271
    .end local v7           #i:I
    :cond_d4
    sub-int v13, v8, v3

    add-int/lit8 v4, v13, -0x1

    .line 1272
    .local v4, dotlen:I
    const/16 v13, 0xa

    if-le v4, v13, :cond_ee

    .line 1273
    add-int/lit8 v4, v4, -0xa

    .line 1274
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_df
    if-ge v7, v4, :cond_ee

    .line 1275
    add-int/lit8 v13, v3, 0xa

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x30

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1274
    add-int/lit8 v7, v7, 0x1

    goto :goto_df

    .line 1281
    .end local v7           #i:I
    :cond_ee
    add-int/lit8 v12, v8, -0x1

    .local v12, tail:I
    :goto_f0
    if-ltz v12, :cond_100

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-ne v13, v14, :cond_100

    .line 1282
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1281
    add-int/lit8 v12, v12, -0x1

    goto :goto_f0

    .line 1284
    :cond_100
    if-ltz v12, :cond_10d

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_10d

    .line 1285
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1286
    :cond_10d
    if-eqz v6, :cond_118

    .line 1287
    const/16 v13, 0x45

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1288
    :cond_118
    const-wide/16 v13, 0x0

    cmpg-double v13, p0, v13

    if-gez v13, :cond_124

    .line 1289
    const/4 v13, 0x0

    const/16 v14, 0x2d

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1290
    :cond_124
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static doubleToString(DI)Ljava/lang/String;
    .registers 4
    .parameter "x"
    .parameter "maxLen"

    .prologue
    .line 1294
    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/calculator/EventHandler;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertComma(Ljava/lang/String;II)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .local v0, s:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    .line 755
    return-void
.end method

.method private insertComma(Ljava/lang/StringBuilder;II)V
    .registers 19
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 693
    .local v10, s:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v7, output:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 696
    .local v5, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 697
    .local v4, len:I
    const/4 v11, 0x0

    .local v11, st:I
    const/4 v1, 0x0

    .line 699
    .local v1, en:I
    sub-int v13, p2, v4

    if-ltz v13, :cond_30

    sub-int v12, p2, v4

    .line 700
    .local v12, substart:I
    :goto_19
    add-int/lit8 v3, v12, -0x1

    .local v3, i:I
    :goto_1b
    if-ltz v3, :cond_35

    .line 701
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 702
    .local v0, c:C
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_32

    const/16 v13, 0x2e

    if-eq v0, v13, :cond_32

    .line 703
    add-int/lit8 v11, v3, 0x1

    .line 704
    if-ne v12, v11, :cond_35

    .line 750
    .end local v0           #c:C
    :cond_2f
    :goto_2f
    return-void

    .line 699
    .end local v3           #i:I
    .end local v12           #substart:I
    :cond_30
    const/4 v12, 0x0

    goto :goto_19

    .line 700
    .restart local v0       #c:C
    .restart local v3       #i:I
    .restart local v12       #substart:I
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 710
    .end local v0           #c:C
    :cond_35
    move/from16 v3, p3

    :goto_37
    if-gt v3, v5, :cond_3c

    .line 711
    if-ne v3, v5, :cond_6f

    .line 712
    move v1, v5

    .line 721
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v10, v11, v1}, Lcom/sec/android/app/calculator/EventHandler;->removeSub(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 722
    .local v9, result:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 723
    .local v8, restart:I
    const/4 v2, 0x0

    .line 724
    .local v2, front:C
    const/4 v6, 0x0

    .line 725
    .local v6, next:C
    const/4 v3, 0x0

    :goto_44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-gt v3, v13, :cond_5b

    .line 726
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-ne v3, v13, :cond_82

    .line 727
    invoke-virtual {v9, v8, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_5b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_2f

    .line 749
    iget-object v13, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {p0, v7}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    invoke-interface {v13, v11, v1, v14}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2f

    .line 715
    .end local v2           #front:C
    .end local v6           #next:C
    .end local v8           #restart:I
    .end local v9           #result:Ljava/lang/StringBuilder;
    :cond_6f
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 716
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_7f

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_7f

    .line 717
    move v1, v3

    .line 718
    goto :goto_3c

    .line 710
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 730
    .end local v0           #c:C
    .restart local v2       #front:C
    .restart local v6       #next:C
    .restart local v8       #restart:I
    .restart local v9       #result:Ljava/lang/StringBuilder;
    :cond_82
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 731
    .restart local v0       #c:C
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v3, v13, :cond_b3

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 733
    :goto_94
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_d7

    const/16 v13, 0x2e

    if-eq v0, v13, :cond_d7

    .line 734
    const/16 v13, 0x45

    if-ne v0, v13, :cond_b5

    const/16 v13, 0x2d

    if-eq v6, v13, :cond_b0

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_b0

    const/16 v13, 0x2b

    if-ne v6, v13, :cond_b5

    .line 725
    :cond_b0
    :goto_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 731
    :cond_b3
    const/4 v6, 0x0

    goto :goto_94

    .line 736
    :cond_b5
    const/16 v13, 0x45

    if-ne v2, v13, :cond_c7

    const/16 v13, 0x2d

    if-eq v0, v13, :cond_b0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_b0

    const/16 v13, 0x2b

    if-eq v0, v13, :cond_b0

    .line 739
    :cond_c7
    invoke-virtual {v9, v8, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    add-int/lit8 v8, v3, 0x1

    .line 744
    :cond_d7
    move v2, v0

    goto :goto_b0
.end method

.method private reCalculation()V
    .registers 19

    .prologue
    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v12

    .local v12, text:Ljava/lang/String;
    const-string v11, ""

    .line 985
    .local v11, sub:Ljava/lang/String;
    const/16 v15, 0x3d

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 988
    .local v5, equal:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_18

    if-gez v5, :cond_44

    .line 989
    :cond_18
    const-string v15, "Calculator : reCalculaton"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "java.lang.StringIndexOutOfBoundsException"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    .line 1079
    :goto_43
    return-void

    .line 994
    :cond_44
    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v14, tmpinput:Ljava/lang/StringBuilder;
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1008
    .local v13, tmpResult:Ljava/lang/String;
    const-string v15, ","

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1009
    const-string v8, ""

    .line 1011
    .local v8, mResult:Ljava/lang/String;
    const/4 v15, 0x1

    :try_start_61
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/calculator/EventHandler;->evaluate(Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v8

    .line 1012
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    const/16 v17, 0xf

    invoke-static/range {v15 .. v17}, Lcom/sec/android/app/calculator/EventHandler;->doubleToString(DI)Ljava/lang/String;

    move-result-object v8

    .line 1019
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1022
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_94

    .line 1023
    const/4 v15, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_93
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_61 .. :try_end_93} :catch_9e

    move-result-object v8

    .line 1030
    :cond_94
    :goto_94
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b2

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto :goto_43

    .line 1024
    :catch_9e
    move-exception v3

    .line 1025
    .local v3, e:Lcom/sec/android/app/calculator/SyntaxException;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1026
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1027
    iget v15, v3, Lcom/sec/android/app/calculator/SyntaxException;->position:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    goto :goto_94

    .line 1035
    .end local v3           #e:Lcom/sec/android/app/calculator/SyntaxException;
    :cond_b2
    const/4 v1, 0x0

    .local v1, ch:C
    const/4 v9, 0x0

    .line 1036
    .local v9, rear:C
    const/4 v10, 0x0

    .local v10, start:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, end:I
    const/4 v2, 0x0

    .line 1037
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_bb
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_ce

    .line 1038
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1039
    const/16 v15, 0xa

    if-eq v1, v15, :cond_cd

    const/16 v15, 0x3d

    if-ne v1, v15, :cond_de

    .line 1040
    :cond_cd
    move v4, v6

    .line 1053
    :cond_ce
    const/4 v15, 0x1

    if-gt v2, v15, :cond_d9

    if-eqz v10, :cond_d9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v10, v15, :cond_107

    .line 1054
    :cond_d9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto/16 :goto_43

    .line 1043
    :cond_de
    if-eqz v6, :cond_e4

    const/16 v15, 0x28

    if-ne v9, v15, :cond_f0

    :cond_e4
    const/16 v15, 0x2d

    if-eq v1, v15, :cond_ec

    const/16 v15, 0x2b

    if-ne v1, v15, :cond_f0

    .line 1044
    :cond_ec
    move v9, v1

    .line 1037
    :goto_ed
    add-int/lit8 v6, v6, 0x1

    goto :goto_bb

    .line 1047
    :cond_f0
    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v15

    if-eqz v15, :cond_105

    const/16 v15, 0x45

    if-eq v9, v15, :cond_105

    const/16 v15, 0x2b

    if-ne v1, v15, :cond_102

    const/16 v15, 0x2d

    if-eq v1, v15, :cond_105

    .line 1048
    :cond_102
    move v10, v6

    .line 1049
    add-int/lit8 v2, v2, 0x1

    .line 1051
    :cond_105
    move v9, v1

    goto :goto_ed

    .line 1057
    :cond_107
    const/4 v1, 0x0

    .line 1058
    invoke-virtual {v12, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1060
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .local v7, j:I
    :goto_112
    if-ltz v7, :cond_11c

    .line 1061
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1062
    const/16 v15, 0x29

    if-eq v1, v15, :cond_12b

    .line 1067
    :cond_11c
    invoke-virtual {v12, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1068
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_130

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto/16 :goto_43

    .line 1065
    :cond_12b
    add-int/lit8 v4, v4, -0x1

    .line 1060
    add-int/lit8 v7, v7, -0x1

    goto :goto_112

    .line 1072
    :cond_130
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1074
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    if-eqz v15, :cond_13c

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    .line 1078
    :cond_13c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_43
.end method

.method private resultFormating(Ljava/lang/String;I)Ljava/lang/String;
    .registers 27
    .parameter "strValue"
    .parameter "nRound"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1313
    const-wide/16 v5, 0x0

    .line 1314
    .local v5, dAbsValue:D
    const-string v17, ""

    .line 1315
    .local v17, strAbsValue:Ljava/lang/String;
    const/4 v13, -0x1

    .line 1316
    .local v13, nOriEPos:I
    const/4 v15, -0x1

    .line 1317
    .local v15, nTmpDotPos:I
    const/16 v16, 0x0

    .line 1318
    .local v16, nTmpIntNumLen:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1319
    .local v18, strRtn:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 1321
    .local v8, errorCursor:I
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1436
    .end local p1
    :goto_16
    return-object p1

    .line 1325
    .restart local p1
    :cond_17
    const/16 v20, 0x45

    :try_start_19
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 1326
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_19e

    .line 1328
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_55

    const/16 v20, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_83

    :cond_55
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_130

    const/16 v20, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_130

    .line 1331
    :cond_83
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    const-string v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 1334
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_12a

    .line 1335
    :goto_aa
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12a

    .line 1336
    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1337
    .local v19, strTmp:Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1338
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_de} :catch_df

    goto :goto_aa

    .line 1351
    .end local v19           #strTmp:Ljava/lang/String;
    :catch_df
    move-exception v7

    .line 1352
    .local v7, e:Ljava/lang/Exception;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1353
    const-string v20, "\u00f70"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b7

    const-string v20, "\u00f70"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v8, v20, 0x1

    .line 1356
    :goto_106
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1358
    .local v9, errorMsg:Ljava/lang/String;
    if-nez v9, :cond_10e

    .line 1359
    const-string v9, "null"

    .line 1361
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v21, v0

    const-string v20, "Division by zero"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1bf

    const v20, 0x7f070005

    :goto_121
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v20

    throw v20

    .line 1341
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #errorMsg:Ljava/lang/String;
    :cond_12a
    :try_start_12a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_16

    .line 1344
    :cond_130
    const/16 v20, 0x0

    add-int/lit8 v21, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    .line 1346
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_155} :catch_df

    move-result-object v17

    .line 1364
    :goto_156
    const/16 v20, 0x2e

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1365
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_1c4

    .line 1366
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v16

    .line 1370
    :goto_174
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d2

    .line 1371
    const/4 v10, 0x0

    .local v10, i:I
    :goto_187
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_1d2

    .line 1372
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1373
    .local v4, cVal:C
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v4, v0, :cond_1c9

    .line 1371
    :goto_19b
    add-int/lit8 v10, v10, 0x1

    goto :goto_187

    .line 1348
    .end local v4           #cVal:C
    .end local v10           #i:I
    :cond_19e
    :try_start_19e
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    .line 1349
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1b5} :catch_df

    move-result-object v17

    goto :goto_156

    .line 1353
    .restart local v7       #e:Ljava/lang/Exception;
    :cond_1b7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    goto/16 :goto_106

    .line 1361
    .restart local v9       #errorMsg:Ljava/lang/String;
    :cond_1bf
    const v20, 0x7f070001

    goto/16 :goto_121

    .line 1368
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #errorMsg:Ljava/lang/String;
    :cond_1c4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    goto :goto_174

    .line 1375
    .restart local v4       #cVal:C
    .restart local v10       #i:I
    :cond_1c9
    const/16 v20, 0x30

    move/from16 v0, v20

    if-ne v4, v0, :cond_1d2

    .line 1376
    add-int/lit8 v16, v16, -0x1

    goto :goto_19b

    .line 1382
    .end local v4           #cVal:C
    .end local v10           #i:I
    :cond_1d2
    add-int v14, p2, v16

    .line 1383
    .local v14, nParam:I
    add-int v20, p2, v16

    if-gtz v20, :cond_1da

    .line 1384
    move/from16 v14, p2

    .line 1385
    :cond_1da
    new-instance v11, Ljava/math/MathContext;

    sget-object v20, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, v20

    invoke-direct {v11, v14, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1386
    .local v11, mc:Ljava/math/MathContext;
    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 1387
    .local v3, bigTemp:Ljava/math/BigDecimal;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_292

    .line 1388
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1393
    :goto_203
    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v20

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_252

    const-string v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_252

    .line 1399
    const/16 v20, 0x0

    const-string v21, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1400
    .restart local v19       #strTmp:Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1401
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    .end local v19           #strTmp:Ljava/lang/String;
    :cond_252
    const-string v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 1405
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_2b6

    .line 1407
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_2a2

    .line 1408
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    sub-int v20, v20, v15

    add-int/lit8 v12, v20, -0x1

    .line 1410
    .local v12, nDotNum:I
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v12, v0, :cond_27f

    .line 1411
    const-string v20, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    :cond_27f
    :goto_27f
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .end local v12           #nDotNum:I
    :cond_28c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_16

    .line 1391
    :cond_292
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    goto/16 :goto_203

    .line 1416
    :cond_2a2
    const/4 v12, 0x0

    .line 1417
    .restart local v12       #nDotNum:I
    const/16 v20, 0x2e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1419
    const-string v20, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27f

    .line 1427
    .end local v12           #nDotNum:I
    :cond_2b6
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_28c

    .line 1428
    :goto_2bc
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_28c

    .line 1429
    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1430
    .restart local v19       #strTmp:Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1431
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2bc
.end method

.method public static sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "str"
    .parameter "maxLen"

    .prologue
    .line 1181
    const/16 v4, 0x64

    if-ne p1, v4, :cond_5

    .line 1191
    .end local p0
    :goto_4
    return-object p0

    .line 1187
    .restart local p0
    :cond_5
    const/16 v4, 0x45

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1188
    .local v0, ePos:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_38

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1189
    .local v2, tail:Ljava/lang/String;
    :goto_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1190
    .local v3, tailLen:I
    sub-int v1, p1, v3

    .line 1191
    .local v1, maxHeadLen:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 1188
    .end local v1           #maxHeadLen:I
    .end local v2           #tail:Ljava/lang/String;
    .end local v3           #tailLen:I
    :cond_38
    const-string v2, ""

    goto :goto_12
.end method


# virtual methods
.method public CheckInput()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 843
    const/4 v1, 0x0

    .line 844
    .local v1, error:I
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, input:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 846
    .local v5, s:Ljava/lang/StringBuilder;
    const-string v4, ""

    .line 847
    .local v4, mResult:Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/calculator/CExpression;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CExpression;-><init>()V

    .line 848
    .local v2, exp:Lcom/sec/android/app/calculator/CExpression;
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->checkError()I

    .line 849
    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    .line 851
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_22

    .line 897
    :cond_21
    :goto_21
    return-void

    .line 854
    :cond_22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v6, v9, :cond_38

    .line 855
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_21

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_21

    .line 858
    :cond_38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4b

    .line 859
    const-string v6, "\u221a("

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 862
    :cond_4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8e

    .line 863
    const-string v6, "e^("

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "ln("

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "sin"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "cos"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "tan"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 875
    :cond_8e
    const/4 v6, 0x0

    :try_start_8f
    invoke-virtual {v2, v5, v6}, Lcom/sec/android/app/calculator/CExpression;->checkInputExp(Ljava/lang/StringBuilder;Z)Z
    :try_end_92
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_8f .. :try_end_92} :catch_c2

    .line 883
    :goto_92
    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    if-gez v6, :cond_a0

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    .line 886
    :cond_a0
    const-string v6, "***"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v9, :cond_b3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b5

    const v6, 0x7f070015

    if-ne v6, v1, :cond_b5

    .line 889
    :cond_b3
    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 892
    :cond_b5
    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    if-ne v6, v9, :cond_bc

    .line 893
    invoke-virtual {p0, v5, v4, v1}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 895
    :cond_bc
    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 896
    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    goto/16 :goto_21

    .line 876
    :catch_c2
    move-exception v0

    .line 877
    .local v0, e:Lcom/sec/android/app/calculator/SyntaxException;
    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 878
    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 879
    iget v1, v0, Lcom/sec/android/app/calculator/SyntaxException;->message:I

    .line 880
    iget v6, v0, Lcom/sec/android/app/calculator/SyntaxException;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    goto :goto_92
.end method

.method public changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 4
    .parameter "text"

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, txt:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;
    .registers 15
    .parameter "text"

    .prologue
    const/4 v10, -0x1

    const v9, -0x7e4101

    const/16 v8, -0x3400

    const/16 v12, 0x21

    .line 353
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 355
    .local v6, output:Landroid/text/SpannableStringBuilder;
    const v2, 0x3b9ac9ff

    .line 356
    .local v2, count:I
    const/4 v3, 0x0

    .line 357
    .local v3, i:I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_2b

    .line 358
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 424
    .end local v6           #output:Landroid/text/SpannableStringBuilder;
    :cond_1d
    return-object v6

    .line 367
    .local v1, ch:C
    .restart local v6       #output:Landroid/text/SpannableStringBuilder;
    :sswitch_1e
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 369
    move v2, v3

    .line 422
    :goto_29
    add-int/lit8 v3, v3, 0x1

    .line 360
    .end local v1           #ch:C
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v3, v7, :cond_1d

    .line 361
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 363
    .restart local v1       #ch:C
    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v7

    if-eqz v7, :cond_3f

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_46

    .line 364
    :cond_3f
    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mType:Landroid/graphics/Typeface;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 365
    :cond_46
    sparse-switch v1, :sswitch_data_d0

    .line 387
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->isArabicCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 388
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    move v0, v3

    .line 389
    .local v0, arabicStart:I
    const/4 v5, 0x0

    .local v5, lastArabic:I
    move v3, v4

    .line 390
    .end local v4           #i:I
    .restart local v3       #i:I
    :goto_54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v3, v7, :cond_72

    .line 391
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->isArabicCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 381
    .end local v0           #arabicStart:I
    .end local v5           #lastArabic:I
    :sswitch_63
    const v2, 0x3b9ac9ff

    .line 382
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_29

    .line 395
    .restart local v0       #arabicStart:I
    .restart local v5       #lastArabic:I
    :cond_71
    move v5, v3

    .line 399
    :cond_72
    move v5, v3

    .line 400
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v7, v0, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_29

    .line 404
    .end local v0           #arabicStart:I
    .end local v5           #lastArabic:I
    :cond_7c
    if-le v3, v2, :cond_91

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 405
    new-instance v7, Landroid/text/style/ScaleXSpan;

    const v11, 0x3f59999a

    invoke-direct {v7, v11}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 408
    :cond_91
    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOpByTwo(C)Z

    move-result v7

    if-eqz v7, :cond_bf

    const/16 v7, 0x5e

    if-eq v1, v7, :cond_bf

    .line 409
    const/16 v7, 0xad

    if-ne v1, v7, :cond_aa

    .line 410
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_29

    .line 413
    :cond_aa
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const/16 v7, 0x2d

    if-ne v1, v7, :cond_bd

    if-le v3, v2, :cond_bd

    move v7, v8

    :goto_b3
    invoke-direct {v11, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v11, v3, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_29

    :cond_bd
    move v7, v9

    goto :goto_b3

    .line 417
    :cond_bf
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    if-le v2, v3, :cond_ce

    move v7, v10

    :goto_c4
    invoke-direct {v11, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v11, v3, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_29

    :cond_ce
    move v7, v8

    goto :goto_c4

    .line 365
    :sswitch_data_d0
    .sparse-switch
        0xa -> :sswitch_63
        0x3d -> :sswitch_1e
    .end sparse-switch
.end method

.method public changeNumFomat(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "stringBuilder"

    .prologue
    const v12, 0x7f070001

    const/16 v11, 0x2d

    const/4 v8, 0x0

    .line 797
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_f

    .line 798
    const-string v8, ""

    .line 838
    :goto_e
    return-object v8

    .line 800
    :cond_f
    const-string v9, ","

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 801
    const-string v9, "NaN"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 802
    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    .line 804
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_33

    .line 805
    const-string v8, ""

    goto :goto_e

    .line 807
    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .local v5, sBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 810
    .local v1, end:I
    const-string v9, "E"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_43

    move-object v8, p1

    .line 811
    goto :goto_e

    .line 813
    :cond_43
    const/4 v3, 0x0

    .local v3, i:I
    :goto_44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v3, v9, :cond_61

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v3, v9, :cond_60

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_93

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v9

    if-nez v9, :cond_93

    .line 816
    :cond_60
    move v1, v3

    .line 820
    :cond_61
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_96

    const/4 v6, 0x1

    .line 821
    .local v6, start:I
    :goto_68
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_73

    .line 822
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :cond_73
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 825
    .local v7, subtext:Ljava/lang/String;
    const-string v8, "Infinity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_87

    const-string v8, "NaN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 826
    :cond_87
    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_e

    .line 813
    .end local v6           #start:I
    .end local v7           #subtext:Ljava/lang/String;
    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_96
    move v6, v8

    .line 820
    goto :goto_68

    .line 828
    .restart local v6       #start:I
    .restart local v7       #subtext:Ljava/lang/String;
    :cond_98
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    .line 830
    .local v4, nf:Ljava/text/NumberFormat;
    :try_start_9e
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ad} :catch_cd

    .line 835
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, fx:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_e

    .line 832
    .end local v2           #fx:Ljava/lang/String;
    :catch_cd
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_e
.end method

.method public changeTextSize()V
    .registers 11

    .prologue
    const/16 v8, 0x3d

    const/4 v9, 0x0

    .line 603
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, pre_str:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v3, v6, Landroid/content/res/Configuration;->orientation:I

    .line 609
    .local v3, ori:I
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3e

    .line 610
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 612
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 616
    :cond_3e
    const/4 v6, 0x1

    if-ne v3, v6, :cond_55

    .line 617
    sget v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_PORT:F

    .line 618
    .local v0, Textsize_Large:F
    sget v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_PORT:F

    .line 619
    .local v1, Textsize_Medium:F
    sget v2, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_PORT:F

    .line 627
    .local v2, Textsize_Small:F
    :goto_47
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    invoke-virtual {v6, v9, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 629
    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_5c

    .line 688
    :cond_54
    :goto_54
    return-void

    .line 622
    .end local v0           #Textsize_Large:F
    .end local v1           #Textsize_Medium:F
    .end local v2           #Textsize_Small:F
    :cond_55
    sget v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_LAND:F

    .line 623
    .restart local v0       #Textsize_Large:F
    sget v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_LAND:F

    .line 624
    .restart local v1       #Textsize_Medium:F
    sget v2, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_LAND:F

    .restart local v2       #Textsize_Small:F
    goto :goto_47

    .line 633
    :cond_5c
    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    cmpl-float v6, v6, v0

    if-nez v6, :cond_19a

    .line 638
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_102

    .line 639
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_b0

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_54

    .line 642
    :cond_b0
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 643
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_fb

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_54

    .line 645
    :cond_fb
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_54

    .line 653
    :cond_102
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_148

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_54

    .line 655
    :cond_148
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 658
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_193

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_54

    .line 660
    :cond_193
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_54

    .line 667
    :cond_19a
    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    cmpl-float v6, v6, v1

    if-nez v6, :cond_54

    .line 669
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_1f5

    .line 673
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_1ee

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_54

    .line 675
    :cond_1ee
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_54

    .line 681
    :cond_1f5
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_23b

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_54

    .line 683
    :cond_23b
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_54
.end method

.method public checkError()I
    .registers 10

    .prologue
    const/16 v8, 0x3d

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, start:I
    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    if-nez v6, :cond_57

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-static {v6, v7}, Lcom/sec/android/app/calculator/EventHandler;->checkCharCount(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v1

    .line 311
    .local v1, count:I
    if-nez v1, :cond_17

    move v4, v5

    .line 340
    .end local v1           #count:I
    :goto_16
    return v4

    .line 314
    .restart local v1       #count:I
    :cond_17
    const/4 v6, 0x1

    if-le v1, v6, :cond_22

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 317
    :cond_22
    if-lez v3, :cond_34

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_34

    .line 318
    add-int/lit8 v3, v3, -0x1

    .line 320
    :cond_34
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 321
    .local v2, end:I
    if-eq v2, v5, :cond_57

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v6

    if-gt v5, v6, :cond_57

    .line 322
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v4, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 324
    .end local v1           #count:I
    .end local v2           #end:I
    :cond_57
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 325
    packed-switch v3, :pswitch_data_90

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, ch:C
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v5

    if-ge v3, v5, :cond_72

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_84

    move v0, v4

    .line 334
    :cond_72
    :goto_72
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v4

    if-nez v4, :cond_7c

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_7e

    :cond_7c
    if-nez v0, :cond_82

    .line 335
    :cond_7e
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    .line 336
    const/4 v3, -0x1

    .end local v0           #ch:C
    :cond_82
    :pswitch_82
    move v4, v3

    .line 340
    goto :goto_16

    .line 332
    .restart local v0       #ch:C
    :cond_84
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_72

    .line 325
    nop

    :pswitch_data_90
    .packed-switch -0x1
        :pswitch_82
    .end packed-switch
.end method

.method public clearResult()V
    .registers 6

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    .local v2, text:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 259
    .local v1, length:I
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 260
    .local v0, endCursor:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_16

    .line 268
    :goto_15
    return-void

    .line 263
    :cond_16
    if-lez v0, :cond_24

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_24

    .line 264
    add-int/lit8 v0, v0, -0x1

    .line 266
    :cond_24
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 267
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public closeSignParenthesis()V
    .registers 3

    .prologue
    .line 2003
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2004
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 2006
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 2007
    return-void
.end method

.method public commaCount(Ljava/lang/StringBuilder;)I
    .registers 3
    .parameter "s"

    .prologue
    .line 759
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/sec/android/app/calculator/EventHandler;->checkCharCount(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public evaluate(Ljava/lang/StringBuilder;Z)Ljava/lang/String;
    .registers 13
    .parameter "input"
    .parameter "checkEnter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    const v7, 0x7f070005

    const/4 v6, 0x1

    const/4 v9, -0x1

    const v8, 0x7f070001

    .line 1441
    const-string v4, ""

    .line 1443
    .local v4, result:Ljava/lang/String;
    new-instance v3, Lcom/sec/android/app/calculator/CExpression;

    invoke-direct {v3}, Lcom/sec/android/app/calculator/CExpression;-><init>()V

    .line 1444
    .local v3, exp:Lcom/sec/android/app/calculator/CExpression;
    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/calculator/CExpression;->checkInputExp(Ljava/lang/StringBuilder;Z)Z

    move-result v5

    .line 1447
    .local v5, state:Z
    if-nez v5, :cond_20

    .line 1448
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    .line 1451
    :cond_20
    :try_start_20
    invoke-virtual {v3}, Lcom/sec/android/app/calculator/CExpression;->evaluateExp()Ljava/lang/String;
    :try_end_23
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_20 .. :try_end_23} :catch_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_78

    move-result-object v4

    .line 1491
    return-object v4

    .line 1452
    :catch_25
    move-exception v0

    .line 1453
    .local v0, e:Lcom/sec/android/app/calculator/SyntaxException;
    iput-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1454
    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_55

    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_38
    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    .line 1458
    invoke-virtual {v0}, Lcom/sec/android/app/calculator/SyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1459
    .local v2, errorMsg:Ljava/lang/String;
    iget v1, v0, Lcom/sec/android/app/calculator/SyntaxException;->message:I

    .line 1461
    .local v1, error:I
    if-nez v2, :cond_44

    .line 1462
    const-string v2, "null"

    .line 1467
    :cond_44
    const-string v6, "Division by zero"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1468
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v8, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    .line 1454
    .end local v1           #error:I
    .end local v2           #errorMsg:Ljava/lang/String;
    :cond_55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_38

    .line 1469
    .restart local v1       #error:I
    .restart local v2       #errorMsg:Ljava/lang/String;
    :cond_5c
    const v6, 0x7f070006

    if-eq v1, v6, :cond_66

    const v6, 0x7f070007

    if-ne v1, v6, :cond_6f

    .line 1470
    :cond_66
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v6, v1, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    .line 1472
    :cond_6f
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    .line 1474
    .end local v0           #e:Lcom/sec/android/app/calculator/SyntaxException;
    .end local v1           #error:I
    .end local v2           #errorMsg:Ljava/lang/String;
    :catch_78
    move-exception v0

    .line 1475
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1476
    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_a7

    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_8b
    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    .line 1480
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1482
    .restart local v2       #errorMsg:Ljava/lang/String;
    if-nez v2, :cond_95

    .line 1483
    const-string v2, "null"

    .line 1488
    :cond_95
    iget-object v9, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    const-string v6, "Division by zero"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ae

    move v6, v7

    :goto_a0
    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v9, v6, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    .line 1476
    .end local v2           #errorMsg:Ljava/lang/String;
    :cond_a7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_8b

    .restart local v2       #errorMsg:Ljava/lang/String;
    :cond_ae
    move v6, v8

    .line 1488
    goto :goto_a0
.end method

.method public getCursor(Landroid/widget/EditText;Z)I
    .registers 6
    .parameter "v"
    .parameter "distribution"

    .prologue
    .line 441
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 442
    .local v1, x:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 444
    .local v2, y:I
    if-eqz p2, :cond_f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 445
    .local v0, cursor:I
    :goto_e
    return v0

    .line 444
    .end local v0           #cursor:I
    :cond_f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_e
.end method

.method public getFrontText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->frontText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBuilder()Ljava/lang/StringBuilder;
    .registers 3

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventHandler;->clearSB()V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    return v0
.end method

.method public getmCursorState()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mCursorState:Z

    return v0
.end method

.method public goneCursor()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setmCursorState(Z)V

    .line 159
    return-void
.end method

.method public insert(Ljava/lang/StringBuilder;)V
    .registers 16
    .parameter "text"

    .prologue
    .line 450
    const/4 v5, 0x0

    .line 451
    .local v5, frontchar:C
    const/4 v9, 0x0

    .line 452
    .local v9, substart:I
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 453
    .local v2, checkchar:C
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 455
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 457
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2e

    .line 458
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onEnterEnd()V

    .line 462
    :cond_2e
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 463
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 465
    .local v3, currentText:Landroid/text/Editable;
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v4

    .line 467
    .local v4, displaycursor:I
    if-lez v4, :cond_46

    .line 468
    add-int/lit8 v11, v4, -0x1

    invoke-interface {v3, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    .line 471
    :cond_46
    iget-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_87

    const/16 v11, 0xad

    if-eq v5, v11, :cond_87

    .line 475
    const/4 v6, 0x0

    .local v6, i:I
    :goto_50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v6, v11, :cond_87

    .line 476
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-nez v11, :cond_80

    .line 477
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/android/app/calculator/Cmyfunc;->whereLastToken(Ljava/lang/String;Z)I

    move-result v11

    if-gtz v11, :cond_76

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_83

    .line 478
    :cond_76
    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_80

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    .line 475
    :cond_80
    :goto_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 481
    :cond_83
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    goto :goto_80

    .line 487
    .end local v6           #i:I
    :cond_87
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v4

    .line 490
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v11

    if-eqz v11, :cond_96

    if-nez v4, :cond_c7

    .line 491
    :cond_96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "^(2)"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "^("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 597
    :cond_c6
    :goto_c6
    return-void

    .line 498
    :cond_c7
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v11

    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v12

    add-int/2addr v11, v12

    const/16 v12, 0x64

    if-le v11, v12, :cond_e5

    .line 499
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    const v13, 0x7f070008

    invoke-virtual {p0, v11, v12, v13}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_c6

    .line 503
    :cond_e5
    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_ed

    if-eqz v4, :cond_c6

    .line 506
    :cond_ed
    if-lez v4, :cond_f5

    .line 507
    add-int/lit8 v11, v4, -0x1

    invoke-interface {v3, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    .line 509
    :cond_f5
    const/16 v11, 0x28

    if-ne v5, v11, :cond_fd

    const/16 v11, 0x2d

    if-eq v2, v11, :cond_c6

    .line 513
    :cond_fd
    const/16 v11, 0xad

    if-ne v5, v11, :cond_111

    const/16 v11, 0x2b

    if-eq v2, v11, :cond_c6

    const/16 v11, 0x2212

    if-eq v2, v11, :cond_c6

    const/16 v11, 0xd7

    if-eq v2, v11, :cond_c6

    const/16 v11, 0xf7

    if-eq v2, v11, :cond_c6

    .line 517
    :cond_111
    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_19f

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_19f

    .line 518
    const/4 v7, 0x0

    .line 519
    .local v7, runcheck:Z
    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_16c

    .line 520
    if-eqz v7, :cond_128

    add-int/lit8 v4, v4, 0x1

    .line 521
    :cond_128
    add-int/lit8 v6, v4, -0x1

    .restart local v6       #i:I
    :goto_12a
    if-lez v6, :cond_13f

    .line 522
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    add-int/lit8 v12, v6, -0x1

    invoke-interface {v11, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 523
    .local v8, sub:C
    invoke-static {v8}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-nez v11, :cond_197

    .line 524
    move v9, v6

    .line 528
    .end local v8           #sub:C
    :cond_13f
    const/4 v1, 0x0

    .line 529
    .local v1, checkPart:Z
    if-lez v9, :cond_153

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    add-int/lit8 v12, v9, -0x1

    invoke-interface {v11, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x28

    if-ne v11, v12, :cond_153

    .line 530
    const/4 v1, 0x1

    .line 532
    :cond_153
    if-eqz v1, :cond_15d

    const/16 v11, 0x2d

    if-eq v2, v11, :cond_15d

    const/16 v11, 0x2b

    if-ne v2, v11, :cond_163

    :cond_15d
    if-nez v9, :cond_19a

    const/16 v11, 0x2d

    if-eq v2, v11, :cond_19a

    :cond_163
    const-string v11, ""

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    :goto_169
    invoke-interface {v3, v9, v4, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 589
    .end local v1           #checkPart:Z
    .end local v6           #i:I
    .end local v7           #runcheck:Z
    :cond_16c
    :goto_16c
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 590
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v4

    .line 591
    invoke-direct {p0, p1, v4, v4}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    .line 592
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 594
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3d

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_c6

    .line 595
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto/16 :goto_c6

    .line 521
    .restart local v6       #i:I
    .restart local v7       #runcheck:Z
    .restart local v8       #sub:C
    :cond_197
    add-int/lit8 v6, v6, -0x1

    goto :goto_12a

    .line 532
    .end local v8           #sub:C
    .restart local v1       #checkPart:Z
    :cond_19a
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    goto :goto_169

    .line 537
    .end local v1           #checkPart:Z
    .end local v6           #i:I
    .end local v7           #runcheck:Z
    :cond_19f
    const/16 v11, 0x30

    if-ne v5, v11, :cond_1e9

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1e9

    .line 538
    const/4 v10, 0x0

    .line 539
    .local v10, zeroflag:Z
    add-int/lit8 v6, v4, -0x1

    .restart local v6       #i:I
    :goto_1ac
    if-ltz v6, :cond_1c0

    .line 540
    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 541
    .local v0, ch:C
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-nez v11, :cond_1ce

    const/16 v11, 0x2e

    if-eq v0, v11, :cond_1ce

    const/16 v11, 0x3c0

    if-ne v0, v11, :cond_1ce

    .line 548
    .end local v0           #ch:C
    :cond_1c0
    :goto_1c0
    if-nez v10, :cond_1e1

    .line 549
    if-eqz v2, :cond_c6

    .line 552
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-interface {v3, v11, v4, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_16c

    .line 543
    .restart local v0       #ch:C
    :cond_1ce
    const/16 v11, 0x2e

    if-eq v0, v11, :cond_1dc

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1de

    const/16 v11, 0x30

    if-eq v0, v11, :cond_1de

    .line 544
    :cond_1dc
    const/4 v10, 0x1

    .line 545
    goto :goto_1c0

    .line 539
    :cond_1de
    add-int/lit8 v6, v6, -0x1

    goto :goto_1ac

    .line 554
    .end local v0           #ch:C
    :cond_1e1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_16c

    .line 555
    .end local v6           #i:I
    .end local v10           #zeroflag:Z
    :cond_1e9
    const/16 v11, 0x29

    if-eq v5, v11, :cond_1fd

    const/16 v11, 0x65

    if-eq v5, v11, :cond_1fd

    const/16 v11, 0x21

    if-eq v5, v11, :cond_1fd

    const/16 v11, 0x25

    if-eq v5, v11, :cond_1fd

    const/16 v11, 0x3c0

    if-ne v5, v11, :cond_21f

    :cond_1fd
    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_21f

    .line 557
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u00d7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_16c

    .line 558
    :cond_21f
    const/16 v11, 0x29

    if-eq v5, v11, :cond_229

    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_266

    .line 559
    :cond_229
    const/16 v11, 0x73

    if-eq v2, v11, :cond_245

    const/16 v11, 0x63

    if-eq v2, v11, :cond_245

    const/16 v11, 0x74

    if-eq v2, v11, :cond_245

    const/16 v11, 0x6c

    if-eq v2, v11, :cond_245

    const/16 v11, 0x221a

    if-eq v2, v11, :cond_245

    const/16 v11, 0x65

    if-eq v2, v11, :cond_245

    const/16 v11, 0x3c0

    if-ne v2, v11, :cond_261

    :cond_245
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u00d7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    :goto_25c
    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_16c

    :cond_261
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    goto :goto_25c

    .line 563
    :cond_266
    const/16 v11, 0x65

    if-eq v5, v11, :cond_276

    const/16 v11, 0x21

    if-eq v5, v11, :cond_276

    const/16 v11, 0x25

    if-eq v5, v11, :cond_276

    const/16 v11, 0x3c0

    if-ne v5, v11, :cond_2bf

    .line 565
    :cond_276
    const/16 v11, 0x73

    if-eq v2, v11, :cond_292

    const/16 v11, 0x63

    if-eq v2, v11, :cond_292

    const/16 v11, 0x74

    if-eq v2, v11, :cond_292

    const/16 v11, 0x6c

    if-eq v2, v11, :cond_292

    const/16 v11, 0x221a

    if-eq v2, v11, :cond_292

    const/16 v11, 0x65

    if-eq v2, v11, :cond_292

    const/16 v11, 0x3c0

    if-ne v2, v11, :cond_294

    :cond_292
    if-ne v5, v2, :cond_29e

    :cond_294
    const/16 v11, 0x65

    if-eq v2, v11, :cond_29c

    const/16 v11, 0x3c0

    if-ne v2, v11, :cond_2ba

    :cond_29c
    if-ne v5, v2, :cond_2ba

    :cond_29e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u00d7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    :goto_2b5
    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_16c

    :cond_2ba
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    goto :goto_2b5

    .line 574
    :cond_2bf
    const/16 v11, 0x28

    if-ne v5, v11, :cond_2cb

    const/16 v11, 0xd7

    if-eq v2, v11, :cond_c6

    const/16 v11, 0xf7

    if-eq v2, v11, :cond_c6

    .line 577
    :cond_2cb
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u221a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31f

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "e^"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31f

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sin"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31f

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "cos"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31f

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "tan"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31f

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ln("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31f

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "log("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_350

    .line 581
    :cond_31f
    const/16 v11, 0x6e

    if-eq v5, v11, :cond_32b

    const/16 v11, 0x73

    if-eq v5, v11, :cond_32b

    const/16 v11, 0x67

    if-ne v5, v11, :cond_347

    .line 582
    :cond_32b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_16c

    .line 584
    :cond_347
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_16c

    .line 587
    :cond_350
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_16c
.end method

.method public insertKeyBoard(C)V
    .registers 23
    .parameter "sign"

    .prologue
    .line 1876
    const/4 v10, 0x0

    .line 1877
    .local v10, frontchar:C
    const/16 v16, 0x0

    .line 1878
    .local v16, substart:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    .line 1879
    .local v14, str:Ljava/lang/String;
    move/from16 v6, p1

    .line 1880
    .local v6, checkchar:C
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v13

    .line 1883
    .local v13, startCursor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v9

    .line 1884
    .local v9, endCursor:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v18

    if-eqz v18, :cond_a4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v18

    move/from16 v0, v18

    if-ne v9, v0, :cond_a4

    if-eq v13, v9, :cond_a4

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1890
    :goto_54
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 1892
    .local v7, currentText:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v8

    .line 1895
    .local v8, displaycursor:I
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v18

    if-eqz v18, :cond_7b

    if-nez v8, :cond_bc

    .line 1898
    :cond_7b
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a3

    const-string v18, "!"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a3

    const-string v18, "^(2)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a3

    const-string v18, "^("

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_bc

    .line 1994
    :cond_a3
    :goto_a3
    return-void

    .line 1887
    .end local v7           #currentText:Landroid/text/Editable;
    .end local v8           #displaycursor:I
    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_54

    .line 1905
    .restart local v7       #currentText:Landroid/text/Editable;
    .restart local v8       #displaycursor:I
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v18

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f6

    .line 1907
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    const v20, 0x7f070008

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_a3

    .line 1911
    :cond_f6
    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_104

    if-nez v8, :cond_104

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v6, v0, :cond_a3

    .line 1914
    :cond_104
    if-lez v8, :cond_10e

    .line 1915
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    .line 1917
    :cond_10e
    invoke-static {v10}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_1c1

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_1c1

    .line 1919
    const/4 v12, 0x0

    .line 1920
    .local v12, runcheck:Z
    invoke-static {v10}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_184

    .line 1922
    if-eqz v12, :cond_125

    add-int/lit8 v8, v8, 0x1

    .line 1923
    :cond_125
    add-int/lit8 v11, v8, -0x1

    .local v11, i:I
    :goto_127
    if-lez v11, :cond_141

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    add-int/lit8 v19, v11, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/text/Editable;->charAt(I)C

    move-result v15

    .line 1926
    .local v15, sub:C
    invoke-static {v15}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-nez v18, :cond_1ad

    .line 1928
    move/from16 v16, v11

    .line 1932
    .end local v15           #sub:C
    :cond_141
    const/4 v5, 0x0

    .line 1933
    .local v5, checkPart:Z
    if-lez v16, :cond_15d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    add-int/lit8 v19, v16, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    const/16 v19, 0x28

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15d

    .line 1934
    const/4 v5, 0x1

    .line 1936
    :cond_15d
    if-eqz v5, :cond_16b

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-eq v6, v0, :cond_16b

    const/16 v18, 0x2b

    move/from16 v0, v18

    if-ne v6, v0, :cond_173

    :cond_16b
    if-nez v16, :cond_1b1

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-eq v6, v0, :cond_1b1

    :cond_173
    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    :goto_17d
    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v8, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1989
    .end local v5           #checkPart:Z
    .end local v11           #i:I
    .end local v12           #runcheck:Z
    :cond_184
    :goto_184
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v8

    .line 1991
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v8}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v8

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto/16 :goto_a3

    .line 1923
    .restart local v11       #i:I
    .restart local v12       #runcheck:Z
    .restart local v15       #sub:C
    :cond_1ad
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_127

    .line 1936
    .end local v15           #sub:C
    .restart local v5       #checkPart:Z
    :cond_1b1
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    goto :goto_17d

    .line 1942
    .end local v5           #checkPart:Z
    .end local v11           #i:I
    .end local v12           #runcheck:Z
    :cond_1c1
    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v10, v0, :cond_235

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_235

    .line 1944
    const/16 v17, 0x0

    .line 1945
    .local v17, zeroflag:Z
    add-int/lit8 v11, v8, -0x1

    .restart local v11       #i:I
    :goto_1d1
    if-ltz v11, :cond_1e9

    .line 1947
    invoke-interface {v7, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 1948
    .local v4, ch:C
    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-nez v18, :cond_207

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-eq v4, v0, :cond_207

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v4, v0, :cond_207

    .line 1956
    .end local v4           #ch:C
    :cond_1e9
    :goto_1e9
    if-nez v17, :cond_21f

    .line 1958
    if-eqz v6, :cond_a3

    .line 1961
    add-int/lit8 v18, v8, -0x1

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v8, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_184

    .line 1950
    .restart local v4       #ch:C
    :cond_207
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-eq v4, v0, :cond_219

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_21c

    const/16 v18, 0x30

    move/from16 v0, v18

    if-eq v4, v0, :cond_21c

    .line 1952
    :cond_219
    const/16 v17, 0x1

    .line 1953
    goto :goto_1e9

    .line 1945
    :cond_21c
    add-int/lit8 v11, v11, -0x1

    goto :goto_1d1

    .line 1964
    .end local v4           #ch:C
    :cond_21f
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_184

    .line 1966
    .end local v11           #i:I
    .end local v17           #zeroflag:Z
    :cond_235
    const/16 v18, 0x29

    move/from16 v0, v18

    if-eq v10, v0, :cond_253

    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v10, v0, :cond_253

    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v10, v0, :cond_253

    const/16 v18, 0x25

    move/from16 v0, v18

    if-eq v10, v0, :cond_253

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v10, v0, :cond_27d

    :cond_253
    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_27d

    .line 1967
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u00d7"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_184

    .line 1968
    :cond_27d
    const/16 v18, 0x29

    move/from16 v0, v18

    if-eq v10, v0, :cond_289

    invoke-static {v10}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_2de

    .line 1970
    :cond_289
    const/16 v18, 0x73

    move/from16 v0, v18

    if-eq v6, v0, :cond_2b3

    const/16 v18, 0x63

    move/from16 v0, v18

    if-eq v6, v0, :cond_2b3

    const/16 v18, 0x74

    move/from16 v0, v18

    if-eq v6, v0, :cond_2b3

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-eq v6, v0, :cond_2b3

    const/16 v18, 0x221a

    move/from16 v0, v18

    if-eq v6, v0, :cond_2b3

    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v6, v0, :cond_2b3

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v6, v0, :cond_2d7

    :cond_2b3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u00d7"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    :goto_2d0
    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_184

    :cond_2d7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    goto :goto_2d0

    .line 1975
    :cond_2de
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v10, v0, :cond_2f6

    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v10, v0, :cond_2f6

    const/16 v18, 0x25

    move/from16 v0, v18

    if-eq v10, v0, :cond_2f6

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v10, v0, :cond_35b

    .line 1977
    :cond_2f6
    const/16 v18, 0x73

    move/from16 v0, v18

    if-eq v6, v0, :cond_320

    const/16 v18, 0x63

    move/from16 v0, v18

    if-eq v6, v0, :cond_320

    const/16 v18, 0x74

    move/from16 v0, v18

    if-eq v6, v0, :cond_320

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-eq v6, v0, :cond_320

    const/16 v18, 0x221a

    move/from16 v0, v18

    if-eq v6, v0, :cond_320

    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v6, v0, :cond_320

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v6, v0, :cond_322

    :cond_320
    if-ne v10, v6, :cond_330

    :cond_322
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v6, v0, :cond_32e

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v6, v0, :cond_354

    :cond_32e
    if-ne v10, v6, :cond_354

    :cond_330
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u00d7"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    :goto_34d
    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_184

    :cond_354
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    goto :goto_34d

    .line 1984
    :cond_35b
    const/16 v18, 0x28

    move/from16 v0, v18

    if-ne v10, v0, :cond_36d

    const/16 v18, 0xd7

    move/from16 v0, v18

    if-eq v6, v0, :cond_a3

    const/16 v18, 0xf7

    move/from16 v0, v18

    if-eq v6, v0, :cond_a3

    .line 1987
    :cond_36d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_184
.end method

.method public isArabicCharacter(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 345
    const/16 v0, 0x600

    if-le p1, v0, :cond_a

    const/16 v0, 0x6ff

    if-ge p1, v0, :cond_a

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isCheckResult()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 944
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 945
    .local v1, equal:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1c

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v1, :cond_1d

    .line 949
    :cond_1c
    :goto_1c
    return v2

    .line 948
    :cond_1d
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 949
    .local v0, ch:C
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v3

    if-nez v3, :cond_33

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1c

    :cond_33
    const/4 v2, 0x1

    goto :goto_1c
.end method

.method public isDisplayScreen()Z
    .registers 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isHistoryScreen()Z
    .registers 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/History;->isHistory()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isLongClick()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isLongClick:Z

    return v0
.end method

.method public isMultiSelection(Landroid/widget/EditText;)Z
    .registers 9
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result v5

    const v6, 0x7f050004

    if-ne v5, v6, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    .line 216
    .local v1, mV:Landroid/widget/EditText;
    :goto_d
    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    .line 217
    .local v2, start:I
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    .line 218
    .local v0, end:I
    if-eq v2, v0, :cond_1b

    :goto_17
    return v3

    .line 215
    .end local v0           #end:I
    .end local v1           #mV:Landroid/widget/EditText;
    .end local v2           #start:I
    :cond_18
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    goto :goto_d

    .restart local v0       #end:I
    .restart local v1       #mV:Landroid/widget/EditText;
    .restart local v2       #start:I
    :cond_1b
    move v3, v4

    .line 218
    goto :goto_17
.end method

.method public isOpenedSignParenthesis()Z
    .registers 2

    .prologue
    .line 2010
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    return v0
.end method

.method public isSelecting()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    return v0
.end method

.method public isSelectingAll()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    return v0
.end method

.method public onAbs()V
    .registers 6

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1818
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1819
    .local v2, txt:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    .line 1820
    .local v0, displayCursor:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1821
    .local v1, in:Ljava/lang/StringBuilder;
    if-lez v0, :cond_55

    .line 1822
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_50

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_50

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_50

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_50

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c0

    if-eq v3, v4, :cond_50

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1826
    :cond_50
    const-string v3, "\u00d7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    :cond_55
    :goto_55
    const-string v3, "abs("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1837
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    .line 1838
    invoke-direct {p0, v1, v0, v0}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    .line 1839
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 1840
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    .line 1841
    return-void

    .line 1829
    :cond_75
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_93

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-eq v3, v4, :cond_93

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_55

    .line 1831
    :cond_93
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55
.end method

.method public onBackspace()V
    .registers 14

    .prologue
    const/16 v12, 0xad

    const/16 v11, 0x28

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 1617
    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v6, :cond_d

    .line 1618
    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1620
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1621
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClearOrigin()V

    .line 1623
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, displayText:Ljava/lang/String;
    const-string v4, ""

    .line 1625
    .local v4, match:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v3

    .line 1626
    .local v3, len:I
    const/4 v2, -0x1

    .line 1638
    .local v2, index:I
    invoke-static {v1, v9}, Lcom/sec/android/app/calculator/Cmyfunc;->whereLastToken(Ljava/lang/String;Z)I

    move-result v2

    .line 1640
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1645
    .local v0, displayCursor:I
    if-eq v2, v8, :cond_3e

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_3e

    .line 1646
    if-lez v2, :cond_3e

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_3e

    .line 1647
    add-int/lit8 v2, v2, -0x1

    .line 1648
    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 1652
    :cond_3e
    if-eq v2, v8, :cond_95

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_95

    .line 1653
    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 1655
    .local v5, nOpenPos:I
    if-eq v5, v8, :cond_70

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_70

    .line 1660
    iput-boolean v10, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 1672
    :cond_58
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1674
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1675
    const-string v6, ""

    invoke-direct {p0, v6, v0, v0}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    .line 1676
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    .line 1696
    .end local v5           #nOpenPos:I
    :goto_6f
    return-void

    .line 1663
    .restart local v5       #nOpenPos:I
    :cond_70
    if-lez v5, :cond_58

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_58

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_58

    .line 1666
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6, v7, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1667
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_6f

    .line 1679
    .end local v5           #nOpenPos:I
    :cond_95
    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    if-eq v6, v10, :cond_c1

    .line 1680
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d0

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v6

    if-eq v6, v10, :cond_b5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_d0

    .line 1683
    :cond_b5
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    new-instance v7, Landroid/view/KeyEvent;

    const/16 v8, 0x43

    invoke-direct {v7, v9, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1692
    :cond_c1
    :goto_c1
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1693
    const-string v6, ""

    invoke-direct {p0, v6, v0, v0}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    .line 1695
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_6f

    .line 1684
    :cond_d0
    if-eq v2, v8, :cond_f0

    .line 1685
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_e6

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v3, :cond_e6

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_e6

    .line 1687
    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 1688
    :cond_e6
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_c1

    .line 1690
    :cond_f0
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    new-instance v7, Landroid/view/KeyEvent;

    const/16 v8, 0x43

    invoke-direct {v7, v9, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_c1
.end method

.method public onClear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 956
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 957
    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->clearmOrigin()V

    .line 958
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 959
    return-void
.end method

.method public onClearOrigin()V
    .registers 6

    .prologue
    .line 1599
    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1600
    .local v2, len:I
    if-nez v2, :cond_b

    .line 1613
    :cond_a
    :goto_a
    return-void

    .line 1603
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1604
    .local v1, index:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 1607
    add-int v3, v2, v1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 1608
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1609
    .local v0, ch:C
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOpByTwo(C)Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0x21

    if-eq v0, v3, :cond_a

    .line 1612
    .end local v0           #ch:C
    :cond_36
    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->clearmOrigin()V

    goto :goto_a
.end method

.method public onDecimal()V
    .registers 11

    .prologue
    const/16 v9, 0x2e

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1501
    .line 1502
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v0, :cond_b

    .line 1503
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    .line 1505
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v6

    .line 1513
    if-lez v6, :cond_2d

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1515
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    .line 1555
    :goto_2c
    return-void

    .line 1519
    :cond_2d
    if-nez v6, :cond_47

    .line 1520
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v2, "0."

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1521
    const-string v0, "0."

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    .line 1522
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_2c

    .line 1528
    :cond_47
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    move v3, v1

    move v0, v1

    .line 1529
    :goto_4f
    if-ge v3, v6, :cond_72

    .line 1530
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_5d

    if-ne v0, v2, :cond_5d

    .line 1532
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_2c

    .line 1536
    :cond_5d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v8

    if-eqz v8, :cond_68

    move v0, v1

    .line 1538
    :cond_68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_6f

    move v0, v2

    .line 1529
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 1541
    :cond_72
    if-nez v0, :cond_b5

    .line 1542
    const/16 v0, 0x29

    if-eq v7, v0, :cond_84

    const/16 v0, 0x21

    if-eq v7, v0, :cond_84

    const/16 v0, 0x65

    if-eq v7, v0, :cond_84

    const/16 v0, 0x3c0

    if-ne v7, v0, :cond_9d

    .line 1543
    :cond_84
    const-string v0, "\u00d70."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1545
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 1546
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_2c

    .line 1549
    :cond_9d
    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v0

    if-eqz v0, :cond_c8

    const-string v0, "."

    :goto_a5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1552
    :cond_b5
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 1553
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    .line 1554
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto/16 :goto_2c

    .line 1549
    :cond_c8
    const-string v0, "0."

    goto :goto_a5
.end method

.method public onEnter()V
    .registers 3

    .prologue
    .line 1082
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->onEnter(ZI)V

    .line 1083
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    .line 1084
    return-void
.end method

.method public onEnter(ZI)V
    .registers 16
    .parameter "saveHistory"
    .parameter "lError"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1088
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, input:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClearOrigin()V

    .line 1091
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_14

    .line 1175
    :goto_13
    return-void

    .line 1095
    :cond_14
    iget-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v8, :cond_a9

    .line 1096
    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventHandler;->reCalculation()V

    .line 1100
    :goto_1b
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->repairDisplay()V

    .line 1101
    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 1104
    const-string v3, ""

    .local v3, mResult:Ljava/lang/String;
    const-string v7, ""

    .line 1105
    .local v7, tmpResult:Ljava/lang/String;
    move v1, p2

    .line 1106
    .local v1, error:I
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1109
    .local v4, s:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    :try_start_2a
    invoke-virtual {p0, v4, v8}, Lcom/sec/android/app/calculator/EventHandler;->evaluate(Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v7

    .line 1110
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/16 v10, 0xf

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/calculator/EventHandler;->doubleToString(DI)Ljava/lang/String;

    move-result-object v3

    .line 1117
    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_55

    .line 1121
    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2a .. :try_end_54} :catch_ae
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_2a .. :try_end_54} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_54} :catch_d4

    move-result-object v3

    .line 1146
    :cond_55
    :goto_55
    invoke-virtual {p0, v4, v3, v1}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 1148
    iget-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    if-nez v8, :cond_a5

    const-string v8, "Infinity"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a5

    const-string v8, "NaN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a5

    .line 1150
    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1152
    if-ne p1, v12, :cond_9d

    .line 1154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v5, v8, v9

    .line 1155
    .local v5, strLen:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1157
    .local v6, temp:Ljava/lang/StringBuilder;
    if-ltz v5, :cond_e7

    .line 1158
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    :goto_86
    if-lez v5, :cond_94

    .line 1164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :cond_94
    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/sec/android/app/calculator/History;->enter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    .end local v5           #strLen:I
    .end local v6           #temp:Ljava/lang/StringBuilder;
    :cond_9d
    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->setmTrans(Ljava/lang/String;)V

    .line 1171
    invoke-static {v3}, Lcom/sec/android/app/calculator/Cmyfunc;->setmOrigin(Ljava/lang/String;)V

    .line 1172
    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1174
    :cond_a5
    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    goto/16 :goto_13

    .line 1098
    .end local v1           #error:I
    .end local v3           #mResult:Ljava/lang/String;
    .end local v4           #s:Ljava/lang/StringBuilder;
    .end local v7           #tmpResult:Ljava/lang/String;
    :cond_a9
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto/16 :goto_1b

    .line 1123
    .restart local v1       #error:I
    .restart local v3       #mResult:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/StringBuilder;
    .restart local v7       #tmpResult:Ljava/lang/String;
    :catch_ae
    move-exception v0

    .line 1124
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1125
    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1126
    const-string v8, "onEnter"

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1128
    .end local v0           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :catch_bd
    move-exception v0

    .line 1129
    .local v0, e:Lcom/sec/android/app/calculator/SyntaxException;
    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1130
    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1131
    iget v1, v0, Lcom/sec/android/app/calculator/SyntaxException;->message:I

    .line 1132
    iget v8, v0, Lcom/sec/android/app/calculator/SyntaxException;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    .line 1134
    const-string v8, "onEnter"

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/SyntaxException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1136
    .end local v0           #e:Lcom/sec/android/app/calculator/SyntaxException;
    :catch_d4
    move-exception v0

    .line 1137
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    .line 1138
    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1139
    const v1, 0x7f070001

    .line 1142
    const-string v8, "onEnter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 1160
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #strLen:I
    .restart local v6       #temp:Ljava/lang/StringBuilder;
    :cond_e7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_86
.end method

.method public onEnterEnd()V
    .registers 2

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v0, :cond_7

    .line 1496
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    .line 1497
    :cond_7
    return-void
.end method

.method public onFraction()V
    .registers 6

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1785
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    .line 1786
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1789
    if-nez v0, :cond_33

    .line 1790
    const-string v1, "1\u00f7"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1792
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    .line 1793
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    .line 1811
    :goto_32
    return-void

    .line 1797
    :cond_33
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v3

    if-nez v3, :cond_67

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_67

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_67

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_67

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3c0

    if-ne v1, v3, :cond_6c

    .line 1801
    :cond_67
    const-string v1, "\u00d7"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    :cond_6c
    const-string v1, "(1\u00f7"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1805
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    .line 1808
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 1810
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_32
.end method

.method public onHisClear()V
    .registers 3

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/History;->clear()V

    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1870
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    .line 1871
    return-void
.end method

.method public onParenthesis()V
    .registers 12

    .prologue
    const/16 v10, 0x2e

    const/16 v9, 0x25

    const/16 v8, 0x21

    const/16 v7, 0x29

    const/4 v2, 0x0

    .line 1559
    .line 1560
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1562
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v4

    move v1, v2

    move v0, v2

    .line 1564
    :goto_16
    if-ge v1, v4, :cond_2d

    .line 1565
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_22

    .line 1566
    add-int/lit8 v0, v0, 0x1

    .line 1567
    :cond_22
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2a

    .line 1568
    add-int/lit8 v0, v0, -0x1

    .line 1564
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1571
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1573
    if-lez v4, :cond_af

    .line 1574
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1576
    :goto_3a
    if-lez v0, :cond_8a

    .line 1577
    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v0

    if-nez v0, :cond_52

    if-eq v1, v8, :cond_52

    if-eq v1, v9, :cond_52

    if-eq v1, v7, :cond_52

    const/16 v0, 0x65

    if-eq v1, v0, :cond_52

    const/16 v0, 0x3c0

    if-eq v1, v0, :cond_52

    if-ne v1, v10, :cond_7d

    .line 1579
    :cond_52
    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    :goto_57
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5e

    .line 1585
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 1591
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1593
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 1594
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    .line 1595
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    .line 1596
    return-void

    .line 1582
    :cond_7d
    if-ne v1, v7, :cond_87

    if-lez v4, :cond_87

    const-string v0, "\u00d7("

    :goto_83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :cond_87
    const-string v0, "("

    goto :goto_83

    .line 1587
    :cond_8a
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_a4

    const/16 v0, 0x65

    if-eq v1, v0, :cond_a4

    if-eq v1, v8, :cond_a4

    if-eq v1, v9, :cond_a4

    const/16 v0, 0x3c0

    if-eq v1, v0, :cond_a4

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_a4

    if-eq v1, v10, :cond_a4

    if-ne v1, v7, :cond_ac

    :cond_a4
    if-lez v4, :cond_ac

    const-string v0, "\u00d7("

    :goto_a8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_ac
    const-string v0, "("

    goto :goto_a8

    :cond_af
    move v1, v2

    goto :goto_3a
.end method

.method public onPlusMinus()V
    .registers 12

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/16 v9, 0x28

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1700
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    .line 1701
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1702
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v5

    .line 1706
    if-nez v5, :cond_25

    .line 1707
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v2, "(\u00ad"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1708
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 1778
    :goto_24
    return-void

    :cond_25
    move v0, v5

    .line 1712
    :goto_26
    if-lez v0, :cond_155

    .line 1714
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v7

    if-nez v7, :cond_48

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_48

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x73

    if-ne v7, v8, :cond_8e

    .line 1715
    :cond_48
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_5c

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_6d

    :cond_5c
    add-int/lit8 v7, v0, -0x2

    if-lez v7, :cond_6d

    add-int/lit8 v7, v0, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x45

    if-ne v7, v8, :cond_6d

    .line 1712
    :cond_6a
    :goto_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1718
    :cond_6d
    add-int/lit8 v0, v0, -0x1

    .line 1724
    :goto_6f
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xad

    if-ne v7, v8, :cond_bd

    .line 1727
    if-nez v0, :cond_9d

    if-ne v5, v4, :cond_9d

    move v3, v0

    move v0, v2

    .line 1746
    :goto_7d
    packed-switch v0, :pswitch_data_158

    .line 1769
    :goto_80
    if-eq v0, v2, :cond_85

    const/4 v2, 0x6

    if-ne v0, v2, :cond_14d

    .line 1770
    :cond_85
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 1775
    :goto_87
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    .line 1777
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_24

    .line 1720
    :cond_8e
    if-ne v0, v4, :cond_6a

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v7

    if-nez v7, :cond_6a

    goto :goto_6a

    .line 1729
    :cond_9d
    if-lez v0, :cond_ac

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_ac

    .line 1730
    const/4 v3, 0x6

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_7d

    .line 1731
    :cond_ac
    if-nez v0, :cond_b1

    move v3, v0

    move v0, v2

    .line 1732
    goto :goto_7d

    .line 1733
    :cond_b1
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_151

    move v10, v3

    move v3, v0

    move v0, v10

    .line 1734
    goto :goto_7d

    .line 1737
    :cond_bd
    if-nez v0, :cond_c8

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_c8

    move v3, v0

    move v0, v4

    .line 1738
    goto :goto_7d

    .line 1739
    :cond_c8
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_d3

    .line 1740
    const/4 v3, 0x2

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_7d

    .line 1741
    :cond_d3
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_e0

    .line 1742
    const/4 v3, 0x5

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_7d

    :cond_e0
    move v10, v3

    move v3, v0

    move v0, v10

    .line 1744
    goto :goto_7d

    .line 1748
    :pswitch_e4
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v5, "(\u00ad"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_80

    .line 1751
    :pswitch_f4
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    const-string v6, "(\u00ad"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_80

    .line 1754
    :pswitch_107
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    const-string v7, ""

    invoke-interface {v5, v3, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_80

    .line 1757
    :pswitch_116
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    const-string v6, "(\u00ad"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_80

    .line 1760
    :pswitch_129
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    const-string v6, "\u00d7(\u00ad"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_80

    .line 1763
    :pswitch_13c
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v3, v3, 0x1

    const-string v7, ""

    invoke-interface {v5, v6, v3, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_80

    .line 1772
    :cond_14d
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    goto/16 :goto_87

    :cond_151
    move v3, v0

    move v0, v1

    goto/16 :goto_7d

    :cond_155
    move v0, v1

    goto/16 :goto_6f

    .line 1746
    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_f4
        :pswitch_107
        :pswitch_116
        :pswitch_129
        :pswitch_13c
    .end packed-switch
.end method

.method public onShift(Landroid/view/View;Z)V
    .registers 7
    .parameter "mV"
    .parameter "onOff"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x3b

    .line 234
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    if-ne p2, v0, :cond_9

    .line 253
    :goto_8
    return-void

    .line 239
    :cond_9
    if-eqz p2, :cond_1f

    .line 240
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 241
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 252
    :goto_1b
    invoke-virtual {p0, p2}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    goto :goto_8

    .line 244
    :cond_1f
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 248
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1b
.end method

.method public originCount(Ljava/lang/StringBuilder;)I
    .registers 4
    .parameter "s"

    .prologue
    .line 763
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 764
    const/4 v0, 0x0

    .line 766
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->commaCount(Ljava/lang/StringBuilder;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_b
.end method

.method public removeSub(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 770
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 778
    .end local p1
    :goto_6
    return-object p1

    .line 773
    .restart local p1
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v1, sub:Ljava/lang/StringBuilder;
    move v0, p2

    .local v0, i:I
    :goto_d
    if-ge v0, p3, :cond_21

    .line 775
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1e

    .line 776
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    move-object p1, v1

    .line 778
    goto :goto_6
.end method

.method public repairDisplay()V
    .registers 6

    .prologue
    .line 963
    const/4 v1, 0x0

    .line 964
    .local v1, par_num:I
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 967
    .local v2, txt:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_24

    .line 968
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_17

    .line 969
    add-int/lit8 v1, v1, -0x1

    .line 970
    :cond_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_21

    .line 971
    add-int/lit8 v1, v1, 0x1

    .line 967
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 974
    :cond_24
    if-nez v1, :cond_27

    .line 980
    :cond_26
    return-void

    .line 977
    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_26

    .line 978
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, ")"

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method

.method public replaceInput()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 272
    iput-boolean v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->checkError()I

    move-result v1

    .line 274
    .local v1, equal:I
    const/4 v4, 0x0

    .line 275
    .local v4, transLen:I
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0, v6, v9}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    .line 276
    .local v2, start:I
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    .line 278
    .local v0, end:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v3, text:Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    if-eq v1, v6, :cond_64

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_47

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_47

    .line 282
    const-string v6, "(\u00ad"

    invoke-virtual {v3, v5, v9, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 285
    :cond_47
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_78

    sub-int v6, v2, v1

    add-int/lit8 v2, v6, -0x1

    .line 288
    :goto_5a
    sub-int v6, v0, v1

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_7a

    sub-int v5, v0, v1

    add-int/lit8 v0, v5, -0x1

    .line 291
    :cond_64
    :goto_64
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v4

    .line 292
    if-le v2, v4, :cond_6b

    move v2, v4

    .line 293
    :cond_6b
    if-le v0, v4, :cond_6e

    move v0, v4

    .line 295
    :cond_6e
    if-eq v2, v0, :cond_7c

    if-ne v0, v4, :cond_7c

    .line 296
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 299
    :goto_77
    return-void

    :cond_78
    move v2, v5

    .line 287
    goto :goto_5a

    :cond_7a
    move v0, v5

    .line 288
    goto :goto_64

    .line 298
    :cond_7c
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_77
.end method

.method public resultFormating(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "strValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1298
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    .line 1299
    :cond_9
    const-string v0, ""

    .line 1309
    :goto_b
    return-object v0

    .line 1302
    :cond_c
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1306
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1307
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1309
    :cond_27
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public setFrontText(Ljava/lang/String;)V
    .registers 2
    .parameter "frontText"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/calculator/EventHandler;->frontText:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setLongClick(Z)V
    .registers 2
    .parameter "isLongClick"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isLongClick:Z

    .line 190
    return-void
.end method

.method public setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 10
    .parameter "text"
    .parameter "result"
    .parameter "error"

    .prologue
    .line 902
    iput p3, p0, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    .line 903
    if-eqz p3, :cond_91

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, msg:Ljava/lang/String;
    :goto_e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 906
    .local v0, cursor:I
    sparse-switch p3, :sswitch_data_c0

    .line 924
    if-nez p3, :cond_27

    const-string v2, "Infinity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "NaN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 927
    :cond_27
    const-string v2, "Infinity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "NaN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 928
    :cond_37
    const p3, 0x7f070001

    .line 929
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 930
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    .line 935
    :cond_50
    if-eqz p3, :cond_ba

    .line 936
    :goto_52
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 937
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 938
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    .line 940
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 941
    :goto_90
    return-void

    .end local v0           #cursor:I
    .end local v1           #msg:Ljava/lang/String;
    :cond_91
    move-object v1, p2

    .line 903
    goto/16 :goto_e

    .line 910
    .restart local v0       #cursor:I
    .restart local v1       #msg:Ljava/lang/String;
    :sswitch_94
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getFrontText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 913
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    goto :goto_90

    .line 917
    :sswitch_a7
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0x43

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 918
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    goto :goto_90

    .line 935
    :cond_ba
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_52

    .line 906
    nop

    :sswitch_data_c0
    .sparse-switch
        0x7f070002 -> :sswitch_94
        0x7f070003 -> :sswitch_94
        0x7f070004 -> :sswitch_94
        0x7f070016 -> :sswitch_a7
    .end sparse-switch
.end method

.method public setSelecting(Z)V
    .registers 3
    .parameter "isSelecting"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    .line 166
    return-void
.end method

.method public setSelectingAll(Z)V
    .registers 2
    .parameter "isSelecting"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    .line 172
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    .line 173
    return-void
.end method

.method public setSignParenthesisState(Z)V
    .registers 2
    .parameter "isOpen"

    .prologue
    .line 1999
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    .line 2000
    return-void
.end method

.method public setmCursorState(Z)V
    .registers 2
    .parameter "mCursorState"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->mCursorState:Z

    .line 147
    return-void
.end method

.method public showCursor()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setmCursorState(Z)V

    .line 153
    return-void
.end method
