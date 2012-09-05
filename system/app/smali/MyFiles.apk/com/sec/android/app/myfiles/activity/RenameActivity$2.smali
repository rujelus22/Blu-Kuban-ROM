.class Lcom/sec/android/app/myfiles/activity/RenameActivity$2;
.super Ljava/lang/Object;
.source "RenameActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/RenameActivity;->setBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$2;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$2;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->finish()V

    .line 110
    return-void
.end method
