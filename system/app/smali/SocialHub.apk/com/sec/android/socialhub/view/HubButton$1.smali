.class Lcom/sec/android/socialhub/view/HubButton$1;
.super Ljava/lang/Object;
.source "HubButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/HubButton;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/HubButton;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/HubButton;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/socialhub/view/HubButton$1;->this$0:Lcom/sec/android/socialhub/view/HubButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HubButton$1;->this$0:Lcom/sec/android/socialhub/view/HubButton;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/socialhub/view/HubButton;->isClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/view/HubButton;->access$002(Lcom/sec/android/socialhub/view/HubButton;Z)Z

    .line 48
    return-void
.end method
