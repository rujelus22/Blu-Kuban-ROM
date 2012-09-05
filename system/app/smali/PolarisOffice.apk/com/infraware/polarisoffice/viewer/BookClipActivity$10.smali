.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$10;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$10;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 446
    packed-switch p2, :pswitch_data_8

    .line 452
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 450
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 446
    nop

    :pswitch_data_8
    .packed-switch 0x52
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
