.class Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView$1;
.super Ljava/lang/Object;
.source "DragLayerChildView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setClickable(Z)V

    .line 258
    return-void
.end method
