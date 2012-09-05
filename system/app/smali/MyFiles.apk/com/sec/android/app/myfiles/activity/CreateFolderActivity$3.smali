.class Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$3;
.super Ljava/lang/Object;
.source "CreateFolderActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->setBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$3;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$3;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->finish()V

    .line 120
    return-void
.end method
