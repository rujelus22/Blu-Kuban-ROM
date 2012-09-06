.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;
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


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V
    .registers 2
    .parameter

    .prologue
    .line 2328
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 2332
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2333
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 2335
    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->access$4200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->play:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2336
    .local v0, button:Landroid/widget/ImageButton;
    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->wheel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2337
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v2, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 2338
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2339
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->access$4200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 2340
    return-void
.end method
