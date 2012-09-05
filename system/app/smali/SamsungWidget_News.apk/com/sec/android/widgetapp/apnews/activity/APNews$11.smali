.class Lcom/sec/android/widgetapp/apnews/activity/APNews$11;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;
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
    .line 1004
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$11;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1008
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$11;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1009
    const/16 v1, 0x15

    if-ne p2, v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1010
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$11;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->moveRight(I)V

    .line 1015
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
