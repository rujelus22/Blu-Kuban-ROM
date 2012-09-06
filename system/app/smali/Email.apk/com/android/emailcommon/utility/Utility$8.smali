.class final Lcom/android/emailcommon/utility/Utility$8;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/emailcommon/utility/Utility$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/emailcommon/utility/Utility$8;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/emailcommon/utility/Utility$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1000
    :goto_8
    return-void

    .line 999
    :cond_9
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$8;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/emailcommon/utility/Utility$8;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_8
.end method
