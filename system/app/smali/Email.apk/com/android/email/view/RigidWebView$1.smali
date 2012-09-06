.class Lcom/android/email/view/RigidWebView$1;
.super Ljava/lang/Object;
.source "RigidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/view/RigidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/view/RigidWebView;


# direct methods
.method constructor <init>(Lcom/android/email/view/RigidWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/email/view/RigidWebView$1;->this$0:Lcom/android/email/view/RigidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/email/view/RigidWebView$1;->this$0:Lcom/android/email/view/RigidWebView;

    #calls: Lcom/android/email/view/RigidWebView;->performSizeChangeDelayed()V
    invoke-static {v0}, Lcom/android/email/view/RigidWebView;->access$000(Lcom/android/email/view/RigidWebView;)V

    .line 57
    return-void
.end method
