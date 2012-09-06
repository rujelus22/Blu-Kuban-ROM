.class Lcom/google/android/music/activitymanagement/TopLevelActivity$2;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->openOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
