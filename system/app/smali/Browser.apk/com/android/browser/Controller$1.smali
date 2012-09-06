.class Lcom/android/browser/Controller$1;
.super Landroid/database/ContentObserver;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/browser/Controller$1;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 243
    iget-object v2, p0, Lcom/android/browser/Controller$1;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v2}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 244
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1d

    .line 245
    iget-object v2, p0, Lcom/android/browser/Controller$1;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v2}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->updateBookmarkedStatus()V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 247
    :cond_1d
    return-void
.end method
