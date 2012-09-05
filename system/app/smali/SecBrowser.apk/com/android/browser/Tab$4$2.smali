.class Lcom/android/browser/Tab$4$2;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$4;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$4;

.field final synthetic val$dialog:Z

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$4;ZLandroid/os/Message;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/browser/Tab$4$2;->this$1:Lcom/android/browser/Tab$4;

    iput-boolean p2, p0, Lcom/android/browser/Tab$4$2;->val$dialog:Z

    iput-object p3, p0, Lcom/android/browser/Tab$4$2;->val$resultMsg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "d"
    .parameter "which"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/browser/Tab$4$2;->this$1:Lcom/android/browser/Tab$4;

    iget-boolean v1, p0, Lcom/android/browser/Tab$4$2;->val$dialog:Z

    iget-object v2, p0, Lcom/android/browser/Tab$4$2;->val$resultMsg:Landroid/os/Message;

    #calls: Lcom/android/browser/Tab$4;->createWindow(ZLandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/browser/Tab$4;->access$1600(Lcom/android/browser/Tab$4;ZLandroid/os/Message;)V

    .line 1167
    return-void
.end method
