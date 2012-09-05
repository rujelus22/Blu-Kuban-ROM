.class Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$2;
.super Ljava/lang/Object;
.source "AbstractServiceProvider.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$2;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$2;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onPreCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 628
    return-void
.end method
