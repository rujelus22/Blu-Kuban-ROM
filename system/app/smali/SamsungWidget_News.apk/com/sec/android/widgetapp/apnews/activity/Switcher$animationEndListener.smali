.class final Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/Switcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "animationEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/Switcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;->this$0:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Lcom/sec/android/widgetapp/apnews/activity/Switcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;-><init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;->this$0:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    .line 288
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;->this$0:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->access$202(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Z)Z

    .line 289
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 292
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 283
    return-void
.end method
