.class Lcom/sec/android/glview/TwGLList$2;
.super Ljava/lang/Object;
.source "TwGLList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLList;->hideScrollBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLList;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLList;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList$2;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$2;->this$0:Lcom/sec/android/glview/TwGLList;

    #setter for: Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$002(Lcom/sec/android/glview/TwGLList;Z)Z

    .line 508
    return v1
.end method

.method public onAnimationStart()Z
    .registers 2

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method
