.class Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$2;
.super Ljava/lang/Object;
.source "PaintEditDurationPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->dismiss()V

    .line 62
    return-void
.end method
