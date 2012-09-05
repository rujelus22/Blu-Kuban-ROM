.class Lcom/sec/android/widgetapp/apnews/activity/APNews$3;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 554
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->moveRight(I)V

    .line 559
    :cond_17
    :goto_17
    return-void

    .line 555
    :cond_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 557
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->moveLeft(I)V

    goto :goto_17
.end method
