.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$9;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$9;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 343
    packed-switch p2, :pswitch_data_14

    .line 350
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 351
    return-void

    .line 345
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$9;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->connectWifi()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    goto :goto_3

    .line 348
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$9;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->connectWifiDirect()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    goto :goto_3

    .line 343
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
