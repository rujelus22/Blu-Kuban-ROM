.class final Lcom/sec/android/app/camera/MenuHelper$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$1;->val$action:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 930
    packed-switch p2, :pswitch_data_e

    .line 935
    :cond_3
    :goto_3
    return-void

    .line 932
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuHelper$1;->val$action:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuHelper$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 930
    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method
