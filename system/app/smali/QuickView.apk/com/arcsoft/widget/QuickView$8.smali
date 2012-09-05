.class Lcom/arcsoft/widget/QuickView$8;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/QuickView;->initAMPV()V
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
    .line 736
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$8;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBounceCallback(IIIIII)I
    .registers 14
    .parameter "nMessage"
    .parameter "lParam"
    .parameter "imageLeft"
    .parameter "imageTop"
    .parameter "imageRight"
    .parameter "imageBottom"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$8;->this$0:Lcom/arcsoft/widget/QuickView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    #calls: Lcom/arcsoft/widget/QuickView;->handleBounceCallback(IIIIII)I
    invoke-static/range {v0 .. v6}, Lcom/arcsoft/widget/QuickView;->access$2100(Lcom/arcsoft/widget/QuickView;IIIIII)I

    move-result v0

    return v0
.end method
