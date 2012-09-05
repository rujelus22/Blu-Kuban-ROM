.class Lcom/sec/android/app/shareapp/ShareApp$2;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/shareapp/ShareApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$2;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 134
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$2;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    invoke-static {v0}, Lcom/sec/android/app/shareapp/ShareApp;->access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$2;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    invoke-static {v0}, Lcom/sec/android/app/shareapp/ShareApp;->access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 145
    :cond_15
    return-void
.end method
