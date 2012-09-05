.class Lcom/android/browser/BrowserActivity$10;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->motionDialogInitialOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 599
    return-void
.end method
