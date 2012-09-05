.class Lcom/android/browser/NavScreen$5;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Lcom/android/browser/NavTabScroller$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavScreen;->openNewTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NavScreen;

.field final synthetic val$tab:Lcom/android/browser/Tab;

.field final synthetic val$tix:I


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen;ILcom/android/browser/Tab;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/browser/NavScreen$5;->this$0:Lcom/android/browser/NavScreen;

    iput p2, p0, Lcom/android/browser/NavScreen$5;->val$tix:I

    iput-object p3, p0, Lcom/android/browser/NavScreen$5;->val$tab:Lcom/android/browser/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIII)V
    .registers 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/browser/NavScreen$5;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    iget v1, p0, Lcom/android/browser/NavScreen$5;->val$tix:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 411
    iget-object v0, p0, Lcom/android/browser/NavScreen$5;->this$0:Lcom/android/browser/NavScreen;

    iget-object v1, p0, Lcom/android/browser/NavScreen$5;->val$tab:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/NavScreen;->switchToTab(Lcom/android/browser/Tab;)V
    invoke-static {v0, v1}, Lcom/android/browser/NavScreen;->access$600(Lcom/android/browser/NavScreen;Lcom/android/browser/Tab;)V

    .line 412
    iget-object v0, p0, Lcom/android/browser/NavScreen$5;->this$0:Lcom/android/browser/NavScreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/browser/NavScreen;->isOpeningNewTab:Z

    .line 413
    return-void
.end method
