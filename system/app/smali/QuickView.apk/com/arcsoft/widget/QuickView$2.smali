.class Lcom/arcsoft/widget/QuickView$2;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/QuickView;-><init>(Lcom/arcsoft/widget/IBase;Lcom/arcsoft/widget/QuickView$FileListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/QuickView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/QuickView;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$2;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureCallback(IIII)Z
    .registers 6
    .parameter "nMessage"
    .parameter "lParam"
    .parameter "wParam"
    .parameter "UserData"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$2;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleGestureCallback(IIII)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/arcsoft/widget/QuickView;->access$100(Lcom/arcsoft/widget/QuickView;IIII)Z

    move-result v0

    return v0
.end method
