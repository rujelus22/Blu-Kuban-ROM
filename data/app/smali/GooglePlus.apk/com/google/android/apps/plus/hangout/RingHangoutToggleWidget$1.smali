.class Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget$1;
.super Ljava/lang/Object;
.source "RingHangoutToggleWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget$1;->this$0:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget$1;->this$0:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget$1;->this$0:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->getRingInvitees()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->setRingInvitees(Z)V

    .line 45
    return-void

    .line 44
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method
