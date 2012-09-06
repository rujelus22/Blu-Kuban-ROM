.class public Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "NetworkTransactionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter$NetworkTransactionsQuery;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 61
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 69
    const v11, 0x7f090162

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 70
    .local v8, timeView:Landroid/widget/TextView;
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 71
    .local v9, timestamp:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MM-dd hh:mm:ss"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    rem-long v12, v9, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v11, 0x7f090163

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 76
    .local v6, nameView:Landroid/widget/TextView;
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v11, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 79
    .local v5, icon:Landroid/widget/ImageView;
    const v11, 0x7f090164

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, bytesView:Landroid/widget/TextView;
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_112

    .line 81
    const v11, 0x7f0201b3

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    const/4 v11, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 85
    .local v7, requestCount:I
    const/4 v11, 0x1

    if-gt v7, v11, :cond_e0

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0803c7

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, bytesText:Ljava/lang/String;
    :goto_aa
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .end local v1           #bytesText:Ljava/lang/String;
    .end local v7           #requestCount:I
    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0803c9

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, durationText:Ljava/lang/String;
    const v11, 0x7f090165

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 108
    .local v4, durationView:Landroid/widget/TextView;
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 90
    .end local v3           #durationText:Ljava/lang/String;
    .end local v4           #durationView:Landroid/widget/TextView;
    .restart local v7       #requestCount:I
    :cond_e0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0803c8

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #bytesText:Ljava/lang/String;
    goto :goto_aa

    .line 97
    .end local v1           #bytesText:Ljava/lang/String;
    .end local v7           #requestCount:I
    :cond_112
    const v11, 0x7f0201b4

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 116
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 118
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
