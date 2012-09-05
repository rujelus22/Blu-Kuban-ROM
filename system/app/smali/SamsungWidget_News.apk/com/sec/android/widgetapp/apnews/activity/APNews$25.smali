.class Lcom/sec/android/widgetapp/apnews/activity/APNews$25;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;->setReloadAnimation(Z)V
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
    .line 1657
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1661
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_f

    .line 1662
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1664
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1900(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$2000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1666
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBtn:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$2100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1667
    return-void
.end method
