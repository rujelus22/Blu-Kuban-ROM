.class public final Lcom/twitter/android/client/WidgetControl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/util/w;


# static fields
.field private static final c:Ljava/text/SimpleDateFormat;

.field private static d:Landroid/text/style/TextAppearanceSpan;

.field private static e:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field private final f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

.field private final g:Lcom/twitter/android/client/i;

.field private final h:Lcom/twitter/android/client/i;

.field private final i:Landroid/content/Context;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Lcom/twitter/android/util/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/util/SynchronizedDateFormat;

    invoke-direct {v0}, Lcom/twitter/android/util/SynchronizedDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->c:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    sput v0, Lcom/twitter/android/client/WidgetControl;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/util/v;Ljava/lang/String;J)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/v;

    iput-object p3, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/client/WidgetControl$WidgetList;

    new-instance v1, Lcom/twitter/android/client/WidgetControl$WidgetList;

    invoke-direct {v1, v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;-><init>(Lcom/twitter/android/client/h;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/twitter/android/client/WidgetControl$WidgetList;

    invoke-direct {v2, v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;-><init>(Lcom/twitter/android/client/h;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    new-instance v0, Lcom/twitter/android/client/i;

    const v1, 0x7f050002

    const v2, 0x7f03006a

    const v3, 0x7f030067

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/twitter/android/client/i;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    new-instance v0, Lcom/twitter/android/client/i;

    const v1, 0x7f050003

    const v2, 0x7f03006d

    const v3, 0x7f030068

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/twitter/android/client/i;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iget-wide v0, v0, Lcom/twitter/android/provider/m;->h:J

    :goto_f
    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7

    if-nez p2, :cond_37

    const-string v1, "home"

    const/4 v0, 0x0

    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ref_event"

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aC:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0

    :cond_37
    const-string v1, "connect"

    const/4 v0, 0x1

    goto :goto_5

    :cond_3b
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "account_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "home_item"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_12
.end method

.method private static a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;
    .registers 14

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v4, 0x7f0700cd

    const v3, 0x7f0700cc

    const/high16 v5, 0x1000

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f050002

    if-ne p1, v0, :cond_85

    const v2, 0x7f0700cb

    const/4 v0, 0x5

    if-ne p5, v0, :cond_86

    const v0, 0x7f0200d5

    :goto_22
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v1, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, p4, p5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f0700cb

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    packed-switch p3, :pswitch_data_a0

    invoke-virtual {v1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/PostActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.twitter.android.post.status"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ref_event"

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aC:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7f0700ce

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v3

    invoke-static {p0, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_85
    :goto_85
    return-object v1

    :cond_86
    const v0, 0x7f02012a

    goto :goto_22

    :pswitch_8a
    invoke-virtual {v1, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_85

    :pswitch_8e
    invoke-virtual {v1, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b01ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_85

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_8a
        :pswitch_8e
    .end packed-switch
.end method

.method private a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V
    .registers 8

    invoke-virtual {p3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iget-wide v2, v0, Lcom/twitter/android/provider/m;->s:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/WidgetControl;->b(Z)V

    :cond_1a
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clear_logged_out"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "widget_provider"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V
    .registers 16

    const/4 v0, 0x1

    if-ne p2, v0, :cond_68

    invoke-virtual {p1}, Lcom/twitter/android/client/i;->a()[I

    move-result-object v7

    if-eqz v7, :cond_c

    array-length v0, v7

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const v0, 0x7f0b00e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    array-length v9, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_17
    if-ge v6, v9, :cond_c

    aget v10, v7, v6

    iget v1, p1, Lcom/twitter/android/client/i;->a:I

    iget v2, p1, Lcom/twitter/android/client/i;->c:I

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v8}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/WidgetSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0700c9

    const/4 v3, 0x0

    const/high16 v4, 0x400

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_17

    :cond_68
    if-nez p2, :cond_ac

    invoke-virtual {p1, p0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)[I

    move-result-object v6

    if-eqz v6, :cond_c

    array-length v0, v6

    if-eqz v0, :cond_c

    iget v1, p1, Lcom/twitter/android/client/i;->a:I

    iget v2, p1, Lcom/twitter/android/client/i;->c:I

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0b00e5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b00e6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    :goto_92
    const v2, 0x7f0700c9

    const/4 v3, 0x0

    invoke-static {p0, p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x400

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_c

    :cond_ac
    invoke-static {p1, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/i;I)[I

    move-result-object v6

    if-eqz v6, :cond_c

    array-length v0, v6

    if-eqz v0, :cond_c

    iget v1, p1, Lcom/twitter/android/client/i;->a:I

    iget v2, p1, Lcom/twitter/android/client/i;->c:I

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    packed-switch p2, :pswitch_data_d8

    const/4 v1, 0x0

    const v2, 0x7f0b0051

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_92

    :pswitch_d1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_92

    :pswitch_data_d8
    .packed-switch 0x2
        :pswitch_d1
    .end packed-switch
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/twitter/android/provider/m;Landroid/graphics/Bitmap;)V
    .registers 15

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->d:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_29

    const/high16 v0, 0x4160

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    const v0, 0x7f0a0009

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->d:Landroid/text/style/TextAppearanceSpan;

    :cond_29
    iget-object v2, p2, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    iget-object v3, p2, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    iget-wide v4, p2, Lcom/twitter/android/provider/m;->h:J

    iget-wide v0, p2, Lcom/twitter/android/provider/m;->j:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_ad

    invoke-static {v3}, Lcom/twitter/android/api/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3c
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v2, :cond_52

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->d:Landroid/text/style/TextAppearanceSpan;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v9, 0x21

    invoke-virtual {v7, v0, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_52
    if-eqz v3, :cond_5d

    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5d
    iget-object v0, p2, Lcom/twitter/android/provider/m;->y:[B

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iget v2, p2, Lcom/twitter/android/provider/m;->C:I

    iget-wide v8, p2, Lcom/twitter/android/provider/m;->s:J

    iget-object v3, p2, Lcom/twitter/android/provider/m;->y:[B

    invoke-virtual {v0, v2, v8, v9, v3}, Lcom/twitter/android/client/b;->a(IJ[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    :goto_71
    if-eqz v0, :cond_b2

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v2, :cond_b2

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    iget v8, v0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    sub-int/2addr v8, v2

    iget v9, v0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    sub-int/2addr v9, v2

    if-ltz v8, :cond_16c

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-gt v9, v10, :cond_16c

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16c

    invoke-virtual {v7, v8, v9, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    sub-int v0, v9, v0

    add-int/2addr v0, v2

    :goto_ab
    move v2, v0

    goto :goto_7e

    :cond_ad
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_3c

    :cond_b0
    const/4 v0, 0x0

    goto :goto_71

    :cond_b2
    const v0, 0x7f07003a

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object v0, Lcom/twitter/android/client/WidgetControl;->c:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_134

    const v2, 0x7f070035

    const v3, 0x7f0b004e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_da
    if-eqz p3, :cond_161

    const v0, 0x7f070010

    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_e2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v1, p2, Lcom/twitter/android/provider/m;->A:J

    iget-wide v3, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-static {v1, v2, v3, v4}, Lcom/twitter/android/provider/o;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref_event"

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->aC:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0700cf

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_134
    iget-object v1, p2, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    if-eqz v1, :cond_159

    iget-object v1, p2, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    iget-object v1, v1, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    if-eqz v1, :cond_159

    const v1, 0x7f070035

    const v2, 0x7f0b004d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p2, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    iget-object v4, v4, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_da

    :cond_159
    const v1, 0x7f070035

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_da

    :cond_161
    const v0, 0x7f070010

    const v1, 0x7f0200e9

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_e2

    :cond_16c
    move v0, v2

    goto/16 :goto_ab
.end method

.method private static a(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    const v6, 0x7f0700c8

    const v5, 0x7f070076

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v1

    :goto_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    :goto_17
    if-eqz v0, :cond_3c

    invoke-virtual {p0, v6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1f
    if-eqz v1, :cond_40

    invoke-virtual {p0, v5, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_27
    if-nez v0, :cond_2b

    if-eqz v1, :cond_44

    :cond_2b
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f07005d

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_37
    return-void

    :cond_38
    move v0, v2

    goto :goto_11

    :cond_3a
    move v1, v2

    goto :goto_17

    :cond_3c
    invoke-virtual {p0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1f

    :cond_40
    invoke-virtual {p0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_27

    :cond_44
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f07005d

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_37
.end method

.method private a(Lcom/twitter/android/provider/m;Landroid/graphics/Bitmap;Lcom/twitter/android/client/i;I)V
    .registers 16

    iget v0, p3, Lcom/twitter/android/client/i;->a:I

    const v1, 0x7f050002

    if-ne v0, v1, :cond_213

    invoke-static {p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/i;I)[I

    move-result-object v6

    if-eqz v6, :cond_10

    array-length v0, v6

    if-nez v0, :cond_19

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, p3, v1, v2, p4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget v1, p3, Lcom/twitter/android/client/i;->a:I

    iget v2, p3, Lcom/twitter/android/client/i;->b:I

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v3

    if-nez p1, :cond_41

    const v0, 0x7f0700d0

    const/4 v1, 0x4

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0700d1

    const/4 v1, 0x4

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_37
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_10

    :cond_41
    const v0, 0x7f0700d0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0700d1

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v0, 0x7f070025

    iget-object v1, p1, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/twitter/android/provider/m;->y:[B

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iget v1, p1, Lcom/twitter/android/provider/m;->C:I

    iget-wide v7, p1, Lcom/twitter/android/provider/m;->s:J

    iget-object v2, p1, Lcom/twitter/android/provider/m;->y:[B

    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/twitter/android/client/b;->a(IJ[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    move-object v2, v0

    :goto_79
    if-eqz v2, :cond_ba

    iget-object v0, v2, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_ba

    const/4 v0, 0x0

    iget-object v1, v2, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_87
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    iget v8, v0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    sub-int/2addr v8, v1

    iget v9, v0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    sub-int/2addr v9, v1

    if-ltz v8, :cond_2a0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-gt v9, v10, :cond_2a0

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a0

    invoke-virtual {v5, v8, v9, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    sub-int v0, v9, v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_b5
    move v1, v0

    goto :goto_87

    :cond_b7
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_79

    :cond_ba
    const v0, 0x7f07003a

    invoke-virtual {v3, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f070039

    iget-wide v7, p1, Lcom/twitter/android/provider/m;->h:J

    invoke-static {v4, v7, v8}, Lcom/twitter/android/util/x;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f070036

    iget-wide v7, p1, Lcom/twitter/android/provider/m;->j:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_196

    const/4 v0, 0x0

    :goto_d8
    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f070037

    if-eqz v2, :cond_19a

    invoke-virtual {v2}, Lcom/twitter/android/api/TweetEntities;->b()Z

    move-result v0

    if-eqz v0, :cond_19a

    const/4 v0, 0x0

    :goto_e7
    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-boolean v0, p1, Lcom/twitter/android/provider/m;->x:Z

    if-eqz v0, :cond_19e

    const v0, 0x7f070038

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_f5
    if-eqz p2, :cond_1a8

    const v0, 0x7f070010

    invoke-virtual {v3, v0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_fd
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v1, p1, Lcom/twitter/android/provider/m;->A:J

    iget-wide v7, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-static {v1, v2, v7, v8}, Lcom/twitter/android/provider/o;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref_event"

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->aC:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0700cf

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x1000

    invoke-static {v2, v5, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-boolean v0, p1, Lcom/twitter/android/provider/m;->r:Z

    if-eqz v0, :cond_1b3

    const v0, 0x7f07003c

    const v1, 0x7f0b0040

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p1, Lcom/twitter/android/provider/m;->e:Ljava/lang/String;

    aput-object v7, v2, v5

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f07003c

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_16e
    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->c()I

    move-result v0

    invoke-direct {p0, p4}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v1

    iget v2, v1, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    if-nez v2, :cond_1bc

    const v4, 0x7f0700d0

    const v5, 0x7f0200ee

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_183
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_1e7

    const v0, 0x7f0700d1

    const v1, 0x7f0200e5

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_37

    :cond_196
    const/16 v0, 0x8

    goto/16 :goto_d8

    :cond_19a
    const/16 v0, 0x8

    goto/16 :goto_e7

    :cond_19e
    const v0, 0x7f070038

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_f5

    :cond_1a8
    const v0, 0x7f070010

    const v1, 0x7f0200e8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_fd

    :cond_1b3
    const v0, 0x7f07003c

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_16e

    :cond_1bc
    const v4, 0x7f0700d0

    const v5, 0x7f020146

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.twitter.android.widget.button.prev"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "owner_id"

    iget-wide v7, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "status_type"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v5, 0x7f0700d0

    iget-object v7, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/high16 v8, 0x1000

    invoke-static {v7, v0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_183

    :cond_1e7
    const v1, 0x7f0700d1

    const v2, 0x7f020145

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.twitter.android.widget.button.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "owner_id"

    iget-wide v4, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "status_type"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x7f0700d1

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v0, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_37

    :cond_213
    invoke-static {p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/i;I)[I

    move-result-object v1

    if-eqz v1, :cond_10

    array-length v0, v1

    if-eqz v0, :cond_10

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f03006d

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p4}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v3

    if-lez v3, :cond_298

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    invoke-direct {p0, v2, v0, p2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Lcom/twitter/android/provider/m;Landroid/graphics/Bitmap;)V

    iget-wide v3, v0, Lcom/twitter/android/provider/m;->n:J

    iget-wide v5, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_298

    const v3, 0x7f0700d3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/PostActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.twitter.android.post.reply"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/provider/z;->b:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/twitter/android/provider/m;->o:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x1400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "ref_event"

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aC:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const v3, 0x7f0700d3

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_28d
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_10

    :cond_298
    const v0, 0x7f0700d3

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_28d

    :cond_2a0
    move v0, v1

    goto/16 :goto_b5
.end method

.method private a(Ljava/util/HashMap;I)V
    .registers 8

    invoke-direct {p0, p2}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v2

    iget v0, v2, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    invoke-virtual {v2}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iget-wide v3, v0, Lcom/twitter/android/provider/m;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/util/u;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/provider/m;Landroid/graphics/Bitmap;Lcom/twitter/android/client/i;I)V

    :cond_29
    invoke-virtual {v2}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v0

    if-lez v0, :cond_4d

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iget-wide v1, v0, Lcom/twitter/android/provider/m;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/util/u;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/provider/m;Landroid/graphics/Bitmap;Lcom/twitter/android/client/i;I)V

    :cond_4d
    return-void
.end method

.method private static a(Lcom/twitter/android/client/i;I)[I
    .registers 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->c()[I

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/twitter/android/client/i;->b()[I

    move-result-object v0

    goto :goto_7
.end method

.method private b(Lcom/twitter/android/client/i;I)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p2}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v1

    iget v0, p1, Lcom/twitter/android/client/i;->a:I

    const v2, 0x7f050002

    if-ne v0, v2, :cond_25

    iget v0, v1, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    :goto_16
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v2

    if-nez v2, :cond_27

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    goto :goto_8

    :cond_25
    const/4 v0, 0x0

    goto :goto_16

    :cond_27
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/android/provider/m;

    iget-object v0, v6, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/v;

    iget-wide v1, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    iget-wide v3, v6, Lcom/twitter/android/provider/m;->n:J

    iget-object v5, v6, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/util/v;->a(JJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3e
    invoke-direct {p0, v6, v0, p1, p2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/provider/m;Landroid/graphics/Bitmap;Lcom/twitter/android/client/i;I)V

    goto :goto_8

    :cond_42
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method private static declared-synchronized c()I
    .registers 2

    const-class v1, Lcom/twitter/android/client/WidgetControl;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/twitter/android/client/WidgetControl;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/android/client/WidgetControl;->e:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;
    .registers 4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_8
.end method


# virtual methods
.method final a()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;[I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;[I)V

    return-void
.end method

.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    iget v2, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    if-eqz v1, :cond_8

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_8

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->a()V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/i;I)V

    goto :goto_8
.end method

.method final a(IJLjava/util/ArrayList;)V
    .registers 13

    const/4 v7, 0x3

    const/16 v6, 0x14

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-nez v0, :cond_1a

    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->clear()V

    :cond_1a
    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {v3, v1, p4}, Lcom/twitter/android/client/WidgetControl$WidgetList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v2

    if-nez v2, :cond_3f

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, v7, v2, p1}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, v7, v2, p1}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    goto :goto_c

    :cond_3d
    move v0, v1

    goto :goto_21

    :cond_3f
    :goto_3f
    if-le v2, v6, :cond_49

    invoke-virtual {v3, v6}, Lcom/twitter/android/client/WidgetControl$WidgetList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v2

    goto :goto_3f

    :cond_49
    iget v2, v3, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v0, :cond_57

    if-le v2, v4, :cond_57

    add-int v0, v2, v4

    if-lt v0, v6, :cond_5e

    :cond_57
    iput v1, v3, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/i;I)V

    :cond_5e
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/i;I)V

    goto :goto_c
.end method

.method public final a(J)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V

    :cond_18
    return-void
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(Ljava/util/HashMap;I)V

    const/4 v0, 0x5

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(Ljava/util/HashMap;I)V

    :cond_12
    return-void
.end method

.method public final a(Z)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/v;

    invoke-virtual {v1, p0}, Lcom/twitter/android/util/v;->b(Lcom/twitter/android/util/w;)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v4, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "close"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "owner_id"

    iget-wide v4, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "widget_state"

    if-eqz p1, :cond_39

    :goto_31
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    :cond_39
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public final b()V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/util/v;

    invoke-virtual {v0, p0}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/util/w;)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "open"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-wide v3, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_8
.end method

.method public final b(I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->e(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    iget v2, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    if-eqz v1, :cond_8

    if-lez v2, :cond_8

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->b()V

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/i;I)V

    goto :goto_8
.end method

.method public final b(Z)V
    .registers 9

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    iget-wide v5, p0, Lcom/twitter/android/client/WidgetControl;->b:J

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "latest_time_tweets"

    if-eqz p1, :cond_38

    move-wide v0, v2

    :goto_28
    invoke-virtual {v5, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "latest_time_mentions"

    if-eqz p1, :cond_42

    :goto_30
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J

    move-result-wide v0

    goto :goto_28

    :cond_42
    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->f:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J

    move-result-wide v2

    goto :goto_30
.end method

.method public final c(I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const v0, 0x7f050002

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    :goto_10
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/i;I)V

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/i;I)V

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    goto :goto_10
.end method

.method public final d(I)V
    .registers 7

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->g:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    goto :goto_5
.end method
