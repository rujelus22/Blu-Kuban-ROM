.class Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->SetEnableBtn(Z)V

    .line 215
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->GetExternalStorageMount()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 217
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    const v3, 0x7f060036

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 218
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->finish()V

    .line 234
    :goto_1d
    return-void

    .line 222
    :cond_1e
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .line 223
    .local v0, available_memsize:J
    const-wide/32 v2, 0xa00000

    cmp-long v2, v0, v2

    if-gez v2, :cond_43

    .line 225
    const-string v2, "[PhotoEditor_U1ICS_120206]"

    const-string v3, "not enough memory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    const v3, 0x7f060038

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 228
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->SetEnableBtn(Z)V

    goto :goto_1d

    .line 233
    :cond_43
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->openFromCamera()V

    goto :goto_1d
.end method
