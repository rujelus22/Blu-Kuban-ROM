.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

.field final synthetic val$icon:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2349
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iput p2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->val$icon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2353
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2354
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 2356
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->access$4200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->val$icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2357
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->access$4200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 2358
    return-void
.end method
