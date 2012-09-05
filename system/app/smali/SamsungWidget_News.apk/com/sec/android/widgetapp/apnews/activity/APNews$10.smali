.class Lcom/sec/android/widgetapp/apnews/activity/APNews$10;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 998
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$10;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$10;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingClick()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$900(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    .line 1001
    return-void
.end method
