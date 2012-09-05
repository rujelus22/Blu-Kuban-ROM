.class Lcom/google/android/finsky/activities/ScreenshotsActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ScreenshotsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$1;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 173
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 169
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$1;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #calls: Lcom/google/android/finsky/activities/ScreenshotsActivity;->rotateActivityForVisibleImage()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$300(Lcom/google/android/finsky/activities/ScreenshotsActivity;)V

    .line 164
    return-void
.end method
