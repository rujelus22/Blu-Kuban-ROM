.class Lcom/sec/android/app/calculator/EventListener$1;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/calculator/EventListener;->onPanelOpened(Lcom/sec/android/widgetapp/calculator/Panel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/EventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/EventListener;)V
    .registers 2
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/sec/android/app/calculator/EventListener$1;->this$0:Lcom/sec/android/app/calculator/EventListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener$1;->this$0:Lcom/sec/android/app/calculator/EventListener;

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x3b

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 507
    return-void
.end method
