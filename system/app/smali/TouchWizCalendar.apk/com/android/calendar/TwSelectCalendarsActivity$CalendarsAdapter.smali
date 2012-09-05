.class Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;
.super Landroid/widget/CursorAdapter;
.source "TwSelectCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    .line 365
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 366
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 367
    return-void
.end method

.method private setText(Landroid/view/View;ILjava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 454
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 459
    :goto_6
    return-void

    .line 457
    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 458
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 372
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 373
    .local v7, color:I
    if-nez v7, :cond_a

    .line 374
    const v7, -0x222223

    .line 376
    :cond_a
    const v8, 0x7f0f001a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 377
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 379
    .local v3, calendarId:I
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, calendarName:Ljava/lang/String;
    const-string v8, "My calendar"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 381
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v8}, Lcom/android/calendar/TwSelectCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00c1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    :cond_33
    const v8, 0x7f0f0015

    invoke-direct {p0, p1, v8, v4}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 391
    const v8, 0x7f0f001e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 392
    .local v1, accountContainer:Landroid/view/View;
    const v8, 0x7f0f001f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 394
    .local v5, calendarType:Landroid/widget/ImageView;
    const/4 v8, 0x1

    if-eq v3, v8, :cond_94

    .line 396
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gmail"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6d

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mIsGooglemailDomain:Z
    invoke-static {v8}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$700(Lcom/android/calendar/TwSelectCalendarsActivity;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 398
    const-string v8, "gmail"

    const-string v9, "googlemail"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_6d
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, accountType:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 405
    sget-object v8, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_SMALL:[I

    invoke-static {v2, v0}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aget v6, v8, v9

    .line 407
    .local v6, calendarTypeResId:I
    if-lez v6, :cond_8e

    .line 409
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    :goto_87
    const v8, 0x7f0f0020

    invoke-direct {p0, p1, v8, v0}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 446
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v6           #calendarTypeResId:I
    :goto_8d
    return-void

    .line 412
    .restart local v0       #account:Ljava/lang/String;
    .restart local v2       #accountType:Ljava/lang/String;
    .restart local v6       #calendarTypeResId:I
    :cond_8e
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_87

    .line 443
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v6           #calendarTypeResId:I
    :cond_94
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8d
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
