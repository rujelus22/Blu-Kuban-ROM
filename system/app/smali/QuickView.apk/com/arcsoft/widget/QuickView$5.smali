.class Lcom/arcsoft/widget/QuickView$5;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;


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
    .line 681
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$5;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAMPVCallback(IIII)I
    .registers 6
    .parameter "nMessage"
    .parameter "lParam"
    .parameter "wParam"
    .parameter "UserData"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$5;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleAMPVCallback(IIII)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/arcsoft/widget/QuickView;->access$1900(Lcom/arcsoft/widget/QuickView;IIII)I

    move-result v0

    return v0
.end method
