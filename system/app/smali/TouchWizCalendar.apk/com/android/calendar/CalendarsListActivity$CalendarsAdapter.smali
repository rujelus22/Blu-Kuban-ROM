.class Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "CalendarsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarsListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    .line 195
    const v0, 0x7f03000f

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 199
    invoke-virtual {p1}, Lcom/android/calendar/CalendarsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/CalendarsListActivity;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/android/calendar/CalendarsListActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "googlemail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #setter for: Lcom/android/calendar/CalendarsListActivity;->mIsGooglemailDomain:Z
    invoke-static {p1, v0}, Lcom/android/calendar/CalendarsListActivity;->access$402(Lcom/android/calendar/CalendarsListActivity;Z)Z

    .line 203
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "v"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 213
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 217
    .local v11, position:I
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 219
    .local v3, calendarId:I
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 221
    .local v6, color:I
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, calendarName:Ljava/lang/String;
    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, account:Ljava/lang/String;
    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, accountType:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "gmail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_51

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #getter for: Lcom/android/calendar/CalendarsListActivity;->mIsGooglemailDomain:Z
    invoke-static {v15}, Lcom/android/calendar/CalendarsListActivity;->access$400(Lcom/android/calendar/CalendarsListActivity;)Z

    move-result v15

    if-eqz v15, :cond_51

    .line 235
    const-string v15, "gmail"

    const-string v16, "googlemail"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 237
    const-string v15, "gmail"

    const-string v16, "googlemail"

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_51
    const v15, 0x7f0f001a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 255
    .local v7, ivAgendaColor:Landroid/view/View;
    const v15, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 257
    .local v14, tvAgendaCalendar:Landroid/widget/TextView;
    const v15, 0x7f0f001f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 259
    .local v8, ivAgendaType:Landroid/widget/ImageView;
    const v15, 0x7f0f0020

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 261
    .local v13, tvAgendaAccount:Landroid/widget/TextView;
    const v15, 0x7f0f001e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 263
    .local v9, llAccountContainer:Landroid/view/View;
    const v15, 0x7f0f0021

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    .line 267
    .local v12, radio:Landroid/widget/RadioButton;
    if-eqz v7, :cond_9d

    .line 269
    if-nez v6, :cond_96

    .line 271
    const v6, -0x222223

    .line 275
    :cond_96
    const v15, -0x44000001

    and-int/2addr v6, v15

    .line 279
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 285
    :cond_9d
    if-eqz v14, :cond_b9

    .line 287
    const-string v15, "My calendar"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b6

    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-virtual {v15}, Lcom/android/calendar/CalendarsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a00c1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    :cond_b6
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_b9
    const/4 v15, 0x1

    if-eq v3, v15, :cond_f6

    .line 299
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 301
    sget-object v15, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_SMALL:[I

    invoke-static {v2, v1}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    aget v5, v15, v16

    .line 307
    .local v5, calendarTypeResId:I
    if-lez v5, :cond_f0

    .line 309
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :goto_d1
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .end local v5           #calendarTypeResId:I
    :goto_d4
    if-eqz v12, :cond_ef

    .line 331
    move v10, v11

    .line 335
    .local v10, myPosition:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #getter for: Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;
    invoke-static {v15}, Lcom/android/calendar/CalendarsListActivity;->access$100(Lcom/android/calendar/CalendarsListActivity;)Landroid/widget/ListView;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v15

    if-eqz v15, :cond_fc

    .line 337
    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v15

    if-nez v15, :cond_ef

    .line 339
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 353
    .end local v10           #myPosition:I
    :cond_ef
    :goto_ef
    return-void

    .line 315
    .restart local v5       #calendarTypeResId:I
    :cond_f0
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d1

    .line 323
    .end local v5           #calendarTypeResId:I
    :cond_f6
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d4

    .line 343
    .restart local v10       #myPosition:I
    :cond_fc
    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_ef

    .line 345
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_ef
.end method
