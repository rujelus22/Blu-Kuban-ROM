.class Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;
.super Ljava/lang/Object;
.source "DragLayerChildViewLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->createShorcutDeleteAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    .line 196
    .local v0, childViewContainer:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;
    if-eqz v0, :cond_f

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->delView(Landroid/view/View;)V

    .line 198
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mIsClick:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->access$002(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;Z)Z

    .line 199
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 200
    return-void
.end method
