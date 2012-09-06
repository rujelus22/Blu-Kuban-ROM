.class public Lcom/android/calendar/event/EventViewUtils;
.super Ljava/lang/Object;
.source "EventViewUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 9
    .parameter "context"
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 138
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    .line 157
    :goto_b
    return-void

    .line 145
    :cond_c
    const/4 v4, 0x0

    invoke-static {p0, p3, v4}, Lcom/android/calendar/event/EventViewUtils;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, label:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 147
    .local v3, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v3, :cond_32

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p3, v4, :cond_2f

    .line 149
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 147
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 155
    :cond_32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b
.end method

.method public static addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z
    .registers 20
    .parameter "activity"
    .parameter "view"
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "newReminder"
    .parameter "maxReminders"
    .parameter "onItemSelected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            "I",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p4, minuteValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, minuteLabels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, methodValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p7, methodLabels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, p9

    if-lt v7, v0, :cond_a

    .line 231
    const/4 v7, 0x0

    .line 276
    :goto_9
    return v7

    .line 234
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 235
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f100078

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 236
    .local v3, parent:Landroid/widget/LinearLayout;
    const v7, 0x7f040020

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 238
    .local v4, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    const v7, 0x7f100084

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 242
    .local v5, reminderRemoveButton:Landroid/widget/ImageButton;
    invoke-virtual {v5, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v7, 0x7f100082

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 249
    .local v6, spinner:Landroid/widget/Spinner;
    invoke-static {p0, v6, p5}, Lcom/android/calendar/event/EventViewUtils;->setReminderSpinnerLabels(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    .line 251
    invoke-virtual/range {p8 .. p8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v7

    invoke-static {p4, v7}, Lcom/android/calendar/event/EventViewUtils;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v1

    .line 252
    .local v1, index:I
    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 254
    if-eqz p10, :cond_55

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 256
    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 263
    :cond_55
    const v7, 0x7f100083

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #spinner:Landroid/widget/Spinner;
    check-cast v6, Landroid/widget/Spinner;

    .line 264
    .restart local v6       #spinner:Landroid/widget/Spinner;
    move-object/from16 v0, p7

    invoke-static {p0, v6, v0}, Lcom/android/calendar/event/EventViewUtils;->setReminderSpinnerLabels(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    .line 266
    invoke-virtual/range {p8 .. p8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v7

    invoke-static {p6, v7}, Lcom/android/calendar/event/EventViewUtils;->findMethodInReminderList(Ljava/util/ArrayList;I)I

    move-result v1

    .line 267
    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 269
    if-eqz p10, :cond_7c

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 271
    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    :cond_7c
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v7, 0x1

    goto :goto_9
.end method

.method public static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "minutes"
    .parameter "abbrev"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 49
    .local v2, resources:Landroid/content/res/Resources;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_24

    .line 50
    move v3, p1

    .line 51
    .local v3, value:I
    if-eqz p2, :cond_21

    .line 52
    const v1, 0x7f0d0001

    .line 64
    .local v1, resId:I
    :goto_e
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 54
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_21
    const/high16 v1, 0x7f0d

    .restart local v1       #resId:I
    goto :goto_e

    .line 56
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_24
    rem-int/lit16 v4, p1, 0x5a0

    if-eqz v4, :cond_2e

    .line 57
    div-int/lit8 v3, p1, 0x3c

    .line 58
    .restart local v3       #value:I
    const v1, 0x7f0d0002

    .restart local v1       #resId:I
    goto :goto_e

    .line 60
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_2e
    div-int/lit16 v3, p1, 0x5a0

    .line 61
    .restart local v3       #value:I
    const v1, 0x7f0d0003

    .restart local v1       #resId:I
    goto :goto_e
.end method

.method public static findMethodInReminderList(Ljava/util/ArrayList;I)I
    .registers 4
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 102
    const/4 v0, 0x0

    .line 104
    :cond_c
    return v0
.end method

.method public static findMinutesInReminderList(Ljava/util/ArrayList;I)I
    .registers 6
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 77
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 79
    const-string v1, "EventViewUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find minutes ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    .line 82
    .end local v0           #index:I
    :cond_2a
    return v0
.end method

.method public static reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter "allowedMethods"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, allowedStrings:[Ljava/lang/String;
    array-length v6, v0

    new-array v1, v6, [I

    .line 173
    .local v1, allowedValues:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    array-length v6, v1

    if-ge v2, v6, :cond_46

    .line 175
    :try_start_d
    aget-object v6, v0, v2

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v2
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_17} :catch_1a

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 176
    :catch_1a
    move-exception v4

    .line 177
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "EventViewUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad allowed-strings list: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    :cond_45
    return-void

    .line 184
    :cond_46
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_4c
    if-ltz v2, :cond_45

    .line 185
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 188
    .local v5, val:I
    array-length v6, v1

    add-int/lit8 v3, v6, -0x1

    .local v3, j:I
    :goto_5b
    if-ltz v3, :cond_61

    .line 189
    aget v6, v1, v3

    if-ne v5, v6, :cond_6c

    .line 193
    :cond_61
    if-gez v3, :cond_69

    .line 194
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    :cond_69
    add-int/lit8 v2, v2, -0x1

    goto :goto_4c

    .line 188
    :cond_6c
    add-int/lit8 v3, v3, -0x1

    goto :goto_5b
.end method

.method public static reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, reminderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p1, reminderMinuteValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, reminderMethodValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 119
    .local v2, len:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v7, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_a
    if-ge v0, v2, :cond_4a

    .line 121
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 122
    .local v1, layout:Landroid/widget/LinearLayout;
    const v8, 0x7f100082

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 123
    .local v5, minuteSpinner:Landroid/widget/Spinner;
    const v8, 0x7f100083

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 124
    .local v4, methodSpinner:Landroid/widget/Spinner;
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 125
    .local v6, minutes:I
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 126
    .local v3, method:I
    invoke-static {v6, v3}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 128
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v3           #method:I
    .end local v4           #methodSpinner:Landroid/widget/Spinner;
    .end local v5           #minuteSpinner:Landroid/widget/Spinner;
    .end local v6           #minutes:I
    :cond_4a
    return-object v7
.end method

.method private static setReminderSpinnerLabels(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "activity"
    .parameter "spinner"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/Spinner;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 206
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0c0033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 207
    const v2, 0x1090008

    .line 208
    .local v2, resource:I
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 209
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 211
    return-void
.end method
