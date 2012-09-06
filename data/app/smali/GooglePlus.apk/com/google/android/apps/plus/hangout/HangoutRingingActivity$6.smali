.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$6;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    const/16 v1, 0xca

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 683
    return-void
.end method
