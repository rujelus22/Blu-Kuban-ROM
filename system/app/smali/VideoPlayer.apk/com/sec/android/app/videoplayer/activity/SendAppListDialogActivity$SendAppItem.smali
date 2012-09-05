.class Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendAppItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "appicon"
    .parameter "appname"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 235
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;->mAppName:Ljava/lang/String;

    .line 236
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method
