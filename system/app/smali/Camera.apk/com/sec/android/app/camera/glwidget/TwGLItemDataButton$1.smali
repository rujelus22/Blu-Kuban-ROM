.class Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;
.super Ljava/lang/Object;
.source "TwGLItemDataButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)V

    .line 154
    :cond_13
    return-void
.end method
