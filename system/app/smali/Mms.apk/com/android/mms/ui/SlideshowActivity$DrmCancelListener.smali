.class Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCancelListener"
.end annotation


# instance fields
.field final mCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter "callback"

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    .line 1447
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1450
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1451
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 1452
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1454
    :cond_c
    return-void
.end method
