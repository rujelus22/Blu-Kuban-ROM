.class public Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity$Notification;
.super Ljava/lang/Object;
.source "SocialHubNotificationHandleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notification"
.end annotation


# static fields
.field public static INVALID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/socialhub/activity/SocialHubNotificationHandleActivity$Notification;->INVALID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
