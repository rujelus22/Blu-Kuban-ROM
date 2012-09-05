.class public Lcom/infraware/filemanager/file/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;,
        Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;,
        Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;,
        Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;
    }
.end annotation


# static fields
.field static final MARGIIN_NORMAL_RIGHT:I = 0xa


# instance fields
.field clrState:Landroid/content/res/ColorStateList;

.field clrState_path:Landroid/content/res/ColorStateList;

.field clrState_size:Landroid/content/res/ColorStateList;

.field clrState_time:Landroid/content/res/ColorStateList;

.field private context:Landroid/content/Context;

.field mIsRtol:Z

.field private m_bAscend:Z

.field private m_bShowExt:Z

.field private m_listFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/file/FileListItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_nCheckWidth:I

.field private m_nListType:I

.field private m_nSelectMode:I

.field private m_nSort:I

.field private m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

.field private m_oInflater:Landroid/view/LayoutInflater;

.field private m_oSelectHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const v6, 0x10100a7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    .line 39
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oSelectHandler:Landroid/os/Handler;

    .line 40
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    .line 42
    iput v4, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSort:I

    .line 44
    iput-boolean v4, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bAscend:Z

    .line 45
    iput-boolean v4, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bShowExt:Z

    .line 47
    iput v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSelectMode:I

    .line 48
    iput v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nListType:I

    .line 50
    iput v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nCheckWidth:I

    .line 52
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_time:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_size:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_path:Landroid/content/res/ColorStateList;

    .line 54
    iput-boolean v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->mIsRtol:Z

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    .line 58
    new-instance v0, Lcom/infraware/filemanager/file/FileListIcon;

    invoke-direct {v0, p1}, Lcom/infraware/filemanager/file/FileListIcon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isRtolLocaleType(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->mIsRtol:Z

    .line 62
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungGlobalVer()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 63
    :cond_52
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 64
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 65
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 66
    new-array v2, v5, [I

    fill-array-data v2, :array_116

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 63
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState:Landroid/content/res/ColorStateList;

    .line 68
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 69
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 70
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 71
    new-array v2, v5, [I

    fill-array-data v2, :array_11e

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 68
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_time:Landroid/content/res/ColorStateList;

    .line 73
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 74
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 75
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 76
    new-array v2, v5, [I

    fill-array-data v2, :array_126

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 73
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_size:Landroid/content/res/ColorStateList;

    .line 78
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 79
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 80
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 81
    new-array v2, v5, [I

    fill-array-data v2, :array_12e

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 78
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_path:Landroid/content/res/ColorStateList;

    .line 104
    :goto_b2
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    .line 105
    return-void

    .line 83
    :cond_b5
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 84
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 85
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 86
    new-array v2, v5, [I

    fill-array-data v2, :array_136

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 83
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState:Landroid/content/res/ColorStateList;

    .line 88
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 89
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 90
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 91
    new-array v2, v5, [I

    fill-array-data v2, :array_13e

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 88
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_time:Landroid/content/res/ColorStateList;

    .line 93
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 94
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 95
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 96
    new-array v2, v5, [I

    fill-array-data v2, :array_146

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 93
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_size:Landroid/content/res/ColorStateList;

    .line 98
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v5, [[I

    .line 99
    new-array v2, v4, [I

    aput v6, v2, v3

    aput-object v2, v1, v3

    .line 100
    new-array v2, v3, [I

    aput-object v2, v1, v4

    .line 101
    new-array v2, v5, [I

    fill-array-data v2, :array_14e

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 98
    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_path:Landroid/content/res/ColorStateList;

    goto :goto_b2

    .line 66
    :array_116
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 71
    :array_11e
    .array-data 0x4
        0xeat 0xedt 0x2t 0xfft
        0xeat 0xedt 0x2t 0xfft
    .end array-data

    .line 76
    :array_126
    .array-data 0x4
        0xeat 0xedt 0x2t 0xfft
        0xeat 0xedt 0x2t 0xfft
    .end array-data

    .line 81
    :array_12e
    .array-data 0x4
        0xeat 0xedt 0x2t 0xfft
        0xeat 0xedt 0x2t 0xfft
    .end array-data

    .line 86
    :array_136
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 91
    :array_13e
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xeat 0xedt 0x2t 0xfft
    .end array-data

    .line 96
    :array_146
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xeat 0xedt 0x2t 0xfft
    .end array-data

    .line 101
    :array_14e
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xeat 0xedt 0x2t 0xfft
    .end array-data
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    invoke-direct {p0, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter;->nameCompare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/filemanager/file/FileListAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oSelectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getFileUpdateTime(J)Ljava/lang/String;
    .registers 4
    .parameter "updateTime"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/infraware/common/util/FileUtils;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSize(J)Ljava/lang/String;
    .registers 4
    .parameter "size"

    .prologue
    .line 900
    invoke-static {p1, p2}, Lcom/infraware/common/util/FileUtils;->getSizeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nameCompare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 514
    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/infraware/filemanager/file/FileListAdapter;->nameCompareEx(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 515
    .local v2, result:I
    if-nez v2, :cond_32

    .line 517
    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_33

    iget-object v0, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 518
    .local v0, ext1:Ljava/lang/String;
    :goto_1c
    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_36

    iget-object v1, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 519
    .local v1, ext2:Ljava/lang/String;
    :goto_26
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 521
    .end local v0           #ext1:Ljava/lang/String;
    .end local v1           #ext2:Ljava/lang/String;
    :cond_32
    return v2

    .line 517
    :cond_33
    iget-object v0, p1, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    goto :goto_1c

    .line 518
    .restart local v0       #ext1:Ljava/lang/String;
    :cond_36
    iget-object v1, p2, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    goto :goto_26
.end method


# virtual methods
.method public CheckNumber(C)Z
    .registers 3
    .parameter "check"

    .prologue
    .line 410
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x3a

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public GetNumber(Ljava/lang/String;I)D
    .registers 10
    .parameter "str"
    .parameter "nStartIndex"

    .prologue
    .line 414
    const-wide/16 v2, 0x0

    .line 415
    .local v2, nNum:D
    const/4 v4, -0x1

    .local v4, nStart:I
    const/4 v1, -0x1

    .line 416
    .local v1, nEnd:I
    move v0, p2

    .local v0, n:I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_1a

    .line 428
    :goto_b
    if-lez v4, :cond_19

    if-lez v1, :cond_19

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 431
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 432
    .local v5, strNum:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 435
    .end local v5           #strNum:Ljava/lang/String;
    :cond_19
    return-wide v2

    .line 418
    :cond_1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/infraware/filemanager/file/FileListAdapter;->CheckNumber(C)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 420
    const/4 v6, -0x1

    if-ne v4, v6, :cond_28

    .line 421
    move v4, v0

    .line 422
    :cond_28
    move v1, v0

    .line 416
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 424
    :cond_2c
    if-lez v4, :cond_29

    goto :goto_b
.end method

.method public GetNumberLastPos(Ljava/lang/String;I)I
    .registers 8
    .parameter "str"
    .parameter "nStartIndex"

    .prologue
    .line 439
    move v2, p2

    .line 440
    .local v2, nNum:I
    const/4 v3, -0x1

    .local v3, nStart:I
    const/4 v1, -0x1

    .line 441
    .local v1, nEnd:I
    move v0, p2

    .local v0, n:I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_10

    .line 453
    :goto_a
    if-lez v3, :cond_f

    if-lez v1, :cond_f

    .line 454
    move v2, v1

    .line 456
    :cond_f
    return v2

    .line 443
    :cond_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/file/FileListAdapter;->CheckNumber(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 445
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 446
    move v3, v0

    .line 447
    :cond_1e
    move v1, v0

    .line 441
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 449
    :cond_22
    if-lez v3, :cond_1f

    goto :goto_a
.end method

.method public addList(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public clearList()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void
.end method

.method public clearSelectedList()V
    .registers 5

    .prologue
    .line 707
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 708
    .local v0, nCount:I
    const/4 v1, 0x0

    .line 710
    .local v1, nIndex:I
    const/4 v1, 0x0

    :goto_8
    if-lt v1, v0, :cond_b

    .line 717
    return-void

    .line 712
    :cond_b
    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/file/FileListItem;

    .line 713
    .local v2, tmpItem:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v2, :cond_16

    .line 714
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    .line 710
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public findItem(Lcom/infraware/filemanager/file/FileListItem;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 6
    .parameter "findItem"

    .prologue
    const/4 v2, 0x0

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_c

    move-object v1, v2

    .line 157
    :cond_b
    :goto_b
    return-object v1

    .line 149
    :cond_c
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/file/FileListItem;

    .line 150
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v1, :cond_18

    move-object v1, v2

    .line 151
    goto :goto_b

    .line 153
    :cond_18
    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/file/FileListItem;->equal(Lcom/infraware/filemanager/file/FileListItem;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListType()I
    .registers 2

    .prologue
    .line 614
    iget v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nListType:I

    return v0
.end method

.method public getPosition(Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 7
    .parameter "item"

    .prologue
    .line 161
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, nCount:I
    const/4 v1, 0x0

    .line 164
    .local v1, nIndex:I
    const/4 v1, 0x0

    :goto_8
    if-lt v1, v0, :cond_c

    .line 173
    const/4 v1, -0x1

    .end local v1           #nIndex:I
    :cond_b
    return v1

    .line 166
    .restart local v1       #nIndex:I
    :cond_c
    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/file/FileListItem;

    .line 167
    .local v2, tmpItem:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v2, :cond_28

    .line 168
    iget-object v3, v2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_28

    .line 169
    iget-object v3, v2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    iget-object v4, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b

    .line 164
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public getSelectMode()I
    .registers 2

    .prologue
    .line 673
    iget v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSelectMode:I

    return v0
.end method

.method public getSelectableCount()I
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 677
    iget-object v5, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 678
    .local v2, nListSize:I
    if-gtz v2, :cond_b

    move v3, v4

    .line 703
    :cond_a
    :goto_a
    return v3

    .line 681
    :cond_b
    const/4 v3, 0x0

    .line 682
    .local v3, nSelectableCount:I
    iget v5, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSelectMode:I

    packed-switch v5, :pswitch_data_3c

    goto :goto_a

    .line 685
    :pswitch_12
    if-lez v2, :cond_25

    .line 687
    iget-object v5, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/file/FileListItem;

    .line 688
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v1, :cond_25

    iget v4, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_25

    .line 689
    add-int/lit8 v2, v2, -0x1

    .line 691
    .end local v1           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_25
    move v3, v2

    .line 692
    goto :goto_a

    .line 694
    :pswitch_27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    if-ge v0, v2, :cond_a

    .line 696
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/file/FileListItem;

    .line 697
    .restart local v1       #item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v4, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v4, :cond_38

    .line 698
    add-int/lit8 v3, v3, 0x1

    .line 694
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 682
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_27
    .end packed-switch
.end method

.method public getShowExt()Z
    .registers 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bShowExt:Z

    return v0
.end method

.method public getSortField()I
    .registers 2

    .prologue
    .line 577
    iget v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSort:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 177
    const/4 v3, 0x0

    .line 179
    .local v3, holder:Lcom/infraware/filemanager/file/FileViewHolder;
    if-eqz p2, :cond_9

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder:Lcom/infraware/filemanager/file/FileViewHolder;
    check-cast v3, Lcom/infraware/filemanager/file/FileViewHolder;

    .line 183
    .restart local v3       #holder:Lcom/infraware/filemanager/file/FileViewHolder;
    :cond_9
    if-eqz p2, :cond_11

    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->mIsRtol:Z

    iget-boolean v11, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_LocaleType:Z

    if-eq v10, v11, :cond_7f

    .line 184
    :cond_11
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03001f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 188
    new-instance v3, Lcom/infraware/filemanager/file/FileViewHolder;

    .end local v3           #holder:Lcom/infraware/filemanager/file/FileViewHolder;
    invoke-direct {v3}, Lcom/infraware/filemanager/file/FileViewHolder;-><init>()V

    .line 189
    .restart local v3       #holder:Lcom/infraware/filemanager/file/FileViewHolder;
    const v10, 0x7f0c009a

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSelect:Landroid/widget/TextView;

    .line 190
    const v10, 0x7f0c009c

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textName:Landroid/widget/TextView;

    .line 191
    const v10, 0x7f0c009d

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    .line 192
    const v10, 0x7f0c009e

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSize:Landroid/widget/TextView;

    .line 193
    const v10, 0x7f0c009f

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textPath:Landroid/widget/TextView;

    .line 194
    const v10, 0x7f0c0098

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    .line 195
    const v10, 0x7f0c0099

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    .line 196
    const v10, 0x7f0c00a1

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_checkBox:Landroid/widget/CheckBox;

    .line 197
    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->mIsRtol:Z

    iput-boolean v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_LocaleType:Z

    .line 199
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    :cond_7f
    move-object v7, p2

    .line 204
    .local v7, localView:Landroid/view/View;
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_90

    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v10, p1, :cond_91

    .line 406
    :cond_90
    :goto_90
    return-object v7

    .line 208
    :cond_91
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/file/FileListItem;

    .line 210
    .local v6, item:Lcom/infraware/filemanager/file/FileListItem;
    const/high16 v10, 0x7f09

    invoke-virtual {v7, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 211
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSelect:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSelect:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textName:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 217
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textName:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSize:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textPath:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_time:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 228
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSize:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_size:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 229
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textPath:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->clrState_path:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 231
    iget v10, v6, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_18a

    .line 233
    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    if-eqz v10, :cond_17b

    .line 234
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSelect:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    const v12, 0x7f0800a0

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_10b
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSelect:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textName:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    const v10, 0x775d5d5d

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 344
    :cond_125
    :goto_125
    const/4 v5, 0x0

    .line 345
    .local v5, isCheckable:Z
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oSelectHandler:Landroid/os/Handler;

    if-eqz v10, :cond_12f

    .line 347
    iget v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSelectMode:I

    packed-switch v10, :pswitch_data_356

    .line 359
    :cond_12f
    :goto_12f
    const v10, 0x7f0c009b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 360
    .local v0, content:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 361
    .local v8, margin:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_331

    .line 363
    move v4, p1

    .line 364
    .local v4, index:I
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_checkBox:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 365
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_checkBox:Landroid/widget/CheckBox;

    iget-boolean v11, v6, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 366
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_checkBox:Landroid/widget/CheckBox;

    new-instance v11, Lcom/infraware/filemanager/file/FileListAdapter$1;

    invoke-direct {v11, p0, v4, v6}, Lcom/infraware/filemanager/file/FileListAdapter$1;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;ILcom/infraware/filemanager/file/FileListItem;)V

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nCheckWidth:I

    if-gtz v10, :cond_164

    .line 387
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nCheckWidth:I

    .line 390
    :cond_164
    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->mIsRtol:Z

    if-eqz v10, :cond_321

    .line 391
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    const/high16 v11, 0x4120

    invoke-static {v10, v11}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    iget v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nCheckWidth:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 404
    .end local v4           #index:I
    :goto_176
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_90

    .line 236
    .end local v0           #content:Landroid/widget/LinearLayout;
    .end local v5           #isCheckable:Z
    .end local v8           #margin:Landroid/widget/FrameLayout$LayoutParams;
    :cond_17b
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSelect:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    const v12, 0x7f08009f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10b

    .line 251
    :cond_18a
    iget v10, v6, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-nez v10, :cond_1a3

    .line 253
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textName:Landroid/widget/TextView;

    iget-object v11, v6, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget v12, v6, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    invoke-virtual {v11, v12}, Lcom/infraware/filemanager/file/FileListIcon;->getRootIcon(I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_125

    .line 258
    :cond_1a3
    iget-object v2, v6, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 259
    .local v2, fileName:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bShowExt:Z

    if-eqz v10, :cond_1d2

    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v10, :cond_1d2

    iget-object v10, v6, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v10, :cond_1d2

    iget-object v10, v6, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1d2

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    :cond_1d2
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textName:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v10, v6, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    const-string v11, ".."

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1f0

    .line 266
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v12, v6, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/infraware/filemanager/file/FileListIcon;->getFolderIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_125

    .line 270
    :cond_1f0
    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v10, :cond_241

    .line 272
    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isSDCard:Z

    if-eqz v10, :cond_222

    iget-object v10, v6, Lcom/infraware/filemanager/file/FileListItem;->icon:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_222

    .line 274
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v11, v6, Lcom/infraware/filemanager/file/FileListItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :goto_20a
    iget v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nListType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_125

    .line 338
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {v11}, Lcom/infraware/filemanager/file/FileListIcon;->getShortcutIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_125

    .line 279
    :cond_222
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v12, v6, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/infraware/filemanager/file/FileListIcon;->getFolderIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    iget-wide v11, v6, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    invoke-direct {p0, v11, v12}, Lcom/infraware/filemanager/file/FileListAdapter;->getFileUpdateTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20a

    .line 287
    :cond_241
    iget-object v10, v6, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-static {v10}, Lcom/infraware/filemanager/porting/DRM;->isDRMExt(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2c3

    .line 289
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v1

    .line 290
    .local v1, drm:Lcom/infraware/filemanager/porting/DRM;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, strFileName:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v9, v10}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v10

    if-lez v10, :cond_2b0

    .line 293
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {v11, v1, v6}, Lcom/infraware/filemanager/file/FileListIcon;->getDRMFileIcon(Lcom/infraware/filemanager/porting/DRM;Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    invoke-virtual {v1, v9}, Lcom/infraware/filemanager/porting/DRM;->isIconVisible(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2a8

    .line 296
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {v11, v1, v6}, Lcom/infraware/filemanager/file/FileListIcon;->getDRMIcon(Lcom/infraware/filemanager/porting/DRM;Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    .end local v1           #drm:Lcom/infraware/filemanager/porting/DRM;
    .end local v9           #strFileName:Ljava/lang/String;
    :goto_294
    iget v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nListType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2d6

    .line 316
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textPath:Landroid/widget/TextView;

    iget-object v11, v6, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textPath:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_20a

    .line 300
    .restart local v1       #drm:Lcom/infraware/filemanager/porting/DRM;
    .restart local v9       #strFileName:Ljava/lang/String;
    :cond_2a8
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_294

    .line 304
    :cond_2b0
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {v11, v6}, Lcom/infraware/filemanager/file/FileListIcon;->getFileIcon(Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_294

    .line 310
    .end local v1           #drm:Lcom/infraware/filemanager/porting/DRM;
    .end local v9           #strFileName:Ljava/lang/String;
    :cond_2c3
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {v11, v6}, Lcom/infraware/filemanager/file/FileListIcon;->getFileIcon(Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_imageSubIcon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_294

    .line 321
    :cond_2d6
    iget v10, v6, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2ee

    .line 323
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    iget-wide v11, v6, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    invoke-direct {p0, v11, v12}, Lcom/infraware/filemanager/file/FileListAdapter;->getFileUpdateTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_20a

    .line 328
    :cond_2ee
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    iget-wide v11, v6, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    invoke-direct {p0, v11, v12}, Lcom/infraware/filemanager/file/FileListAdapter;->getFileUpdateTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textTime:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSize:Landroid/widget/TextView;

    iget-wide v11, v6, Lcom/infraware/filemanager/file/FileListItem;->size:J

    invoke-direct {p0, v11, v12}, Lcom/infraware/filemanager/file/FileListAdapter;->getSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_textSize:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_20a

    .line 350
    .end local v2           #fileName:Ljava/lang/String;
    .restart local v5       #isCheckable:Z
    :pswitch_312
    const/4 v5, 0x1

    .line 351
    goto/16 :goto_12f

    .line 353
    :pswitch_315
    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v10, :cond_31e

    iget v10, v6, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_12f

    .line 354
    :cond_31e
    const/4 v5, 0x1

    goto/16 :goto_12f

    .line 393
    .restart local v0       #content:Landroid/widget/LinearLayout;
    .restart local v4       #index:I
    .restart local v8       #margin:Landroid/widget/FrameLayout$LayoutParams;
    :cond_321
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    const/high16 v11, 0x4120

    invoke-static {v10, v11}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    iget v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nCheckWidth:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_176

    .line 397
    .end local v4           #index:I
    :cond_331
    iget-object v10, v3, Lcom/infraware/filemanager/file/FileViewHolder;->m_checkBox:Landroid/widget/CheckBox;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 398
    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->mIsRtol:Z

    if-eqz v10, :cond_348

    .line 399
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    const/high16 v11, 0x4120

    invoke-static {v10, v11}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_176

    .line 401
    :cond_348
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    const/high16 v11, 0x4120

    invoke-static {v10, v11}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_176

    .line 347
    nop

    :pswitch_data_356
    .packed-switch 0x1
        :pswitch_312
        :pswitch_315
    .end packed-switch
.end method

.method public insertSelector()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 877
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 878
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v0, :cond_1a

    iget v1, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-ne v1, v3, :cond_1a

    .line 887
    :goto_19
    return-void

    .line 882
    :cond_1a
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 883
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput v3, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 884
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 886
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_19
.end method

.method public insertUpFolder(ILjava/lang/String;)V
    .registers 7
    .parameter "type"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_23

    .line 839
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 840
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v0, :cond_23

    iget-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_23

    .line 854
    :cond_22
    :goto_22
    return-void

    .line 844
    :cond_23
    if-eqz v0, :cond_22

    .line 847
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 848
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 849
    iput p1, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 850
    iput-object p2, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 851
    const-string v1, ".."

    iput-object v1, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 853
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_22
.end method

.method public isAscending()Z
    .registers 2

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bAscend:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 822
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 832
    :cond_a
    :goto_a
    return v1

    .line 825
    :cond_b
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_2b

    .line 827
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 828
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v0, :cond_a

    iget-boolean v3, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v3, :cond_2b

    iget-object v3, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_2b
    move v1, v2

    .line 832
    goto :goto_a
.end method

.method public nameCompareEx(Ljava/lang/String;Ljava/lang/String;)I
    .registers 20
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 462
    const/4 v14, 0x0

    .line 463
    .local v14, result:I
    move-object/from16 v3, p1

    .line 464
    .local v3, cmp1:Ljava/lang/String;
    move-object/from16 v4, p2

    .line 466
    .local v4, cmp2:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 467
    .local v9, nLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 468
    .local v10, nMinLen:I
    const/4 v11, 0x0

    .line 470
    .local v11, nNumber:I
    :goto_1e
    if-lt v11, v10, :cond_3c

    .line 492
    :cond_20
    if-ne v11, v10, :cond_9e

    if-eq v9, v10, :cond_9e

    .line 494
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_82

    .line 496
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_8e

    .line 497
    const/4 v15, -0x1

    .line 508
    :goto_3b
    return v15

    .line 472
    :cond_3c
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 473
    .local v1, chr1:C
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 474
    .local v2, chr2:C
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->CheckNumber(C)Z

    move-result v15

    if-eqz v15, :cond_7d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/infraware/filemanager/file/FileListAdapter;->CheckNumber(C)Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/infraware/filemanager/file/FileListAdapter;->GetNumber(Ljava/lang/String;I)D

    move-result-wide v5

    .line 477
    .local v5, n1:D
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/infraware/filemanager/file/FileListAdapter;->GetNumber(Ljava/lang/String;I)D

    move-result-wide v7

    .line 478
    .local v7, n2:D
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/infraware/filemanager/file/FileListAdapter;->GetNumberLastPos(Ljava/lang/String;I)I

    move-result v12

    .line 479
    .local v12, nPos1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/infraware/filemanager/file/FileListAdapter;->GetNumberLastPos(Ljava/lang/String;I)I

    move-result v13

    .line 480
    .local v13, nPos2:I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 482
    cmpl-double v15, v5, v7

    if-eqz v15, :cond_7f

    .line 485
    cmpg-double v15, v5, v7

    if-gez v15, :cond_7b

    const/4 v14, -0x1

    :goto_79
    move v15, v14

    goto :goto_3b

    :cond_7b
    const/4 v14, 0x1

    goto :goto_79

    .line 488
    .end local v5           #n1:D
    .end local v7           #n2:D
    .end local v12           #nPos1:I
    .end local v13           #nPos2:I
    :cond_7d
    if-ne v1, v2, :cond_20

    .line 470
    :cond_7f
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    .line 501
    .end local v1           #chr1:C
    .end local v2           #chr2:C
    :cond_82
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_8e

    .line 502
    const/4 v15, 0x1

    goto :goto_3b

    .line 505
    :cond_8e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_9c

    const/4 v15, -0x1

    goto :goto_3b

    :cond_9c
    const/4 v15, 0x1

    goto :goto_3b

    .line 508
    :cond_9e
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    goto :goto_3b
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isRtolLocaleType(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->mIsRtol:Z

    .line 110
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 111
    return-void
.end method

.method public removeSelector()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 891
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 897
    :cond_9
    :goto_9
    return-void

    .line 894
    :cond_a
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 895
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 896
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9
.end method

.method public removeUpFolder()V
    .registers 6

    .prologue
    .line 857
    const/4 v2, 0x1

    .line 858
    .local v2, upIndex:I
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v2, :cond_a

    .line 870
    :cond_9
    :goto_9
    return-void

    .line 861
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-gt v0, v2, :cond_9

    .line 863
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/file/FileListItem;

    .line 864
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v1, :cond_2b

    iget-boolean v3, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v3, :cond_2b

    iget-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2b

    .line 866
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 861
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public reverseSelect(Lcom/infraware/filemanager/file/FileListItem;)Z
    .registers 5
    .parameter "selectItem"

    .prologue
    const/4 v1, 0x0

    .line 635
    if-nez p1, :cond_4

    .line 643
    :cond_3
    :goto_3
    return v1

    .line 638
    :cond_4
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->findItem(Lcom/infraware/filemanager/file/FileListItem;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v0

    .line 639
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v0, :cond_3

    .line 642
    iget-boolean v2, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    if-eqz v2, :cond_13

    :goto_e
    iput-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    .line 643
    iget-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    goto :goto_3

    .line 642
    :cond_13
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public setAscending()V
    .registers 2

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bAscend:Z

    .line 587
    return-void
.end method

.method public setDescending()V
    .registers 2

    .prologue
    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bAscend:Z

    .line 591
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/file/FileListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    :cond_9
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    .line 122
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    .line 124
    :cond_16
    return-void
.end method

.method public setListType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 603
    packed-switch p1, :pswitch_data_8

    .line 612
    :goto_3
    return-void

    .line 609
    :pswitch_4
    iput p1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nListType:I

    goto :goto_3

    .line 603
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setSelect(IZ)Lcom/infraware/filemanager/file/FileListItem;
    .registers 5
    .parameter "index"
    .parameter "isSelect"

    .prologue
    const/4 v1, 0x0

    .line 661
    if-gez p1, :cond_5

    move-object v0, v1

    .line 669
    :goto_4
    return-object v0

    .line 664
    :cond_5
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 665
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v0, :cond_f

    move-object v0, v1

    .line 666
    goto :goto_4

    .line 668
    :cond_f
    iput-boolean p2, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    goto :goto_4
.end method

.method public setSelect(Lcom/infraware/filemanager/file/FileListItem;Z)Lcom/infraware/filemanager/file/FileListItem;
    .registers 5
    .parameter "selectItem"
    .parameter "isSelect"

    .prologue
    const/4 v1, 0x0

    .line 648
    if-nez p1, :cond_5

    move-object v0, v1

    .line 656
    :goto_4
    return-object v0

    .line 651
    :cond_5
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->findItem(Lcom/infraware/filemanager/file/FileListItem;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v0

    .line 652
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v0, :cond_d

    move-object v0, v1

    .line 653
    goto :goto_4

    .line 655
    :cond_d
    iput-boolean p2, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    goto :goto_4
.end method

.method public setSelectMode(ILandroid/os/Handler;)V
    .registers 4
    .parameter "selectMode"
    .parameter "handler"

    .prologue
    .line 618
    iput p1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSelectMode:I

    .line 619
    iget v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSelectMode:I

    if-eqz v0, :cond_10

    .line 620
    iput-object p2, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oSelectHandler:Landroid/os/Handler;

    .line 626
    :goto_8
    iget v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSelectMode:I

    if-eqz v0, :cond_14

    .line 627
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileListAdapter;->insertSelector()V

    .line 631
    :goto_f
    return-void

    .line 622
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_oSelectHandler:Landroid/os/Handler;

    goto :goto_8

    .line 629
    :cond_14
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileListAdapter;->removeSelector()V

    goto :goto_f
.end method

.method public setShowExt(Z)V
    .registers 2
    .parameter "isShow"

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bShowExt:Z

    .line 596
    return-void
.end method

.method public setSortField(I)V
    .registers 2
    .parameter "sortField"

    .prologue
    .line 573
    iput p1, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSort:I

    .line 574
    return-void
.end method

.method public sortFileList()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 720
    iget v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSort:I

    if-nez v10, :cond_6

    .line 819
    :cond_5
    return-void

    .line 723
    :cond_6
    const/4 v8, 0x0

    .line 724
    .local v8, selector:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v9, 0x0

    .line 725
    .local v9, upFolder:Lcom/infraware/filemanager/file/FileListItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v0, SDCardList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/file/FileListItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v3, folderList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/file/FileListItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v2, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/file/FileListItem;>;"
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 731
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1e
    if-lt v4, v1, :cond_91

    .line 758
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 760
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;)V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 761
    iget v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_nSort:I

    packed-switch v10, :pswitch_data_14a

    .line 777
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;)V

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 778
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 782
    :goto_42
    const/4 v5, 0x0

    .line 783
    .local v5, index:I
    if-eqz v8, :cond_4a

    .line 784
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_4a
    if-eqz v9, :cond_51

    .line 786
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 789
    .local v7, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/file/FileListItem;>;"
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 790
    :goto_5b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_10d

    .line 799
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 800
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 801
    :goto_6b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_125

    .line 810
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 811
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 812
    :goto_7b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 814
    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bAscend:Z

    if-eqz v10, :cond_13d

    .line 815
    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 733
    .end local v5           #index:I
    .end local v7           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/file/FileListItem;>;"
    :cond_91
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/file/FileListItem;

    .line 734
    .local v6, item:Lcom/infraware/filemanager/file/FileListItem;
    iget v10, v6, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_a3

    .line 736
    move-object v8, v6

    .line 731
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1e

    .line 740
    :cond_a3
    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v10, :cond_b3

    iget-object v10, v6, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    const-string v11, ".."

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_b3

    .line 742
    move-object v9, v6

    .line 743
    goto :goto_9f

    .line 746
    :cond_b3
    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isSDCard:Z

    if-eqz v10, :cond_bb

    .line 748
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 752
    :cond_bb
    iget-boolean v10, v6, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v10, :cond_cb

    .line 753
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/filemanager/file/FileListItem;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 755
    :cond_cb
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/filemanager/file/FileListItem;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 764
    .end local v6           #item:Lcom/infraware/filemanager/file/FileListItem;
    :pswitch_d7
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;)V

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 765
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_42

    .line 768
    :pswitch_e9
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;)V

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 769
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_42

    .line 772
    :pswitch_fb
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;)V

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 773
    new-instance v10, Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;

    invoke-direct {v10, p0, v12}, Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_42

    .line 792
    .restart local v5       #index:I
    .restart local v7       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/file/FileListItem;>;"
    :cond_10d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/file/FileListItem;

    .line 793
    .restart local v6       #item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bAscend:Z

    if-eqz v10, :cond_11e

    .line 794
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 796
    :cond_11e
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_5b

    .line 803
    .end local v6           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_125
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/file/FileListItem;

    .line 804
    .restart local v6       #item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_bAscend:Z

    if-eqz v10, :cond_136

    .line 805
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6b

    .line 807
    :cond_136
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6b

    .line 817
    .end local v6           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_13d
    iget-object v11, p0, Lcom/infraware/filemanager/file/FileListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v11, v5, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7b

    .line 761
    :pswitch_data_14a
    .packed-switch 0x2
        :pswitch_d7
        :pswitch_e9
        :pswitch_fb
    .end packed-switch
.end method
