.class Lcom/google/android/apps/plus/util/QuickActionsContextMenu$1;
.super Ljava/lang/Object;
.source "QuickActionsContextMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/util/QuickActionsContextMenu;

.field final synthetic val$item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/util/QuickActionsContextMenu;Lcom/google/android/apps/plus/util/QuickActionsMenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu$1;->this$0:Lcom/google/android/apps/plus/util/QuickActionsContextMenu;

    iput-object p2, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu$1;->val$item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu$1;->val$item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->invoke()Z

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu$1;->this$0:Lcom/google/android/apps/plus/util/QuickActionsContextMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->dismiss()V

    .line 146
    return-void
.end method
