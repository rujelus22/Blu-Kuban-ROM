.class Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;
.super Ljava/lang/Object;
.source "AbstractServiceProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->invokeHandleSnsCallback(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

.field final synthetic val$bSuccess:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reqType:I


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;Landroid/content/Context;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    iput-object p2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->val$reqType:I

    iput-boolean p4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->val$bSuccess:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->val$reqType:I

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;->val$bSuccess:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onHandleSnsCallback(Landroid/content/Context;IZ)V

    .line 708
    return-void
.end method
