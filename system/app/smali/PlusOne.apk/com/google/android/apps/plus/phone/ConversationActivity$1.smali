.class Lcom/google/android/apps/plus/phone/ConversationActivity$1;
.super Landroid/widget/FrameLayout;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;->getRootView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 4
    .parameter "widthSpecification"
    .parameter "heightSpecification"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->onDisplayHeightChanged(I)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$400(Lcom/google/android/apps/plus/phone/ConversationActivity;I)V

    .line 252
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 253
    return-void
.end method
