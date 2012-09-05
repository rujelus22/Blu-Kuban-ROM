.class Lcom/sec/android/widgetapp/apnews/activity/APNews$14;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1250
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v1, 0x42

    .line 1252
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 1253
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1254
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1255
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1264
    :goto_20
    return-void

    .line 1258
    :cond_21
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingClick()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$900(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    goto :goto_20

    .line 1261
    :cond_27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    goto :goto_20
.end method
