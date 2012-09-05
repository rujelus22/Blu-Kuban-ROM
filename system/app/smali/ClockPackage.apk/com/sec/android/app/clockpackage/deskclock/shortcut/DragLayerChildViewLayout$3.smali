.class Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$3;
.super Ljava/lang/Object;
.source "DragLayerChildViewLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 212
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mIsClick:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->access$002(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;Z)Z

    .line 216
    return-void
.end method
