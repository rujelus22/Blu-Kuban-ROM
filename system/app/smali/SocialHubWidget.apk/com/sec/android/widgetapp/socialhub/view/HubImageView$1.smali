.class Lcom/sec/android/widgetapp/socialhub/view/HubImageView$1;
.super Ljava/lang/Object;
.source "HubImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/view/HubImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/view/HubImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/HubImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/HubImageView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->access$002(Lcom/sec/android/widgetapp/socialhub/view/HubImageView;Z)Z

    .line 47
    return-void
.end method
