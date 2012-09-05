.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSaveToDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 530
    packed-switch p2, :pswitch_data_1c

    .line 542
    :goto_3
    return-void

    .line 532
    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$100()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 536
    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$100()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 530
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_10
    .end packed-switch
.end method
