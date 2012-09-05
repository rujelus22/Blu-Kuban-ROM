.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$4;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$4;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$4;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->showDialog(I)V

    .line 152
    return-void
.end method
