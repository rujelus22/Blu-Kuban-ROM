.class public Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayListCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "columnNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v6, 0x0

    .line 1031
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 1032
    array-length v0, p1

    .line 1033
    .local v0, colCount:I
    const/4 v1, 0x0

    .line 1035
    .local v1, foundID:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 1036
    aget-object v4, p1, v2

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4f

    .line 1037
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 1038
    const/4 v1, 0x1

    .line 1044
    :cond_16
    if-nez v1, :cond_2a

    .line 1045
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 1046
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v5, p1

    invoke-static {p1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v0

    .line 1050
    :cond_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1051
    .local v3, rowCount:I
    new-array v4, v3, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 1052
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v3, :cond_52

    .line 1053
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v5, v2

    .line 1054
    if-nez v1, :cond_4c

    .line 1055
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1035
    .end local v3           #rowCount:I
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1058
    .restart local v3       #rowCount:I
    :cond_52
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 11
    .parameter "position"
    .parameter "window"

    .prologue
    .line 1062
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->getCount()I

    move-result v6

    if-le p1, v6, :cond_9

    .line 1105
    :cond_8
    :goto_8
    return-void

    .line 1066
    :cond_9
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1068
    :try_start_c
    iget v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    .line 1069
    .local v5, oldpos:I
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    .line 1070
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 1071
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->getColumnCount()I

    move-result v1

    .line 1073
    .local v1, columnNum:I
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 1074
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1075
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2c
    if-ge v4, v1, :cond_1f

    .line 1076
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1077
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_6a

    .line 1078
    instance-of v6, v2, [B

    if-eqz v6, :cond_55

    .line 1079
    check-cast v2, [B

    .end local v2           #data:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 1080
    .local v3, field:[B
    iget v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v6

    if-nez v6, :cond_76

    .line 1081
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_65
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_4f} :catch_50

    goto :goto_1f

    .line 1100
    .end local v1           #columnNum:I
    .end local v3           #field:[B
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catch_50
    move-exception v6

    .line 1103
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8

    .line 1085
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_55
    :try_start_55
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, field:Ljava/lang/String;
    iget v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_76

    .line 1087
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_65
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_64} :catch_50

    goto :goto_1f

    .line 1103
    .end local v1           #columnNum:I
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catchall_65
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .line 1092
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_6a
    :try_start_6a
    iget v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_76

    .line 1093
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_1f

    .line 1075
    .end local v2           #data:Ljava/lang/Object;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1099
    .end local v4           #i:I
    :cond_79
    iput v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_65
    .catch Ljava/lang/IllegalStateException; {:try_start_6a .. :try_end_7b} :catch_50

    .line 1103
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8
.end method

.method public getBlob(I)[B
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1155
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1149
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1137
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1143
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(I)S
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1131
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1125
    .local v0, cell:Ljava/lang/Object;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public isNull(I)Z
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
