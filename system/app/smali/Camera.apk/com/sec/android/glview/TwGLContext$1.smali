.class Lcom/sec/android/glview/TwGLContext$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLContext;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLContext;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .parameter "orientation"

    .prologue
    .line 382
    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    .line 398
    :cond_3
    :goto_3
    return-void

    .line 385
    :cond_4
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 387
    .local v0, newOrientation:I
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$000(Lcom/sec/android/glview/TwGLContext;)I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 388
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 389
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$200(Lcom/sec/android/glview/TwGLContext;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 390
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 394
    :goto_29
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 396
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #setter for: Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/glview/TwGLContext;->access$002(Lcom/sec/android/glview/TwGLContext;I)I

    goto :goto_3

    .line 392
    :cond_35
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    goto :goto_29
.end method
