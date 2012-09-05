.class Lcom/sec/android/socialhub/view/EditTextEx$3;
.super Ljava/lang/Object;
.source "EditTextEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/EditTextEx;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/EditTextEx;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/EditTextEx;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sec/android/socialhub/view/EditTextEx$3;->this$0:Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/socialhub/view/EditTextEx$3;->this$0:Lcom/sec/android/socialhub/view/EditTextEx;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/view/EditTextEx;->access$002(Lcom/sec/android/socialhub/view/EditTextEx;Z)Z

    .line 226
    return-void
.end method
