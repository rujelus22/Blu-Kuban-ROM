.class public Lcom/wssnps/database/smlSmemoItem;
.super Ljava/lang/Object;
.source "smlSmemoItem.java"


# static fields
.field static cacheFilePath:Ljava/lang/String;

.field public static m_context:Landroid/content/Context;

.field static strokeFileName:Ljava/lang/String;

.field static strokeFilePath:Ljava/lang/String;

.field static switcherFileName:Ljava/lang/String;

.field static switcherFilePath:Ljava/lang/String;

.field static thumbFileName:Ljava/lang/String;

.field public static thumb_byte:[B


# instance fields
.field public ext_data_count:I

.field public m_Content:Ljava/lang/String;

.field public m_CreateDate:J

.field public m_Data:[Ljava/lang/String;

.field public m_Data_path:[[B

.field public m_Drawing:Ljava/lang/String;

.field public m_Drawing_byte:[B

.field public m_Dummy:[Ljava/lang/String;

.field public m_ExtraInfo:[Ljava/lang/String;

.field public m_FolderStr:Ljava/lang/String;

.field public m_HasVoice:I

.field public m_IsFavorite:I

.field public m_IsFolder:I

.field public m_IsLock:I

.field public m_Keynum:[I

.field public m_LastMode:I

.field public m_MemoID:[J

.field public m_ModDate:J

.field public m_ParentID:I

.field public m_PileOrder:I

.field public m_Position:[Ljava/lang/String;

.field public m_ScaleXY:[Ljava/lang/String;

.field public m_Sequence:[I

.field public m_Size:[I

.field public m_SmemoData:Ljava/lang/String;

.field public m_Stroke_Data:Ljava/lang/String;

.field public m_Stroke_byte:[B

.field public m_SwitcherImage:Ljava/lang/String;

.field public m_Sync:Ljava/lang/String;

.field public m_Tag:Ljava/lang/String;

.field public m_Tehme:I

.field public m_Text:Ljava/lang/String;

.field public m_TextInfo:[Ljava/lang/String;

.field public m_Thumb_Data:Ljava/lang/String;

.field public m_Thumb_byte:[B

.field public m_Title:Ljava/lang/String;

.field public m_Type:[I

.field public m_ext_id:[I

.field public m_id:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 42
    sput-object v1, Lcom/wssnps/database/smlSmemoItem;->m_context:Landroid/content/Context;

    .line 95
    const-string v0, "/mnt/sdcard/Application/SMemo/cache"

    sput-object v0, Lcom/wssnps/database/smlSmemoItem;->cacheFilePath:Ljava/lang/String;

    .line 96
    const-string v0, "/mnt/sdcard/Application/SMemo/cache"

    sput-object v0, Lcom/wssnps/database/smlSmemoItem;->strokeFilePath:Ljava/lang/String;

    .line 97
    const-string v0, "/mnt/sdcard/Application/SMemo/switcher"

    sput-object v0, Lcom/wssnps/database/smlSmemoItem;->switcherFilePath:Ljava/lang/String;

    .line 99
    const-string v0, "/mnt/sdcard/Application/SMemo/cache/stroke"

    sput-object v0, Lcom/wssnps/database/smlSmemoItem;->strokeFileName:Ljava/lang/String;

    .line 100
    const-string v0, "/mnt/sdcard/Application/SMemo/cache/thumb"

    sput-object v0, Lcom/wssnps/database/smlSmemoItem;->thumbFileName:Ljava/lang/String;

    .line 101
    const-string v0, "/mnt/sdcard/Application/SMemo/switcher/prev"

    sput-object v0, Lcom/wssnps/database/smlSmemoItem;->switcherFileName:Ljava/lang/String;

    .line 875
    sput-object v1, Lcom/wssnps/database/smlSmemoItem;->thumb_byte:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x14

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Title:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Tag:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Sync:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Text:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Content:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_SwitcherImage:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_SmemoData:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_FolderStr:Ljava/lang/String;

    .line 73
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_ext_id:[I

    .line 74
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Type:[I

    .line 75
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_TextInfo:[Ljava/lang/String;

    .line 76
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Position:[Ljava/lang/String;

    .line 77
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Size:[I

    .line 78
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Data:[Ljava/lang/String;

    .line 79
    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Data_path:[[B

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_ScaleXY:[Ljava/lang/String;

    .line 81
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_MemoID:[J

    .line 82
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Sequence:[I

    .line 83
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Keynum:[I

    .line 84
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_Dummy:[Ljava/lang/String;

    .line 85
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlSmemoItem;->m_ExtraInfo:[Ljava/lang/String;

    return-void
.end method

.method public static addSmemo(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 636
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 637
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/ExtData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 638
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 639
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 642
    new-instance v0, Lcom/wssnps/database/smlSmemoItem;

    invoke-direct {v0}, Lcom/wssnps/database/smlSmemoItem;-><init>()V

    .line 644
    invoke-static {p1}, Lcom/wssnps/database/smlSmemoItem;->xml_Parser(Ljava/lang/String;)Lcom/wssnps/database/smlSmemoItem;

    move-result-object v11

    .line 647
    iget-object v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_Title:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 648
    const-string v0, "Title"

    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Title:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_2f
    iget-wide v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_ModDate:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_42

    .line 650
    const-string v0, "Date"

    iget-wide v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_ModDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 651
    :cond_42
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_Tehme:I

    if-ltz v0, :cond_51

    .line 652
    const-string v0, "Tehme"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Tehme:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    :cond_51
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_IsLock:I

    if-ltz v0, :cond_60

    .line 654
    const-string v0, "IsLock"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_IsLock:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    :cond_60
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_IsFavorite:I

    if-ltz v0, :cond_6f

    .line 656
    const-string v0, "IsFavorite"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_IsFavorite:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    :cond_6f
    iget-object v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_Drawing_byte:[B

    if-eqz v0, :cond_7a

    .line 658
    const-string v0, "Drawing"

    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Drawing_byte:[B

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 659
    :cond_7a
    iget-object v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_Tag:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 660
    const-string v0, "Tag"

    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Tag:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_85
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_HasVoice:I

    if-ltz v0, :cond_94

    .line 662
    const-string v0, "HasVoice"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_HasVoice:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    :cond_94
    iget-object v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_Sync:Ljava/lang/String;

    if-eqz v0, :cond_9f

    .line 664
    const-string v0, "Sync"

    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Sync:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_9f
    iget-object v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_Text:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 666
    const-string v0, "Text"

    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Text:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_aa
    iget-object v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_Content:Ljava/lang/String;

    if-eqz v0, :cond_b5

    .line 668
    const-string v0, "Content"

    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Content:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_b5
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_LastMode:I

    if-ltz v0, :cond_c4

    .line 670
    const-string v0, "LastMode"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_LastMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    :cond_c4
    iget-object v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_SwitcherImage:Ljava/lang/String;

    if-eqz v0, :cond_cf

    .line 672
    const-string v0, "SwitcherImage"

    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_SwitcherImage:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_cf
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_IsFolder:I

    if-ltz v0, :cond_de

    .line 674
    const-string v0, "IsFolder"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_IsFolder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    :cond_de
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_PileOrder:I

    if-ltz v0, :cond_ed

    .line 676
    const-string v0, "PileOrder"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_PileOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    :cond_ed
    const/4 v6, 0x0

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsFolder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 684
    if-eqz v2, :cond_133

    .line 686
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_133

    move v0, v6

    .line 690
    :cond_11d
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 691
    iget v4, v11, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    if-ne v3, v4, :cond_12c

    .line 693
    const/4 v0, 0x1

    .line 695
    :cond_12c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_11d

    move v6, v0

    .line 698
    :cond_133
    if-eqz v2, :cond_138

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsFolder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 702
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 703
    if-eqz v2, :cond_17d

    .line 705
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_17d

    move v0, v6

    .line 709
    :cond_167
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 710
    iget v4, v11, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    if-ne v3, v4, :cond_176

    .line 712
    const/4 v0, 0x1

    .line 714
    :cond_176
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_167

    move v6, v0

    .line 717
    :cond_17d
    if-eqz v2, :cond_182

    .line 718
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_182
    if-nez v6, :cond_238

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsFolder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 727
    if-eqz v2, :cond_1d9

    .line 729
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1d9

    move v0, v6

    .line 734
    :cond_1b3
    const-string v3, "Title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 735
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 737
    iget-object v5, v11, Lcom/wssnps/database/smlSmemoItem;->m_FolderStr:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 739
    iput v4, v11, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    .line 740
    const/4 v0, 0x1

    .line 742
    :cond_1d2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1b3

    move v6, v0

    .line 745
    :cond_1d9
    if-eqz v2, :cond_1de

    .line 746
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 748
    :cond_1de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsFolder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 750
    if-eqz v2, :cond_233

    .line 752
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_233

    move v0, v6

    .line 757
    :cond_20d
    const-string v3, "Title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 758
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 760
    iget-object v5, v11, Lcom/wssnps/database/smlSmemoItem;->m_FolderStr:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22c

    .line 762
    iput v4, v11, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    .line 763
    const/4 v0, 0x1

    .line 765
    :cond_22c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_20d

    move v6, v0

    .line 768
    :cond_233
    if-eqz v2, :cond_238

    .line 769
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_238
    if-nez v6, :cond_23d

    .line 773
    const/4 v0, 0x0

    iput v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    .line 775
    :cond_23d
    iget v0, v11, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    if-ltz v0, :cond_24c

    .line 776
    const-string v0, "ParentID"

    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    :cond_24c
    iget-wide v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_CreateDate:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_25f

    .line 779
    const-string v0, "CreateDate"

    iget-wide v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_CreateDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 781
    :cond_25f
    const-string v0, "isTemp"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 783
    invoke-virtual {p0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 784
    const/4 v0, 0x0

    .line 785
    if-eqz v2, :cond_27b

    .line 786
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 789
    :cond_27b
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Stroke_byte:[B

    if-eqz v2, :cond_29e

    .line 791
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 792
    sget-object v3, Lcom/wssnps/database/smlSmemoItem;->strokeFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    sget-object v3, Lcom/wssnps/database/smlSmemoItem;->strokeFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v11, Lcom/wssnps/database/smlSmemoItem;->m_Stroke_byte:[B

    invoke-static {v3, v2, v4}, Lcom/wssnps/database/smlSmemoItem;->fileAdd(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 797
    :cond_29e
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Thumb_byte:[B

    if-eqz v2, :cond_2dc

    .line 799
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 800
    sget-object v3, Lcom/wssnps/database/smlSmemoItem;->thumbFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    const-string v3, "Thumb"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 802
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 803
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 804
    sget-object v1, Lcom/wssnps/database/smlSmemoItem;->cacheFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Thumb_byte:[B

    invoke-static {v1, v2, v3}, Lcom/wssnps/database/smlSmemoItem;->fileAdd(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 808
    :cond_2dc
    const/4 v1, 0x0

    :goto_2dd
    iget v2, v11, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    if-ge v1, v2, :cond_395

    .line 810
    if-eqz v0, :cond_2e8

    .line 811
    const-string v2, "MemoID"

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_2e8
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Type:[I

    aget v2, v2, v1

    if-ltz v2, :cond_2fb

    .line 813
    const-string v2, "Type"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Type:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    :cond_2fb
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_TextInfo:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_30a

    .line 815
    const-string v2, "TextInfo"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_TextInfo:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_30a
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Position:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_319

    .line 817
    const-string v2, "Position"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Position:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_319
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Size:[I

    aget v2, v2, v1

    if-ltz v2, :cond_32c

    .line 819
    const-string v2, "Size"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Size:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    :cond_32c
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Data_path:[[B

    aget-object v2, v2, v1

    if-eqz v2, :cond_33b

    .line 821
    const-string v2, "Data"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Data_path:[[B

    aget-object v3, v3, v1

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 822
    :cond_33b
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_ScaleXY:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_34a

    .line 823
    const-string v2, "ScaleXY"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_ScaleXY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_34a
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Sequence:[I

    aget v2, v2, v1

    if-ltz v2, :cond_35d

    .line 825
    const-string v2, "Sequence"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Sequence:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    :cond_35d
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Keynum:[I

    aget v2, v2, v1

    if-ltz v2, :cond_370

    .line 827
    const-string v2, "Keynum"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Keynum:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    :cond_370
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_Dummy:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_37f

    .line 829
    const-string v2, "Dummy"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_Dummy:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_37f
    iget-object v2, v11, Lcom/wssnps/database/smlSmemoItem;->m_ExtraInfo:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_38e

    .line 831
    const-string v2, "ExtraInfo"

    iget-object v3, v11, Lcom/wssnps/database/smlSmemoItem;->m_ExtraInfo:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_38e
    invoke-virtual {p0, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2dd

    .line 837
    :cond_395
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v1, Lcom/wssnps/database/smlSmemoItem;->m_context:Landroid/content/Context;

    .line 838
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.q1_penmemo"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    const-string v2, "id"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 840
    sget-object v2, Lcom/wssnps/database/smlSmemoItem;->m_context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 842
    return-object v0
.end method

.method public static buildThumbnail(Landroid/content/ContentValues;Ljava/lang/String;)[B
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 879
    const/16 v0, 0x310

    const/16 v1, 0x4ba

    :try_start_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 880
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 881
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 882
    const/high16 v0, 0x4218

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 883
    const/high16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 884
    new-instance v0, Landroid/text/DynamicLayout;

    const-string v1, "H"

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 885
    const/high16 v1, 0x423c

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int v1, v0

    .line 886
    new-instance v0, Landroid/text/DynamicLayout;

    const/16 v3, 0x310

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    int-to-float v6, v1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 887
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v2, 0x1a

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 889
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 890
    const/high16 v1, 0x41d0

    const/high16 v2, 0x42c8

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 891
    invoke-virtual {v0, v9}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 892
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 894
    const/16 v0, 0xe2

    const/16 v1, 0x12a

    const/4 v2, 0x1

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 896
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 897
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 898
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sput-object v2, Lcom/wssnps/database/smlSmemoItem;->thumb_byte:[B

    .line 899
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 900
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 901
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_81} :catch_84

    .line 906
    :goto_81
    sget-object v0, Lcom/wssnps/database/smlSmemoItem;->thumb_byte:[B

    return-object v0

    .line 902
    :catch_84
    move-exception v0

    .line 903
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81
.end method

.method public static createPile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J
    .registers 13
    .parameter "cResolver"
    .parameter "title"
    .parameter "description"
    .parameter "dtmodify"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 939
    const-string v5, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 940
    .local v2, penmemo_Uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 941
    .local v4, v:Landroid/content/ContentValues;
    const-string v5, "IsFolder"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string v5, "Text"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v5, "CreateDate"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 944
    const-string v5, "Date"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 945
    const-string v5, "isTemp"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 947
    invoke-virtual {p0, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 948
    .local v3, uri:Landroid/net/Uri;
    const-wide/16 v0, -0x1

    .line 949
    .local v0, id:J
    if-eqz v3, :cond_3b

    .line 950
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 953
    :cond_3b
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_55

    .line 954
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 955
    const-string v5, "Title"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v5, "IsLock"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    invoke-virtual {p0, v3, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 960
    :cond_55
    return-wide v0
.end method

.method public static deleteSmemo(Landroid/content/ContentResolver;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 853
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3e

    .line 856
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/ExtData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x1

    .line 862
    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public static devidebyOnePage(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 910
    const/16 v8, 0x17

    .line 911
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 912
    const/high16 v0, 0x4218

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 913
    const/high16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 915
    new-instance v0, Landroid/text/DynamicLayout;

    const/16 v3, 0x2e0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x4040

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 916
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v1

    div-int/2addr v1, v8

    .line 917
    add-int/lit8 v3, v1, 0x1

    .line 918
    new-array v4, v3, [Ljava/lang/String;

    move v2, v7

    .line 923
    :goto_2b
    if-ge v2, v3, :cond_58

    .line 924
    add-int/lit8 v1, v2, 0x1

    if-ne v1, v3, :cond_4e

    .line 925
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v1

    .line 928
    :goto_3b
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 929
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 930
    add-int/lit8 v7, v2, 0x1

    move v2, v7

    move v7, v1

    .line 932
    goto :goto_2b

    .line 927
    :cond_4e
    add-int/lit8 v1, v2, 0x1

    mul-int/2addr v1, v8

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v1

    goto :goto_3b

    .line 934
    :cond_58
    return-object v4
.end method

.method public static fileAdd(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8
    .parameter "defPath"
    .parameter "filePath"
    .parameter "byteData"

    .prologue
    .line 325
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, cacheDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_e
    const/4 v2, 0x0

    .line 333
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_23

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 338
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_15
    if-eqz v2, :cond_1d

    .line 340
    :try_start_17
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 341
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_28

    .line 347
    :cond_1d
    :goto_1d
    if-eqz v2, :cond_22

    .line 349
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 354
    :cond_22
    :goto_22
    return-void

    .line 334
    :catch_23
    move-exception v1

    .line 335
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_15

    .line 342
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_28
    move-exception v1

    .line 343
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 350
    .end local v1           #e:Ljava/io/IOException;
    :catch_2d
    move-exception v1

    .line 351
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22
.end method

.method public static fileLoad(Ljava/lang/String;)[B
    .registers 6
    .parameter "filepath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    .line 310
    const/4 v0, 0x0

    .line 321
    :goto_d
    return-object v0

    .line 312
    :cond_e
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #fis:Ljava/io/FileInputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 313
    .restart local v2       #fis:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 315
    .local v0, bytedata:[B
    :cond_19
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    .line 319
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_d
.end method

.method public static getSmemoIndexArray(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .registers 10
    .parameter "cResolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 371
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v6, aListId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 373
    .local v1, penmemo_Uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 374
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 375
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 377
    .local v8, nIdIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsFolder=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 378
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 379
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 380
    if-eqz v7, :cond_53

    .line 382
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 385
    :cond_42
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_42

    .line 389
    :cond_53
    if-eqz v7, :cond_58

    .line 390
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsFolder=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 393
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 394
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 395
    if-eqz v7, :cond_9c

    .line 397
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 400
    :cond_8b
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 404
    :cond_9c
    if-eqz v7, :cond_a1

    .line 405
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsFolder=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 408
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 409
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 410
    if-eqz v7, :cond_e5

    .line 412
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 415
    :cond_d4
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_d4

    .line 419
    :cond_e5
    if-eqz v7, :cond_ea

    .line 420
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_ea
    return-object v6
.end method

.method public static getSmemoItem(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .registers 34
    .parameter "cResolver"
    .parameter "nLuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    const/16 v17, 0x0

    .line 428
    .local v17, drawing_byte:[B
    const/16 v30, 0x0

    .line 429
    .local v30, thumb_path_byte:[B
    const/16 v19, 0x0

    .line 430
    .local v19, extdata_path_byte:[B
    const/16 v23, 0x0

    .line 431
    .local v23, stroke_data_byte:[B
    const/16 v31, 0x0

    .line 432
    .local v31, title_buff:Ljava/lang/String;
    const/16 v27, 0x0

    .line 433
    .local v27, text_buff:Ljava/lang/String;
    const/16 v16, 0x0

    .line 434
    .local v16, content_buff:Ljava/lang/String;
    const/16 v25, 0x0

    .line 435
    .local v25, switchimage_buff:Ljava/lang/String;
    const/16 v26, 0x0

    .line 436
    .local v26, tag_buff:Ljava/lang/String;
    const/16 v21, 0x0

    .line 437
    .local v21, pm_cursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 438
    .local v18, ed_cursor:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 440
    .local v22, pm_cursor1:Landroid/database/Cursor;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v24, stroke_filepath:Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 443
    .local v13, FolderId:I
    const/4 v14, 0x0

    .line 445
    .local v14, FolderStr:Ljava/lang/String;
    new-instance v15, Lcom/wssnps/database/smlSmemoItem;

    invoke-direct {v15}, Lcom/wssnps/database/smlSmemoItem;-><init>()V

    .line 446
    .local v15, SmemoItem:Lcom/wssnps/database/smlSmemoItem;
    const/4 v1, 0x0

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    .line 448
    const-string v1, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 449
    .local v2, penmemo_Uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 452
    if-eqz v21, :cond_24b

    .line 454
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_24b

    .line 458
    :cond_3f
    const-string v1, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v0, p1

    if-ne v1, v0, :cond_245

    .line 460
    const-string v1, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_id:I

    .line 462
    const-string v1, "Title"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8e

    .line 464
    const-string v1, "Title"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 465
    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Title:Ljava/lang/String;

    .line 468
    :cond_8e
    const-string v1, "Date"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v15, Lcom/wssnps/database/smlSmemoItem;->m_ModDate:J

    .line 469
    const-string v1, "Tehme"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Tehme:I

    .line 470
    const-string v1, "IsLock"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_IsLock:I

    .line 471
    const-string v1, "IsFavorite"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_IsFavorite:I

    .line 473
    const-string v1, "Drawing"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 474
    if-eqz v17, :cond_e9

    .line 475
    new-instance v1, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Drawing:Ljava/lang/String;

    .line 477
    :cond_e9
    const-string v1, "Thumb"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 478
    if-eqz v30, :cond_111

    .line 480
    const/16 v28, 0x0

    .line 481
    .local v28, thumb_data_byte:[B
    new-instance v29, Ljava/lang/String;

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    .line 482
    .local v29, thumb_data_str:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/wssnps/database/smlSmemoItem;->fileLoad(Ljava/lang/String;)[B

    move-result-object v28

    .line 483
    if-eqz v28, :cond_111

    .line 484
    new-instance v1, Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Thumb_Data:Ljava/lang/String;

    .line 487
    .end local v28           #thumb_data_byte:[B
    .end local v29           #thumb_data_str:Ljava/lang/String;
    :cond_111
    const-string v1, "Tag"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13e

    .line 489
    const-string v1, "Tag"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 490
    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Tag:Ljava/lang/String;

    .line 493
    :cond_13e
    const-string v1, "HasVoice"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_HasVoice:I

    .line 495
    const-string v1, "Sync"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16e

    .line 496
    const-string v1, "Sync"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Sync:Ljava/lang/String;

    .line 498
    :cond_16e
    const-string v1, "Text"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19b

    .line 500
    const-string v1, "Text"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 501
    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Text:Ljava/lang/String;

    .line 504
    :cond_19b
    const-string v1, "Content"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c8

    .line 506
    const-string v1, "Content"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 507
    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Content:Ljava/lang/String;

    .line 510
    :cond_1c8
    const-string v1, "LastMode"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_LastMode:I

    .line 512
    const-string v1, "SwitcherImage"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_205

    .line 514
    const-string v1, "SwitcherImage"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 515
    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_SwitcherImage:Ljava/lang/String;

    .line 518
    :cond_205
    const-string v1, "IsFolder"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_IsFolder:I

    .line 519
    const-string v1, "ParentID"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    .line 520
    const-string v1, "CreateDate"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v15, Lcom/wssnps/database/smlSmemoItem;->m_CreateDate:J

    .line 521
    const-string v1, "PileOrder"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_PileOrder:I

    .line 523
    :cond_245
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 526
    :cond_24b
    if-eqz v21, :cond_250

    .line 527
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_250
    sget-object v1, Lcom/wssnps/database/smlSmemoItem;->strokeFileName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssnps/database/smlSmemoItem;->fileLoad(Ljava/lang/String;)[B

    move-result-object v23

    .line 532
    if-eqz v23, :cond_278

    .line 533
    new-instance v1, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Stroke_Data:Ljava/lang/String;

    .line 536
    :cond_278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemoID=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->m_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, selection:Ljava/lang/String;
    const-string v1, "content://com.sec.android.widgetapp.q1_penmemo/ExtData"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 538
    .local v4, extdata_Uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 539
    if-eqz v18, :cond_404

    .line 541
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_404

    .line 545
    :cond_2ae
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_ext_id:[I

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v1, v3

    .line 546
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Type:[I

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "Type"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v1, v3

    .line 548
    const-string v1, "TextInfo"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2fa

    .line 549
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_TextInfo:[Ljava/lang/String;

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "TextInfo"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 551
    :cond_2fa
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Position:[Ljava/lang/String;

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "Position"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 552
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Size:[I

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "Size"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v1, v3

    .line 554
    const-string v1, "Data"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 555
    if-eqz v19, :cond_341

    .line 556
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Data:[Ljava/lang/String;

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    new-instance v5, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    aput-object v5, v1, v3

    .line 558
    :cond_341
    const-string v1, "ScaleXY"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_365

    .line 559
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_ScaleXY:[Ljava/lang/String;

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "ScaleXY"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 561
    :cond_365
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_MemoID:[J

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "MemoID"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v1, v3

    .line 562
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Sequence:[I

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "Sequence"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v1, v3

    .line 563
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Keynum:[I

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "Keynum"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v1, v3

    .line 565
    const-string v1, "Dummy"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c5

    .line 566
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_Dummy:[Ljava/lang/String;

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    const-string v5, "Dummy"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 568
    :cond_3c5
    const-string v1, "ExtraInfo"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f8

    .line 570
    const/16 v20, 0x0

    .line 571
    .local v20, extrainfo_buff:Ljava/lang/String;
    const-string v1, "ExtraInfo"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 572
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_ExtraInfo:[Ljava/lang/String;

    iget v3, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    aput-object v5, v1, v3

    .line 575
    .end local v20           #extrainfo_buff:Ljava/lang/String;
    :cond_3f8
    iget v1, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    .line 576
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2ae

    .line 579
    :cond_404
    if-eqz v18, :cond_409

    .line 580
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_409
    iget v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    if-lez v1, :cond_4e1

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsFolder=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, where:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 587
    if-eqz v22, :cond_472

    .line 589
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_472

    .line 593
    :cond_43d
    const-string v1, "Title"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 594
    const-string v1, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 595
    iget v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    if-ne v1, v13, :cond_46c

    .line 597
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_FolderStr:Ljava/lang/String;

    .line 599
    :cond_46c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_43d

    .line 603
    :cond_472
    if-eqz v22, :cond_477

    .line 604
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsFolder=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 607
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 608
    if-eqz v22, :cond_4dc

    .line 610
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4dc

    .line 614
    :cond_4a7
    const-string v1, "Title"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 615
    const-string v1, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 616
    iget v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    if-ne v1, v13, :cond_4d6

    .line 618
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_FolderStr:Ljava/lang/String;

    .line 620
    :cond_4d6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4a7

    .line 623
    :cond_4dc
    if-eqz v22, :cond_4e1

    .line 624
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 627
    .end local v10           #where:Ljava/lang/String;
    :cond_4e1
    if-eqz v15, :cond_4e9

    .line 628
    invoke-static {v15}, Lcom/wssnps/database/smlSmemoItem;->xml_make(Lcom/wssnps/database/smlSmemoItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_SmemoData:Ljava/lang/String;

    .line 630
    :cond_4e9
    iget-object v1, v15, Lcom/wssnps/database/smlSmemoItem;->m_SmemoData:Ljava/lang/String;

    return-object v1
.end method

.method public static getSmemoSize(Landroid/content/ContentResolver;)I
    .registers 9
    .parameter "cResolver"

    .prologue
    const/4 v2, 0x0

    .line 359
    const/4 v7, 0x0

    .line 360
    .local v7, nCount:I
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, penmemo_Uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 362
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 366
    return v7
.end method

.method public static replaceSmemo(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "cResolver"
    .parameter "smemo"
    .parameter "luid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xml_Parser(Ljava/lang/String;)Lcom/wssnps/database/smlSmemoItem;
    .registers 15
    .parameter "smemo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v7, 0x0

    .line 180
    .local v7, input:Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_c} :catch_36

    .end local v7           #input:Ljava/io/InputStream;
    .local v8, input:Ljava/io/InputStream;
    move-object v7, v8

    .line 185
    .end local v8           #input:Ljava/io/InputStream;
    .restart local v7       #input:Ljava/io/InputStream;
    :goto_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 186
    .local v10, parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 187
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v9, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 189
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 190
    .local v5, eventType:I
    const/4 v3, 0x0

    .line 191
    .local v3, eventTag:Ljava/lang/String;
    const-string v4, ""

    .line 192
    .local v4, eventTxt:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 193
    .local v6, inTitle:Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 195
    .local v1, count:I
    new-instance v0, Lcom/wssnps/database/smlSmemoItem;

    invoke-direct {v0}, Lcom/wssnps/database/smlSmemoItem;-><init>()V

    .line 197
    .local v0, SmemoItem:Lcom/wssnps/database/smlSmemoItem;
    :goto_2b
    const/4 v11, 0x1

    if-eq v5, v11, :cond_2e3

    .line 199
    packed-switch v5, :pswitch_data_2e4

    .line 297
    :cond_31
    :goto_31
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_2b

    .line 181
    .end local v0           #SmemoItem:Lcom/wssnps/database/smlSmemoItem;
    .end local v1           #count:I
    .end local v3           #eventTag:Ljava/lang/String;
    .end local v4           #eventTxt:Ljava/lang/String;
    .end local v5           #eventType:I
    .end local v6           #inTitle:Ljava/lang/Boolean;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_36
    move-exception v2

    .line 182
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    const/4 v11, 0x3

    const-string v12, "Unexpected xml_Parser."

    invoke-static {v11, v12, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 201
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #SmemoItem:Lcom/wssnps/database/smlSmemoItem;
    .restart local v1       #count:I
    .restart local v3       #eventTag:Ljava/lang/String;
    .restart local v4       #eventTxt:Ljava/lang/String;
    .restart local v5       #eventType:I
    .restart local v6       #inTitle:Ljava/lang/Boolean;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    :pswitch_3e
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 203
    const-string v11, "Id"

    invoke-virtual {v3, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_31

    .line 204
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_31

    .line 209
    :pswitch_50
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_31

    .line 210
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 212
    const-string v11, "Id"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 213
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_id:I

    goto :goto_31

    .line 214
    :cond_69
    const-string v11, "Title"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 215
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Title:Ljava/lang/String;

    goto :goto_31

    .line 216
    :cond_81
    const-string v11, "Date"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_90

    .line 217
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_ModDate:J

    goto :goto_31

    .line 218
    :cond_90
    const-string v11, "Tehme"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9f

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Tehme:I

    goto :goto_31

    .line 220
    :cond_9f
    const-string v11, "IsLock"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_IsLock:I

    goto :goto_31

    .line 222
    :cond_ae
    const-string v11, "IsFavorite"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_be

    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_IsFavorite:I

    goto/16 :goto_31

    .line 224
    :cond_be
    const-string v11, "Drawing"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d2

    .line 225
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v11

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Drawing_byte:[B

    goto/16 :goto_31

    .line 226
    :cond_d2
    const-string v11, "StrokeData"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e6

    .line 227
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v11

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Stroke_byte:[B

    goto/16 :goto_31

    .line 228
    :cond_e6
    const-string v11, "ThumbData"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fa

    .line 229
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v11

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Thumb_byte:[B

    goto/16 :goto_31

    .line 230
    :cond_fa
    const-string v11, "Tag"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_113

    .line 231
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Tag:Ljava/lang/String;

    goto/16 :goto_31

    .line 232
    :cond_113
    const-string v11, "HasVoice"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_123

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_HasVoice:I

    goto/16 :goto_31

    .line 234
    :cond_123
    const-string v11, "Sync"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12f

    .line 235
    iput-object v4, v0, Lcom/wssnps/database/smlSmemoItem;->m_Sync:Ljava/lang/String;

    goto/16 :goto_31

    .line 236
    :cond_12f
    const-string v11, "Text"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_148

    .line 237
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Text:Ljava/lang/String;

    goto/16 :goto_31

    .line 238
    :cond_148
    const-string v11, "Content"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_161

    .line 239
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Content:Ljava/lang/String;

    goto/16 :goto_31

    .line 240
    :cond_161
    const-string v11, "LastMode"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_171

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_LastMode:I

    goto/16 :goto_31

    .line 242
    :cond_171
    const-string v11, "SwitcherImage"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18a

    .line 243
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_SwitcherImage:Ljava/lang/String;

    goto/16 :goto_31

    .line 244
    :cond_18a
    const-string v11, "IsFolder"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19a

    .line 245
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_IsFolder:I

    goto/16 :goto_31

    .line 246
    :cond_19a
    const-string v11, "ParentID"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1aa

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    goto/16 :goto_31

    .line 248
    :cond_1aa
    const-string v11, "CreateDate"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ba

    .line 249
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_CreateDate:J

    goto/16 :goto_31

    .line 250
    :cond_1ba
    const-string v11, "Ext_Count"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ca

    .line 251
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    goto/16 :goto_31

    .line 252
    :cond_1ca
    const-string v11, "FolderStr"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e3

    .line 253
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_FolderStr:Ljava/lang/String;

    goto/16 :goto_31

    .line 254
    :cond_1e3
    const-string v11, "PileOrder"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f3

    .line 255
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_PileOrder:I

    goto/16 :goto_31

    .line 258
    :cond_1f3
    const-string v11, "Ext_Id"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_205

    .line 259
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_ext_id:[I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v1

    goto/16 :goto_31

    .line 260
    :cond_205
    const-string v11, "Type"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_217

    .line 261
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Type:[I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v1

    goto/16 :goto_31

    .line 262
    :cond_217
    const-string v11, "TextInfo"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_225

    .line 263
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_TextInfo:[Ljava/lang/String;

    aput-object v4, v11, v1

    goto/16 :goto_31

    .line 264
    :cond_225
    const-string v11, "Position"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_233

    .line 265
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Position:[Ljava/lang/String;

    aput-object v4, v11, v1

    goto/16 :goto_31

    .line 266
    :cond_233
    const-string v11, "Size"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_245

    .line 267
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Size:[I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v1

    goto/16 :goto_31

    .line 268
    :cond_245
    const-string v11, "Data"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25b

    .line 269
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Data_path:[[B

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v12

    aput-object v12, v11, v1

    goto/16 :goto_31

    .line 270
    :cond_25b
    const-string v11, "ScaleXY"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_269

    .line 271
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_ScaleXY:[Ljava/lang/String;

    aput-object v4, v11, v1

    goto/16 :goto_31

    .line 272
    :cond_269
    const-string v11, "MemoID"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27b

    .line 273
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_MemoID:[J

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v1

    goto/16 :goto_31

    .line 274
    :cond_27b
    const-string v11, "Sequence"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28d

    .line 275
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Sequence:[I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v1

    goto/16 :goto_31

    .line 276
    :cond_28d
    const-string v11, "Keynum"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29f

    .line 277
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Keynum:[I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v1

    goto/16 :goto_31

    .line 278
    :cond_29f
    const-string v11, "Dummy"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2ad

    .line 279
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_Dummy:[Ljava/lang/String;

    aput-object v4, v11, v1

    goto/16 :goto_31

    .line 280
    :cond_2ad
    const-string v11, "ExtraInfo"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 282
    iget-object v11, v0, Lcom/wssnps/database/smlSmemoItem;->m_ExtraInfo:[Ljava/lang/String;

    new-instance v12, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    aput-object v12, v11, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_31

    .line 289
    :pswitch_2ca
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 291
    const-string v11, "SMEMO"

    invoke-virtual {v3, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2dd

    .line 292
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_31

    .line 294
    :cond_2dd
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_31

    .line 300
    :cond_2e3
    return-object v0

    .line 199
    :pswitch_data_2e4
    .packed-switch 0x2
        :pswitch_3e
        :pswitch_2ca
        :pswitch_50
    .end packed-switch
.end method

.method public static xml_make(Lcom/wssnps/database/smlSmemoItem;)Ljava/lang/String;
    .registers 13
    .parameter "memoItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 105
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v7, tagbuff:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 107
    .local v0, count:I
    const-string v4, "0000000000"

    .line 108
    .local v4, str_id:Ljava/lang/String;
    const/4 v3, 0x0

    .line 109
    .local v3, penmemo_id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 110
    .local v2, parent_id:Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, str_temp1:Ljava/lang/String;
    const/4 v6, 0x0

    .line 113
    .local v6, str_temp2:Ljava/lang/String;
    iget v8, p0, Lcom/wssnps/database/smlSmemoItem;->m_id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 116
    iget v8, p0, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 119
    const-string v8, "<SMEMO>\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Id>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Id>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Title>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Title>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Date>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_ModDate:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Date>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Tehme>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Tehme:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Tehme>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<IsLock>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_IsLock:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</IsLock>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<IsFavorite>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_IsFavorite:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</IsFavorite>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Drawing>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Drawing:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Drawing>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<StrokeData>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Stroke_Data:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</StrokeData>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<ThumbData>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Thumb_Data:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</ThumbData>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Tag>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Tag>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<HasVoice>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_HasVoice:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</HasVoice>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Sync>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Sync:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Sync>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Text>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Text>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Content>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Content>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<LastMode>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_LastMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</LastMode>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<SwitcherImage>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_SwitcherImage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</SwitcherImage>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<IsFolder>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_IsFolder:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</IsFolder>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<ParentID>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_ParentID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</ParentID>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<CreateDate>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_CreateDate:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</CreateDate>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Ext_Count>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Ext_Count>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<FolderStr>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_FolderStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</FolderStr>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<PileOrder>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_PileOrder:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</PileOrder>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const/4 v0, 0x0

    :goto_2e1
    iget v8, p0, Lcom/wssnps/database/smlSmemoItem;->ext_data_count:I

    if-ge v0, v8, :cond_494

    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, ext_id:Ljava/lang/String;
    iget-object v8, p0, Lcom/wssnps/database/smlSmemoItem;->m_ext_id:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Ext_Id>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_ext_id:[I

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Ext_Id>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Type>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Type:[I

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Type>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<TextInfo>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_TextInfo:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</TextInfo>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Position>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Position:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Position>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Size>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Size:[I

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Size>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Data>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Data:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Data>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<ScaleXY>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_ScaleXY:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</ScaleXY>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<MemoID>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_MemoID:[J

    aget-wide v9, v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</MemoID>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Sequence>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Sequence:[I

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Sequence>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Keynum>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Keynum:[I

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Keynum>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<Dummy>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_Dummy:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</Dummy>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t<ExtraInfo>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssnps/database/smlSmemoItem;->m_ExtraInfo:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</ExtraInfo>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e1

    .line 166
    .end local v1           #ext_id:Ljava/lang/String;
    :cond_494
    const-string v8, "</SMEMO>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/wssnps/database/smlSmemoItem;->m_SmemoData:Ljava/lang/String;

    .line 170
    iget-object v8, p0, Lcom/wssnps/database/smlSmemoItem;->m_SmemoData:Ljava/lang/String;

    if-eqz v8, :cond_4a6

    .line 171
    iget-object v8, p0, Lcom/wssnps/database/smlSmemoItem;->m_SmemoData:Ljava/lang/String;

    .line 173
    :goto_4a5
    return-object v8

    :cond_4a6
    const/4 v8, 0x0

    goto :goto_4a5
.end method
