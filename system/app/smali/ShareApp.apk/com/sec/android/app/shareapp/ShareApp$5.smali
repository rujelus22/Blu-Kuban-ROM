.class Lcom/sec/android/app/shareapp/ShareApp$5;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/shareapp/ShareApp;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$5;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$5;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-virtual {v0}, Lcom/sec/android/app/shareapp/ShareApp;->loadAppLists()V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$5;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mReceiver:Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;
    invoke-static {v0}, Lcom/sec/android/app/shareapp/ShareApp;->access$600(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;->registerReceiver()V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$5;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyViewText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/shareapp/ShareApp;->access$700(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$5;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyViewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/shareapp/ShareApp;->access$800(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    return v2
.end method
