.class Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;
.super Ljava/lang/Object;
.source "DftRilActionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->injectKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

.field final synthetic val$event1:Landroid/view/KeyEvent;

.field final synthetic val$event2:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    iput-object p2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;->val$event1:Landroid/view/KeyEvent;

    iput-object p3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;->val$event2:Landroid/view/KeyEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 363
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;->val$event1:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 364
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;->val$event2:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 366
    return-void
.end method
