.class Lcom/google/android/apps/plus/phone/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ShareActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ShareActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ShareActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->access$200(Lcom/google/android/apps/plus/phone/ShareActivity;)Lcom/google/android/apps/plus/fragments/ShareFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->onDiscard()V

    .line 185
    return-void
.end method
