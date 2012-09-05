.class Lcom/arcsoft/quickview/QuickViewActivity$11;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->createOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$11;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$11;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0, p2}, Lcom/arcsoft/quickview/QuickViewActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1204
    const/4 v0, 0x1

    return v0
.end method
