.class Lcom/sec/android/widgetapp/apnews/activity/APNews$20;
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
    .line 1356
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$20;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 1360
    const/4 v0, 0x4

    if-ne p2, v0, :cond_d

    .line 1361
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$20;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v1, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1362
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$20;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    .line 1364
    :cond_d
    return v1
.end method
