.class public Lcom/sec/android/app/myfiles/SimpleItem;
.super Ljava/lang/Object;
.source "SimpleItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/SimpleItem$5;,
        Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/myfiles/SimpleItem;",
        ">;"
    }
.end annotation


# static fields
.field public static FilesNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field public static FilesSizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field public static FilesTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field public static FilesTypeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private act:Landroid/app/Activity;

.field private mDate:J

.field private mFile:Ljava/io/File;

.field private mIcon:Lcom/sec/android/app/myfiles/SimpleIcon;

.field private mIsBtVisible:Z

.field private mIsChecked:Z

.field private mIsChecking:Z

.field private mIsFile:Z

.field private mIsIcon:Z

.field private mIsImage:Z

.field private mIsMarkable:Z

.field private mIsMarked:Z

.field private mIsProtected:Z

.field private mIsRename:Z

.field private mIsSkipIcon:Z

.field mItemType:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field private mLength:J

.field private mSelectable:Z

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 302
    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$1;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/SimpleItem$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesNameComparator:Ljava/util/Comparator;

    .line 326
    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$2;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/SimpleItem$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesTimeComparator:Ljava/util/Comparator;

    .line 346
    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$3;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/SimpleItem$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesSizeComparator:Ljava/util/Comparator;

    .line 379
    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$4;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/SimpleItem$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesTypeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V
    .registers 16
    .parameter "ctx"
    .parameter "file"
    .parameter "bullet"
    .parameter "isChecked"
    .parameter "isProtected"
    .parameter "isBtVisible"
    .parameter "type"

    .prologue
    const/16 v7, 0x2e

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v4, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    iput-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mItemType:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    .line 31
    const-string v4, ""

    iput-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    .line 33
    const-string v4, ""

    iput-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText2:Ljava/lang/String;

    .line 37
    const-string v4, ""

    iput-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mType:Ljava/lang/String;

    .line 43
    iput-wide v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mDate:J

    .line 45
    iput-wide v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mLength:J

    .line 47
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mSelectable:Z

    .line 49
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsIcon:Z

    .line 51
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsSkipIcon:Z

    .line 53
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsFile:Z

    .line 55
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsChecked:Z

    .line 57
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsImage:Z

    .line 59
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsChecking:Z

    .line 61
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsMarked:Z

    .line 63
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsMarkable:Z

    .line 65
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsRename:Z

    .line 67
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsProtected:Z

    .line 69
    iput-boolean v6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsBtVisible:Z

    .line 75
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SimpleItem;->act:Landroid/app/Activity;

    .line 76
    iput-object p3, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIcon:Lcom/sec/android/app/myfiles/SimpleIcon;

    .line 77
    iput-object p2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    .line 78
    iput-boolean p4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsChecked:Z

    .line 79
    iput-boolean p5, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsProtected:Z

    .line 80
    iput-boolean p6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsBtVisible:Z

    .line 81
    iput-object p7, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mItemType:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, lastDot:I
    sget-object v4, Lcom/sec/android/app/myfiles/SimpleItem$5;->$SwitchMap$com$sec$android$app$myfiles$SimpleItem$ItemType:[I

    iget-object v5, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mItemType:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_118

    .line 138
    :cond_53
    :goto_53
    return-void

    .line 86
    :pswitch_54
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    goto :goto_53

    .line 89
    :pswitch_64
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    goto :goto_53

    .line 92
    :pswitch_74
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    goto :goto_53

    .line 96
    :pswitch_84
    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isForwardable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9d

    .line 98
    invoke-direct {p0, v6}, Lcom/sec/android/app/myfiles/SimpleItem;->setSelectable(Z)V

    .line 106
    :cond_9d
    iput-boolean p6, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsMarked:Z

    .line 110
    :pswitch_9f
    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    if-eqz v4, :cond_53

    .line 111
    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsFile:Z

    .line 112
    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    .line 114
    iget-boolean v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsFile:Z

    if-eqz v4, :cond_d7

    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getShowExtStatus()Z

    move-result v4

    if-nez v4, :cond_d7

    .line 117
    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 118
    if-lez v1, :cond_d7

    .line 119
    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    .line 122
    :cond_d7
    iget-boolean v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsFile:Z

    if-eqz v4, :cond_102

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mLength:J

    .line 127
    :goto_e3
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mDate:J

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, extLength:I
    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_115

    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_fe
    iput-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mType:Ljava/lang/String;

    goto/16 :goto_53

    .line 125
    .end local v0           #extLength:I
    :cond_102
    iget-object v4, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_112

    iget-object v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    :cond_112
    iput-wide v2, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mLength:J

    goto :goto_e3

    .line 130
    .restart local v0       #extLength:I
    :cond_115
    const-string v2, ""

    goto :goto_fe

    .line 84
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_54
        :pswitch_64
        :pswitch_74
        :pswitch_84
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;ZZ)V
    .registers 10
    .parameter "ctx"
    .parameter "file"
    .parameter "bullet"
    .parameter "isChecked"
    .parameter "isProtected"
    .parameter "isBtVisible"
    .parameter "itemType"
    .parameter "isIcon"
    .parameter "isImage"

    .prologue
    .line 143
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    .line 144
    iput-boolean p8, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsIcon:Z

    .line 145
    iput-boolean p9, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsImage:Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    return-object v0
.end method

.method private setSelectable(Z)V
    .registers 2
    .parameter "selectable"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mSelectable:Z

    .line 222
    return-void
.end method

.method public static sort(Ljava/util/List;I)V
    .registers 3
    .parameter
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, directoryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    packed-switch p1, :pswitch_data_1c

    .line 300
    :goto_3
    return-void

    .line 286
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesTimeComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 289
    :pswitch_a
    sget-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesTypeComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 292
    :pswitch_10
    sget-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesNameComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 295
    :pswitch_16
    sget-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesSizeComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 284
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/myfiles/SimpleItem;)I
    .registers 4
    .parameter "other"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 280
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/SimpleItem;->compareTo(Lcom/sec/android/app/myfiles/SimpleItem;)I

    move-result v0

    return v0
.end method

.method public getChecking()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsChecking:Z

    return v0
.end method

.method public getDateLong()J
    .registers 3

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mDate:J

    return-wide v0
.end method

.method public getExtention()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIcon:Lcom/sec/android/app/myfiles/SimpleIcon;

    return-object v0
.end method

.method public getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mItemType:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mLength:J

    return-wide v0
.end method

.method public getText1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsChecked:Z

    return v0
.end method

.method public isDirectory()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsFile:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFile()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsFile:Z

    return v0
.end method

.method public isIcon()Z
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsIcon:Z

    return v0
.end method

.method public isImage()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsImage:Z

    return v0
.end method

.method public isMarked()Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsMarked:Z

    return v0
.end method

.method public isReal()Z
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSelectable()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mSelectable:Z

    return v0
.end method

.method public isSkipThumb()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsSkipIcon:Z

    return v0
.end method

.method public setChecking(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsChecking:Z

    .line 174
    return-void
.end method

.method public setIsIcon(Z)V
    .registers 2
    .parameter "isIcon"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsIcon:Z

    .line 210
    return-void
.end method

.method public setMarked(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsMarked:Z

    .line 182
    return-void
.end method

.method public setSkipThumb(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/SimpleItem;->mIsSkipIcon:Z

    .line 170
    return-void
.end method
