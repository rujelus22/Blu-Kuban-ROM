.class Lcom/google/android/talk/AddBuddyScreen$2;
.super Ljava/lang/Object;
.source "AddBuddyScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AddBuddyScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AddBuddyScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AddBuddyScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/talk/AddBuddyScreen$2;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 218
    :goto_7
    return-void

    .line 212
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen$2;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0}, Lcom/google/android/talk/AddBuddyScreen;->inviteBuddies()V

    goto :goto_7

    .line 215
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen$2;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0}, Lcom/google/android/talk/AddBuddyScreen;->finish()V

    goto :goto_7

    .line 210
    :pswitch_data_14
    .packed-switch 0x7f100015
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
