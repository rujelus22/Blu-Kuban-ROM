.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$7;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$7;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$7;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->removeCaptionDialog()V

    .line 270
    return-void
.end method
