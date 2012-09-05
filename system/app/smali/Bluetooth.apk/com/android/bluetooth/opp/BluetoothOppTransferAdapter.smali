.class public Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BluetoothOppTransferAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 29
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 70
    .local v11, r:Landroid/content/res/Resources;
    const v21, 0x7f060002

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 71
    .local v10, iv:Landroid/widget/ImageView;
    const-string v21, "status"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 72
    .local v13, status:I
    const-string v21, "direction"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 73
    .local v9, dir:I
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v21

    if-eqz v21, :cond_131

    .line 74
    const v21, 0x1080078

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_43
    const v21, 0x7f060003

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 87
    .local v20, tv:Landroid/widget/TextView;
    const-string v21, "hint"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, title:Ljava/lang/String;
    if-nez v17, :cond_71

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f04003c

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 92
    :cond_71
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v21, 0x7f060004

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #tv:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 96
    .restart local v20       #tv:Landroid/widget/TextView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 97
    .local v3, adapter:Landroid/bluetooth/BluetoothAdapter;
    const-string v21, "destination"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 98
    .local v7, destinationColumnId:I
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    .line 100
    .local v12, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, deviceName:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string v21, "total_bytes"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 105
    .local v18, totalBytes:J
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v21

    if-eqz v21, :cond_130

    .line 106
    const v21, 0x7f060006

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #tv:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 107
    .restart local v20       #tv:Landroid/widget/TextView;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v21

    if-eqz v21, :cond_147

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13, v8}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_ed
    const-string v21, "timestamp"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 123
    .local v6, dateColumnId:I
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 124
    .local v15, time:J
    new-instance v5, Ljava/util/Date;

    move-wide v0, v15

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 125
    .local v5, d:Ljava/util/Date;
    invoke-static/range {v15 .. v16}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v21

    if-eqz v21, :cond_19f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, str:Ljava/lang/CharSequence;
    :goto_119
    const v21, 0x7f060005

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #tv:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 128
    .restart local v20       #tv:Landroid/widget/TextView;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .end local v5           #d:Ljava/util/Date;
    .end local v6           #dateColumnId:I
    .end local v14           #str:Ljava/lang/CharSequence;
    .end local v15           #time:J
    :cond_130
    return-void

    .line 76
    .end local v3           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v7           #destinationColumnId:I
    .end local v8           #deviceName:Ljava/lang/String;
    .end local v12           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v17           #title:Ljava/lang/String;
    .end local v18           #totalBytes:J
    .end local v20           #tv:Landroid/widget/TextView;
    :cond_131
    if-nez v9, :cond_13d

    .line 78
    const v21, 0x7f02000b

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_43

    .line 81
    :cond_13d
    const v21, 0x7f020004

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_43

    .line 112
    .restart local v3       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v7       #destinationColumnId:I
    .restart local v8       #deviceName:Ljava/lang/String;
    .restart local v12       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v17       #title:Ljava/lang/String;
    .restart local v18       #totalBytes:J
    .restart local v20       #tv:Landroid/widget/TextView;
    :cond_147
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_179

    .line 113
    const v21, 0x7f04005b

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, completeText:Ljava/lang/String;
    :goto_172
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ed

    .line 116
    .end local v4           #completeText:Ljava/lang/String;
    :cond_179
    const v21, 0x7f04005c

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #completeText:Ljava/lang/String;
    goto :goto_172

    .line 125
    .end local v4           #completeText:Ljava/lang/String;
    .restart local v5       #d:Ljava/util/Date;
    .restart local v6       #dateColumnId:I
    .restart local v15       #time:J
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_119
.end method
