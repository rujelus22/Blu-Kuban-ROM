.class public Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field private static a:Z

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/util/Vector;

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/util/HashMap;

.field private static f:Z

.field private static g:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b:Landroid/os/Handler;

    sput-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    sput-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->g:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static a(ZI)I
    .registers 3

    const/4 v0, -0x1

    if-eqz p0, :cond_1b

    packed-switch p1, :pswitch_data_34

    :goto_6
    return v0

    :pswitch_7
    const v0, 0x7f0d015c

    goto :goto_6

    :pswitch_b
    const v0, 0x7f0d015d

    goto :goto_6

    :pswitch_f
    const v0, 0x7f0d015e

    goto :goto_6

    :pswitch_13
    const v0, 0x7f0d015f

    goto :goto_6

    :pswitch_17
    const v0, 0x7f0d0161

    goto :goto_6

    :cond_1b
    packed-switch p1, :pswitch_data_42

    goto :goto_6

    :pswitch_1f
    const v0, 0x7f0d014a

    goto :goto_6

    :pswitch_23
    const v0, 0x7f0d014b

    goto :goto_6

    :pswitch_27
    const v0, 0x7f0d014c

    goto :goto_6

    :pswitch_2b
    const v0, 0x7f0d014d

    goto :goto_6

    :pswitch_2f
    const v0, 0x7f0d014f

    goto :goto_6

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method static synthetic a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_15

    const-string v0, "EN"

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/df;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/df;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/df;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/df;->a:Ljava/lang/String;

    goto :goto_14

    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/widget/ClassicWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_60

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    :goto_21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-static {}, Lcom/a/a/a/a/b/f;->a()Lcom/a/a/a/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/b/f;->b()V

    invoke-static {}, Lcom/a/a/a/a/a/c;->a()Lcom/a/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/a/c;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/d/b;->b()V

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c(Landroid/content/Context;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/widget/a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/sdgtl/mediahub/spr/widget/a;-><init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->g:Landroid/database/ContentObserver;

    const-string v0, "date_format"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->g:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    goto :goto_21
.end method

.method private a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .registers 12

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v6, :cond_84

    move v0, v1

    :goto_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v1, :cond_86

    move v3, v1

    :goto_20
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->v(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_31

    move v2, v1

    :cond_31
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030061

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f020054

    invoke-static {v1, v7, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v6, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-nez v6, :cond_56

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;)V

    :cond_56
    if-eqz v0, :cond_5a

    if-nez v3, :cond_78

    :cond_5a
    if-nez v4, :cond_78

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-T839"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-T849"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_88

    :cond_78
    if-eqz v2, :cond_88

    invoke-static {p1, v5, p3, v2, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b(Landroid/content/Context;Landroid/widget/RemoteViews;IZLandroid/graphics/Bitmap;)V

    :goto_7d
    invoke-virtual {p2, p3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_84
    move v0, v2

    goto :goto_13

    :cond_86
    move v3, v2

    goto :goto_20

    :cond_88
    invoke-static {p1, v5, p3, v2, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IZLandroid/graphics/Bitmap;)V

    goto :goto_7d
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RemoteViews;IZLandroid/graphics/Bitmap;)V
    .registers 19

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_87

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    const/4 v1, 0x1

    :goto_12
    const v2, 0x7f0d0146

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0d0158

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    if-eqz v2, :cond_89

    const v1, 0x7f0d0147

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0152

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0155

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0157

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget.retry"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0153

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget.cancel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0154

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_86
    :goto_86
    return-void

    :cond_87
    const/4 v1, 0x0

    goto :goto_12

    :cond_89
    if-eqz v1, :cond_97

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-eqz v1, :cond_97

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_e0

    :cond_97
    const v1, 0x7f0d0147

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0152

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0155

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0157

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0156

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_86

    :cond_e0
    const v1, 0x7f0d0149

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d014e

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0147

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0152

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0155

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    sget-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    if-nez v2, :cond_114

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    :cond_114
    sget-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38d

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_131
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    if-nez v1, :cond_13c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    :cond_13c
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38a

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_158
    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-eqz v3, :cond_1d6

    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_1d6

    add-int/2addr v1, v2

    sget-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_2bf

    const/4 v1, 0x0

    move v2, v1

    :goto_16f
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v6, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    add-int/lit8 v1, v2, -0x2

    if-gez v1, :cond_184

    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_184
    const/4 v3, 0x0

    move v4, v3

    move v5, v1

    :goto_187
    const/4 v1, 0x5

    if-lt v4, v1, :cond_2cc

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.what_new"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "product_id"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d0148

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.go_mediahub"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "product_id"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d014c

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1d6
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.widget_right"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d014d

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0d014f

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.widget_left"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d014b

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0d014a

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "widget_last_updated"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24f

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_366

    :cond_24f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v2, v1

    :goto_254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0052

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3, p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    if-nez v2, :cond_371

    const v2, 0x7f0d0157

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0d0151

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0d0150

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0d0150

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_29c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget.refresh"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0151

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_86

    :cond_2bf
    if-gez v1, :cond_387

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto/16 :goto_16f

    :cond_2cc
    move/from16 v0, p3

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(ZI)I

    move-result v7

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v5, :cond_361

    if-ltz v5, :cond_361

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_308

    if-eqz v4, :cond_2ea

    const/4 v1, 0x2

    if-ne v4, v1, :cond_308

    :cond_2ea
    move-object/from16 v1, p4

    :goto_2ec
    const/4 v3, 0x0

    invoke-virtual {p1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v1, :cond_2f5

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_2f5
    :goto_2f5
    add-int/lit8 v1, v5, 0x1

    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_302

    const/4 v1, 0x0

    :cond_302
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v1

    goto/16 :goto_187

    :cond_308
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_31e

    if-nez v4, :cond_316

    const/4 v1, 0x1

    if-eq v5, v1, :cond_31b

    :cond_316
    const/4 v1, 0x2

    if-ne v4, v1, :cond_31e

    if-nez v5, :cond_31e

    :cond_31b
    move-object/from16 v1, p4

    goto :goto_2ec

    :cond_31e
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-eqz v1, :cond_86

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_339

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    :cond_339
    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_340

    move-object/from16 v1, p4

    goto :goto_2ec

    :cond_340
    const/16 v3, 0x6e

    const/16 v8, 0x9b

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v9, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x6e

    const/16 v13, 0x9b

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v1, v3

    goto :goto_2ec

    :cond_361
    const/4 v1, 0x4

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2f5

    :cond_366
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto/16 :goto_254

    :cond_371
    const v2, 0x7f0d0150

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0d0157

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0151

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_29c

    :cond_387
    move v2, v1

    goto/16 :goto_16f

    :cond_38a
    move v1, v3

    goto/16 :goto_158

    :cond_38d
    move v2, v1

    goto/16 :goto_131
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    return-void
.end method

.method private static b(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    packed-switch p1, :pswitch_data_5c

    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :pswitch_f
    const-string v1, "deviceUid"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5a

    :try_start_17
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1a} :catch_20

    move-result-object v0

    :goto_1b
    if-nez v0, :cond_e

    const-string v0, "1002"

    goto :goto_e

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1b

    :pswitch_23
    const-string v0, "mcc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "310"

    goto :goto_e

    :pswitch_2e
    const-string v0, "mnc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "004"

    goto :goto_e

    :pswitch_39
    const-string v0, "csc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "ATT"

    goto :goto_e

    :pswitch_44
    const-string v0, "deviceid"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "tDevice01"

    goto :goto_e

    :pswitch_4f
    const-string v0, "useragent"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "stamhub 122/SCH-I800"

    goto :goto_e

    :cond_5a
    move-object v0, v1

    goto :goto_1b

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_23
        :pswitch_2e
        :pswitch_39
        :pswitch_44
        :pswitch_4f
    .end packed-switch
.end method

.method private b(Landroid/content/Context;)V
    .registers 11

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_12
    if-lt v0, v4, :cond_15

    return-void

    :cond_15
    aget v5, v3, v0

    sget-object v6, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    if-eqz v6, :cond_2e

    sget-object v6, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    invoke-direct {p0, p1, v2, v5}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2e
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method private static b(Landroid/content/Context;Landroid/widget/RemoteViews;IZLandroid/graphics/Bitmap;)V
    .registers 19

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_87

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    const/4 v1, 0x1

    :goto_12
    const v2, 0x7f0d0146

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0d0158

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    if-eqz v2, :cond_89

    const v1, 0x7f0d0159

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0164

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0167

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0169

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget.retry"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0165

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget.cancel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0166

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_86
    :goto_86
    return-void

    :cond_87
    const/4 v1, 0x0

    goto :goto_12

    :cond_89
    if-eqz v1, :cond_97

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-eqz v1, :cond_97

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_e0

    :cond_97
    const v1, 0x7f0d0159

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0164

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0167

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0169

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0168

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_86

    :cond_e0
    const v1, 0x7f0d015b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0160

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0159

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0164

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0167

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    sget-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    if-nez v2, :cond_112

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    :cond_112
    sget-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38b

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_12f
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    if-nez v1, :cond_13a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    :cond_13a
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_388

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_156
    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-eqz v3, :cond_1d4

    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_1d4

    add-int/2addr v1, v2

    sget-object v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_2bd

    const/4 v1, 0x0

    move v2, v1

    :goto_16d
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v6, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    add-int/lit8 v1, v2, -0x2

    if-gez v1, :cond_182

    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_182
    const/4 v3, 0x0

    move v4, v3

    move v5, v1

    :goto_185
    const/4 v1, 0x5

    if-lt v4, v1, :cond_2ca

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.what_new"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "product_id"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d015a

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.go_mediahub"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "product_id"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d015e

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1d4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.widget_right"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d015f

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0d0161

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sdgtl.mediahub.spr.widget.widget_left"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0d015d

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0d015c

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "widget_last_updated"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24d

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_364

    :cond_24d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v2, v1

    :goto_252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0052

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3, p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    if-nez v2, :cond_36f

    const v2, 0x7f0d0169

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0d0163

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0d0162

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0d0162

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_29a
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget.refresh"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "widget_id"

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800

    move/from16 v0, p2

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0d0163

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_86

    :cond_2bd
    if-gez v1, :cond_385

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto/16 :goto_16d

    :cond_2ca
    move/from16 v0, p3

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(ZI)I

    move-result v7

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v5, :cond_35f

    if-ltz v5, :cond_35f

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_306

    if-eqz v4, :cond_2e8

    const/4 v1, 0x2

    if-ne v4, v1, :cond_306

    :cond_2e8
    move-object/from16 v1, p4

    :goto_2ea
    const/4 v3, 0x0

    invoke-virtual {p1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v1, :cond_2f3

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_2f3
    :goto_2f3
    add-int/lit8 v1, v5, 0x1

    sget-object v3, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_300

    const/4 v1, 0x0

    :cond_300
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v1

    goto/16 :goto_185

    :cond_306
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_31c

    if-nez v4, :cond_314

    const/4 v1, 0x1

    if-eq v5, v1, :cond_319

    :cond_314
    const/4 v1, 0x2

    if-ne v4, v1, :cond_31c

    if-nez v5, :cond_31c

    :cond_319
    move-object/from16 v1, p4

    goto :goto_2ea

    :cond_31c
    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-eqz v1, :cond_86

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_337

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    :cond_337
    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_33e

    move-object/from16 v1, p4

    goto :goto_2ea

    :cond_33e
    const/16 v3, 0x50

    const/16 v8, 0x78

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v9, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x50

    const/16 v13, 0x78

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v1, v3

    goto :goto_2ea

    :cond_35f
    const/4 v1, 0x4

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2f3

    :cond_364
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto/16 :goto_252

    :cond_36f
    const v2, 0x7f0d0162

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0d0169

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0163

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_29a

    :cond_385
    move v2, v1

    goto/16 :goto_16d

    :cond_388
    move v1, v3

    goto/16 :goto_156

    :cond_38b
    move v2, v1

    goto/16 :goto_12f
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    :cond_b
    const-string v0, "main_caching_data"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_15
    invoke-static {p1, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/widget/d;

    invoke-direct {v0, p0, p1}, Lcom/sdgtl/mediahub/spr/widget/d;-><init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_21

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    new-instance v4, Lcom/sdgtl/mediahub/spr/widget/c;

    invoke-direct {v4, p0, v0, p1}, Lcom/sdgtl/mediahub/spr/widget/c;-><init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/aj;->a(Ljava/lang/String;Lcom/sdgtl/mediahub/spr/am;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_6d} :catch_6e

    goto :goto_21

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3f
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->d:Ljava/util/HashMap;

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    sput-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->g:Landroid/database/ContentObserver;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/widget/ClassicWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->g:Landroid/database/ContentObserver;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/high16 v10, 0x2000

    const/high16 v9, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "widget_id"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->g:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;)V

    :cond_1e
    if-nez v3, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    move v0, v1

    :goto_33
    new-array v6, v1, [I

    aput v5, v6, v2

    sget-object v7, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    if-nez v7, :cond_42

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    :cond_42
    const-string v7, "com.sdgtl.mediahub.spr.widget.refresh"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_66

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    :goto_52
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sdgtl/mediahub/spr/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/widget/b;-><init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_20

    :cond_64
    move v0, v2

    goto :goto_33

    :cond_66
    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    goto :goto_52

    :cond_69
    const-string v7, "com.sdgtl.mediahub.spr.widget.retry"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7d

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    :goto_79
    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b(Landroid/content/Context;)V

    goto :goto_20

    :cond_7d
    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    goto :goto_79

    :cond_80
    const-string v7, "com.sdgtl.mediahub.spr.widget.cancel"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    :cond_8a
    :goto_8a
    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b(Landroid/content/Context;)V

    goto :goto_20

    :cond_8e
    const-string v7, "com.sdgtl.mediahub.spr.widget.update"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c(Landroid/content/Context;)V

    goto :goto_20

    :cond_9a
    if-nez v0, :cond_a0

    invoke-virtual {p0, p1, v4, v6}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_20

    :cond_a0
    const-string v0, "com.sdgtl.mediahub.spr.widget.widget_left"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v4, v6}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_20

    :cond_bb
    const-string v0, "com.sdgtl.mediahub.spr.widget.what_new"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ce

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    goto :goto_8a

    :cond_ce
    const-string v0, "product_id"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    const-string v1, "product_id"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->d()Z

    move-result v2

    if-eqz v2, :cond_101

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_101
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.widget_start"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "product_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_20

    :cond_115
    const-string v0, "com.sdgtl.mediahub.spr.widget.go_mediahub"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_129

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    goto/16 :goto_8a

    :cond_129
    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const-string v0, "product_id"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v4, 0x0

    move v3, v2

    :goto_141
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1ac

    move v1, v2

    :cond_148
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_25e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->d()Z

    move-result v0

    if-eqz v0, :cond_25e

    move v1, v2

    :goto_158
    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_1cd

    move-object v0, v4

    :goto_161
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ea

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_170
    const-string v1, "product_id"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "widget_from_detail"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sdgtl.mediahub.spr.widget_start_detail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "product_id"

    const-string v3, "product_id"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_20

    :cond_1ac
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.sdgtl.mediahub.spr.screen.MyMedia"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_148

    const-string v8, "com.sdgtl.mediahub.spr.screen.land.MyMediaLand"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_141

    :cond_1cd
    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    if-ne v0, v7, :cond_1e5

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    goto/16 :goto_161

    :cond_1e5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_158

    :cond_1ea
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_170

    :cond_1f9
    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20a

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_170

    :cond_20a
    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21b

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_170

    :cond_21b
    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_170

    :cond_22c
    const-string v0, "com.sdgtl.mediahub.spr.widget.widget_right"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_246

    sget-object v0, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v4, v6}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_20

    :cond_246
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25b

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->f:Z

    :goto_256
    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b(Landroid/content/Context;)V

    goto/16 :goto_20

    :cond_25b
    sput-boolean v2, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a:Z

    goto :goto_256

    :cond_25e
    move-object v0, v3

    goto/16 :goto_170
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget v1, p3, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
