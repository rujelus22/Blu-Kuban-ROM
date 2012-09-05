.class Lcom/sec/android/widgetapp/apnews/activity/APNews$21;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1465
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$21;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1467
    const/4 v0, 0x4

    if-ne p2, v0, :cond_14

    .line 1471
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$21;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 1472
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$21;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v2, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1473
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$21;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    .line 1476
    :cond_14
    return v2
.end method
