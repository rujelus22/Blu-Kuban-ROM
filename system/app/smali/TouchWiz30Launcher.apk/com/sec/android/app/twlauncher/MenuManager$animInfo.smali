.class Lcom/sec/android/app/twlauncher/MenuManager$animInfo;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "animInfo"
.end annotation


# instance fields
.field public mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

.field public mSrc:Landroid/graphics/PointF;

.field public mView:Lcom/sec/android/app/twlauncher/MenuItemView;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 2287
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2287
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$animInfo;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    return-void
.end method
