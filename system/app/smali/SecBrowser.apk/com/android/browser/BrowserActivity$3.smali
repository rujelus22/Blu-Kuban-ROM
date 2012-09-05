.class Lcom/android/browser/BrowserActivity$3;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->motionDialogInitialOn()V
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
    .line 498
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$3;->this$0:Lcom/android/browser/BrowserActivity;

    const-string v1, "MotionDialogOnOff"

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/BrowserActivity;->setCheckedOnOff(Ljava/lang/String;Z)V

    .line 501
    return-void
.end method
