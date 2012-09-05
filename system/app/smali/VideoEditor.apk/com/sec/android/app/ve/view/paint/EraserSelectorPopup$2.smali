.class Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$2;
.super Ljava/lang/Object;
.source "EraserSelectorPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$2;->this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$2;->this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->dismiss()V

    .line 74
    return-void
.end method
