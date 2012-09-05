.class public Lcom/android/calendar/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AlertAdapter$AlertItem;
    }
.end annotation


# instance fields
.field public alertActivity:Lcom/android/calendar/AlertActivity;

.field public itemId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/AlertAdapter$AlertItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/calendar/AlertActivity;)V
    .registers 5
    .parameter "context"
    .parameter "resource"
    .parameter "activityRef"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 43
    iput-object p3, p0, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;JJZJ)V
    .registers 26
    .parameter "context"
    .parameter "view"
    .parameter "eventName"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "allDay"
    .parameter "ID"

    .prologue
    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 111
    .local v13, res:Landroid/content/res/Resources;
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    .line 112
    :cond_c
    const v2, 0x7f0a0025

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 114
    :cond_13
    const v2, 0x7f0f0013

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 115
    .local v14, textView:Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    if-eqz p8, :cond_76

    .line 121
    const/16 v12, 0x2012

    .line 126
    .local v12, flags:I
    :goto_27
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 127
    or-int/lit16 v12, v12, 0x80

    .line 134
    :cond_2f
    const v2, 0x7f0f0099

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #textView:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 135
    .restart local v14       #textView:Landroid/widget/TextView;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p8

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v2, 0x7f0f001b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 139
    .local v10, box:Landroid/widget/CheckBox;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 140
    new-instance v2, Lcom/android/calendar/AlertAdapter$1;

    move-wide/from16 v0, p9

    invoke-direct {v2, p0, v0, v1}, Lcom/android/calendar/AlertAdapter$1;-><init>(Lcom/android/calendar/AlertAdapter;J)V

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AlertAdapter$AlertItem;

    iget-boolean v11, v2, Lcom/android/calendar/AlertAdapter$AlertItem;->checked:Z

    .line 154
    .local v11, flag:Z
    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    return-void

    .line 124
    .end local v10           #box:Landroid/widget/CheckBox;
    .end local v11           #flag:Z
    .end local v12           #flags:I
    :cond_76
    const/16 v12, 0x11

    .restart local v12       #flags:I
    goto :goto_27
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 52
    const v1, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 53
    .local v16, stripe:Landroid/view/View;
    const/4 v1, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 54
    .local v12, color:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    const v1, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 59
    .local v17, textView:Landroid/widget/TextView;
    const v1, 0x7f0f0093

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 60
    .local v14, repeatContainer:Landroid/view/View;
    const/16 v1, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 71
    .local v15, rrule:Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    if-eqz v15, :cond_89

    .line 73
    const v1, 0x7f0f009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const v1, 0x7f0f007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 75
    .local v13, reminder:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v1, 0x7f020026

    invoke-virtual {v13, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    .end local v13           #reminder:Landroid/view/View;
    :goto_58
    const/4 v1, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    .line 91
    .local v10, ID:J
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, eventName:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 94
    .local v5, startMillis:J
    const/4 v1, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 95
    .local v7, endMillis:J
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_98

    const/4 v9, 0x1

    .local v9, allDay:Z
    :goto_7f
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 99
    invoke-direct/range {v1 .. v11}, Lcom/android/calendar/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;JJZJ)V

    .line 101
    return-void

    .line 78
    .end local v4           #eventName:Ljava/lang/String;
    .end local v5           #startMillis:J
    .end local v7           #endMillis:J
    .end local v9           #allDay:Z
    .end local v10           #ID:J
    :cond_89
    const v1, 0x7f0f009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_58

    .line 95
    .restart local v4       #eventName:Ljava/lang/String;
    .restart local v5       #startMillis:J
    .restart local v7       #endMillis:J
    .restart local v10       #ID:J
    :cond_98
    const/4 v9, 0x0

    goto :goto_7f
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 168
    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    if-nez v2, :cond_a

    .line 179
    :cond_9
    :goto_9
    return-void

    .line 170
    :cond_a
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v2, v3, :cond_40

    .line 172
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 173
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 174
    .local v0, eventId:J
    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 175
    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-direct {v4, p0}, Lcom/android/calendar/AlertAdapter$AlertItem;-><init>(Lcom/android/calendar/AlertAdapter;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 178
    .end local v0           #eventId:J
    :cond_40
    iget-object v2, p0, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v2}, Lcom/android/calendar/AlertActivity;->updateAllCheckState()V

    goto :goto_9
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    .line 184
    iget-object v0, p0, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    iget-object v0, v0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 185
    return-void
.end method
