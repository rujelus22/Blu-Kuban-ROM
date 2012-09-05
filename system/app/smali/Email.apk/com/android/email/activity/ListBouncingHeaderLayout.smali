.class public Lcom/android/email/activity/ListBouncingHeaderLayout;
.super Landroid/widget/FrameLayout;
.source "ListBouncingHeaderLayout.java"


# static fields
.field private static sMessageListHeadTextStateColorDarkTheme:I

.field private static sMessageListHeadTextStateColorWhiteTheme:I

.field private static sMessageListHeadTextTimeColorDarkTheme:I

.field private static sMessageListHeadTextTimeColorWhiteTheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 53
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    .line 55
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorWhiteTheme:I

    .line 57
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorDarkTheme:I

    .line 59
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorDarkTheme:I

    return-void
.end method
