.class Lcom/sec/android/app/myfiles/activity/DetailsActivity$2;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/DetailsActivity;->setBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$2;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$2;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->finish()V

    .line 110
    return-void
.end method
