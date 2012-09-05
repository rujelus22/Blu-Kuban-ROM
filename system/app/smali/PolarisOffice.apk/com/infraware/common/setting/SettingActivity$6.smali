.class Lcom/infraware/common/setting/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/setting/SettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/common/setting/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$6;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 597
    packed-switch p2, :pswitch_data_8

    .line 603
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 600
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 597
    nop

    :pswitch_data_8
    .packed-switch 0x52
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
