.class Lcom/android/browser/Tab$4$3;
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

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$4;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/android/browser/Tab$4$3;->this$1:Lcom/android/browser/Tab$4;

    iput-object p2, p0, Lcom/android/browser/Tab$4$3;->val$resultMsg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "d"
    .parameter "which"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/browser/Tab$4$3;->val$resultMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1175
    return-void
.end method
