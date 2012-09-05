.class Lcom/sec/android/app/minimode/MiniModeService$14;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$14;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$14;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x3

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$700(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 1186
    return-void
.end method
