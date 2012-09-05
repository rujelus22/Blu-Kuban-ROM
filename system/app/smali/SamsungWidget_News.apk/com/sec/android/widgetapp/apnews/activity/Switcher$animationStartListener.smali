.class final Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;
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
    name = "animationStartListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/Switcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;->this$0:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Lcom/sec/android/widgetapp/apnews/activity/Switcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;-><init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 269
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;->this$0:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->access$202(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Z)Z

    .line 265
    return-void
.end method
