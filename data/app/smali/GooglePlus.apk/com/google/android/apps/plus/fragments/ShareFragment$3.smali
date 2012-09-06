.class Lcom/google/android/apps/plus/fragments/ShareFragment$3;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 369
    packed-switch p2, :pswitch_data_12

    .line 375
    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 371
    :pswitch_d
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 372
    const/4 v0, 0x1

    goto :goto_c

    .line 369
    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_d
    .end packed-switch
.end method
