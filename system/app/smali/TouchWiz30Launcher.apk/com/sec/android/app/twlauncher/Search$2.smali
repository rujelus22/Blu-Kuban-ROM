.class Lcom/sec/android/app/twlauncher/Search$2;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Search;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Search;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Search;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Search$2;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search$2;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Search;->clearAnimation()V

    .line 153
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 159
    return-void
.end method
