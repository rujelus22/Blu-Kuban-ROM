.class Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$6;
.super Ljava/lang/Object;
.source "VideoClipViewGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->onDoubleTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$6;->this$0:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 528
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 530
    return-void
.end method
