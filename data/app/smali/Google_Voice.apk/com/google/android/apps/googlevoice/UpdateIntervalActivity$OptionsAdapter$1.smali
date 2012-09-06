.class Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter$1;
.super Ljava/lang/Object;
.source "UpdateIntervalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter$1;->this$1:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;

    iput p2, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter$1;->this$1:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    iget v1, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter$1;->val$position:I

    #calls: Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->onOptionClicked(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->access$000(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;I)V

    .line 152
    return-void
.end method
