.class Lcom/android/browser/SecNavScreenGestureDetector$1;
.super Ljava/lang/Object;
.source "SecNavScreenGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SecNavScreenGestureDetector;->handleScale(Landroid/webkit/WebviewScaleGestureDetector;F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecNavScreenGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/browser/SecNavScreenGestureDetector;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/browser/SecNavScreenGestureDetector$1;->this$0:Lcom/android/browser/SecNavScreenGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/browser/SecNavScreenGestureDetector$1;->this$0:Lcom/android/browser/SecNavScreenGestureDetector;

    #getter for: Lcom/android/browser/SecNavScreenGestureDetector;->mUi:Lcom/android/browser/PhoneUi;
    invoke-static {v0}, Lcom/android/browser/SecNavScreenGestureDetector;->access$000(Lcom/android/browser/SecNavScreenGestureDetector;)Lcom/android/browser/PhoneUi;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lcom/android/browser/SecNavScreenGestureDetector$1;->this$0:Lcom/android/browser/SecNavScreenGestureDetector;

    #getter for: Lcom/android/browser/SecNavScreenGestureDetector;->mUi:Lcom/android/browser/PhoneUi;
    invoke-static {v0}, Lcom/android/browser/SecNavScreenGestureDetector;->access$000(Lcom/android/browser/SecNavScreenGestureDetector;)Lcom/android/browser/PhoneUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/PhoneUi;->showNavScreen()V

    .line 113
    :cond_11
    return-void
.end method
