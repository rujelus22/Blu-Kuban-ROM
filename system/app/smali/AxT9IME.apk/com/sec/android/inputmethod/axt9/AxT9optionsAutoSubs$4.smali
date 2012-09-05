.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    const v1, 0x7f0a0022

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResourceString(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 326
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    const-class v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 327
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    return-void
.end method
