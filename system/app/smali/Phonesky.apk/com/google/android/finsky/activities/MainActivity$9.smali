.class Lcom/google/android/finsky/activities/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 695
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turning image debugging "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "off."

    :goto_1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 697
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyDebug;->toggleImageDebugging(Landroid/content/Context;)V

    .line 698
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/MainActivity;->recreateDelayed(J)V

    .line 699
    return v3

    .line 695
    :cond_3a
    const-string v0, "on."

    goto :goto_1e
.end method
