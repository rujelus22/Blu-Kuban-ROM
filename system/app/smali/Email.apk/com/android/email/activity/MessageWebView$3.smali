.class Lcom/android/email/activity/MessageWebView$3;
.super Ljava/lang/Object;
.source "MessageWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageWebView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/email/activity/MessageWebView$3;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$3;->this$0:Lcom/android/email/activity/MessageWebView;

    #calls: Lcom/android/email/activity/MessageWebView;->performSizeChangeDelayed()V
    invoke-static {v0}, Lcom/android/email/activity/MessageWebView;->access$500(Lcom/android/email/activity/MessageWebView;)V

    .line 160
    return-void
.end method
