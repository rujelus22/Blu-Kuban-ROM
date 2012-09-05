.class Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$2;
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


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$2;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$2;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mIsClick:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->access$002(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;Z)Z

    .line 208
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 209
    return-void
.end method
