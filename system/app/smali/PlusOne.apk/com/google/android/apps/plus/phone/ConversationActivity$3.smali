.class Lcom/google/android/apps/plus/phone/ConversationActivity$3;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$3;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 538
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 539
    return-void
.end method
