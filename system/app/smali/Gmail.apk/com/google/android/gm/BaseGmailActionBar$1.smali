.class Lcom/google/android/gm/BaseGmailActionBar$1;
.super Ljava/lang/Object;
.source "BaseGmailActionBar.java"

# interfaces
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BaseGmailActionBar;->setLabel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BaseGmailActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseGmailActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/gm/BaseGmailActionBar$1;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 298
    if-eqz p1, :cond_9

    .line 299
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar$1;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    iget-object v0, v0, Lcom/google/android/gm/BaseGmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setCurrentLabel(Lcom/google/android/gm/provider/Label;)V

    .line 303
    :cond_9
    return-void
.end method
