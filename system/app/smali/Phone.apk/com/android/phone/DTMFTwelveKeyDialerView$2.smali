.class Lcom/android/phone/DTMFTwelveKeyDialerView$2;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerView;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 92
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerView;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->access$000(Lcom/android/phone/DTMFTwelveKeyDialerView;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 94
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerView;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->access$000(Lcom/android/phone/DTMFTwelveKeyDialerView;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerView;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->access$100(Lcom/android/phone/DTMFTwelveKeyDialerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerView;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->access$000(Lcom/android/phone/DTMFTwelveKeyDialerView;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3a

    .line 96
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerView;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->access$000(Lcom/android/phone/DTMFTwelveKeyDialerView;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 99
    :cond_3a
    return-void
.end method
