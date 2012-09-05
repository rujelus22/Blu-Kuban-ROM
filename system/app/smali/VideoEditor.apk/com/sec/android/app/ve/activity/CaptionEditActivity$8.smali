.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$8;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;->createCaptionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$8;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$8;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->removeCaptionDialog()V

    .line 276
    return-void
.end method
