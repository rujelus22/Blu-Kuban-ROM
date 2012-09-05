.class Lcom/android/calendar/EditEvent$64;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 3013
    iput-object p1, p0, Lcom/android/calendar/EditEvent$64;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "actionId"
    .parameter "arg2"

    .prologue
    .line 3015
    packed-switch p2, :pswitch_data_10

    .line 3020
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 3017
    :pswitch_5
    iget-object v0, p0, Lcom/android/calendar/EditEvent$64;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$7000(Lcom/android/calendar/EditEvent;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 3015
    nop

    :pswitch_data_10
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method
