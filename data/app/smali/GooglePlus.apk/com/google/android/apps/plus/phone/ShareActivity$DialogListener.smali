.class Lcom/google/android/apps/plus/phone/ShareActivity$DialogListener;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ShareActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/ShareActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ShareActivity$DialogListener;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/ShareActivity;Lcom/google/android/apps/plus/phone/ShareActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ShareActivity$DialogListener;-><init>(Lcom/google/android/apps/plus/phone/ShareActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 612
    packed-switch p2, :pswitch_data_10

    .line 620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 621
    :goto_6
    return-void

    .line 614
    :pswitch_7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 615
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity$DialogListener;->this$0:Lcom/google/android/apps/plus/phone/ShareActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->finish()V

    goto :goto_6

    .line 612
    :pswitch_data_10
    .packed-switch -0x3
        :pswitch_7
    .end packed-switch
.end method
