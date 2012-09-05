.class Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/SendAppListDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendAppItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "appicon"
    .parameter "appname"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 601
    iput-object p3, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;->mAppName:Ljava/lang/String;

    .line 602
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method
