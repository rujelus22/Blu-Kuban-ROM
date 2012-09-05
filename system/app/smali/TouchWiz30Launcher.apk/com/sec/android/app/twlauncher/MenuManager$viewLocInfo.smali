.class public Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "viewLocInfo"
.end annotation


# instance fields
.field public mAnimDur:I

.field public mRelPt:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 3
    .parameter

    .prologue
    .line 4537
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4538
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    .line 4539
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    return-void
.end method
