.class public final Lcom/google/android/youtube/app/honeycomb/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/c;->c(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 28
    const v1, 0x7f0900c0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 29
    const v1, 0x7f0900bf

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 31
    const v1, 0x7f0900bd

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 33
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 6
    .parameter

    .prologue
    const v4, 0x7f0900c0

    .line 41
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/c;->c(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 45
    const v2, 0x7f0900bf

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 47
    const v2, 0x7f0900c1

    const v3, 0x7f0a0008

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 48
    const v2, 0x7f0900c2

    const v3, 0x7f0a0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/a;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 52
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 4
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04005e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 60
    const v1, 0x7f0900bd

    const v2, 0x7f0900be

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 61
    return-object v0
.end method
