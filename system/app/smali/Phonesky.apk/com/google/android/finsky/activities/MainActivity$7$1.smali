.class Lcom/google/android/finsky/activities/MainActivity$7$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity$7;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/MainActivity$7;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$7$1;->this$1:Lcom/google/android/finsky/activities/MainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 671
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 672
    return-void
.end method
