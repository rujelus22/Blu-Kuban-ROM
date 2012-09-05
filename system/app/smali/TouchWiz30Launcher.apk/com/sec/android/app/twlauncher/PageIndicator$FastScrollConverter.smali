.class Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastScrollConverter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/PageIndicator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/PageIndicator$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$100(Lcom/sec/android/app/twlauncher/PageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$102(Lcom/sec/android/app/twlauncher/PageIndicator;Z)Z

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #calls: Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$200(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mParent:Lcom/sec/android/app/twlauncher/Scene;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$300(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Scene;->invalidate()V

    .line 233
    :cond_1c
    return-void
.end method
