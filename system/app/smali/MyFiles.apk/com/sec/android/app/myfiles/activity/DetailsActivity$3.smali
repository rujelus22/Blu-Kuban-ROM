.class Lcom/sec/android/app/myfiles/activity/DetailsActivity$3;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/DetailsActivity;->init()V
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
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$3;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$3;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mbCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$002(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Z)Z

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$3;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->finish()V

    .line 143
    return-void
.end method
