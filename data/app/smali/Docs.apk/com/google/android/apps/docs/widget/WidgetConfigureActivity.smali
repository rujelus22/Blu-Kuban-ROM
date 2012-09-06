.class public Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;
.super Lcom/google/android/apps/docs/app/BaseDialogActivity;
.source "WidgetConfigureActivity.java"


# static fields
.field private static final a:I


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LabR;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LpB;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    invoke-static {}, LabF;->b()I

    move-result v0

    sput v0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;-><init>()V

    .line 71
    new-instance v0, LabR;

    invoke-direct {v0, p0}, LabR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LabR;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)LabR;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LabR;

    return-object v0
.end method

.method static a(Landroid/content/Context;[Landroid/accounts/Account;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 131
    array-length v3, p1

    .line 132
    invoke-static {p1, p2}, LHY;->a([Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    .line 135
    if-gez v0, :cond_4a

    .line 136
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v3, LcU;->app_widget_broken:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 137
    if-nez p2, :cond_24

    .line 138
    sget v1, LcS;->widget_broken_title:I

    sget v2, LcY;->widget_configuration_missing:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 167
    :goto_23
    return-object v0

    .line 141
    :cond_24
    sget v1, LcY;->widget_account_missing:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 143
    sget v3, LcS;->widget_broken_title:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    sget v3, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:I

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 147
    sget v2, LcS;->widget_broken_title:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_23

    .line 150
    :cond_4a
    if-nez p2, :cond_54

    .line 151
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "null accountName"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 153
    :cond_54
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v4, LcU;->app_widget:I

    invoke-direct {v0, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 154
    invoke-static {}, LabF;->values()[LabF;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_65
    if-ge v1, v5, :cond_6f

    aget-object v6, v4, v1

    .line 155
    invoke-virtual {v6, v0, p0, p2}, LabF;->a(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 157
    :cond_6f
    if-le v3, v7, :cond_81

    .line 158
    sget v1, LcS;->widget_account_name:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 159
    sget v1, LcS;->widget_app_title_only:I

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 160
    sget v1, LcS;->widget_app_title_account_container:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_23

    .line 162
    :cond_81
    sget v1, LcS;->widget_account_name:I

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 163
    sget v1, LcS;->widget_app_title_only:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 164
    sget v1, LcS;->widget_app_title_account_container:I

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_23
.end method

.method public static a(Landroid/appwidget/AppWidgetManager;ILandroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    const-string v0, "WidgetConfigure"

    const-string v1, "Configuring AppWidget %d [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p2}, LXl;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 174
    invoke-static {p2, v0, p3}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Landroid/content/Context;[Landroid/accounts/Account;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 175
    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 176
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->setResult(I)V

    .line 115
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 118
    if-nez v0, :cond_10

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->finish()V

    .line 124
    :goto_f
    return-void

    .line 121
    :cond_10
    iput v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->b:I

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LpB;

    invoke-interface {v0}, LpB;->a()V

    goto :goto_f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 79
    new-instance v0, Lpo;

    new-instance v1, LabS;

    invoke-direct {v1, p0}, LabS;-><init>(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)V

    iget-object v2, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LHW;

    iget-object v3, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LXJ;

    invoke-direct {v0, v1, v2, v3}, Lpo;-><init>(Lpr;LHW;LXJ;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LpB;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 88
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->setIntent(Landroid/content/Intent;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->b:I

    .line 104
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    return-void
.end method
