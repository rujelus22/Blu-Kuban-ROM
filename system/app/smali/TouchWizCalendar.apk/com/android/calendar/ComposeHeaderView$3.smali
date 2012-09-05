.class Lcom/android/calendar/ComposeHeaderView$3;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$3;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 933
    const/4 v0, 0x6

    if-ne p2, v0, :cond_28

    .line 935
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$3;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 937
    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView$3;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$3;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :goto_22
    #calls: Lcom/android/calendar/ComposeHeaderView;->addRecipientFromEditText(ZZ)V
    invoke-static {v3, v1, v0}, Lcom/android/calendar/ComposeHeaderView;->access$1000(Lcom/android/calendar/ComposeHeaderView;ZZ)V

    .line 947
    :cond_25
    :goto_25
    return v2

    :cond_26
    move v0, v2

    .line 937
    goto :goto_22

    :cond_28
    move v2, v1

    .line 947
    goto :goto_25
.end method
