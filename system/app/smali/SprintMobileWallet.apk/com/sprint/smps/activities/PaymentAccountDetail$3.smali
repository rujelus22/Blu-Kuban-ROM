.class Lcom/sprint/smps/activities/PaymentAccountDetail$3;
.super Ljava/lang/Object;
.source "PaymentAccountDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/PaymentAccountDetail;->showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/PaymentAccountDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$3;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 181
    return-void
.end method
