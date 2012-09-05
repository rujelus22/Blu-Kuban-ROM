.class Lcom/sprint/smps/activities/AddPaymentOption$1;
.super Ljava/lang/Object;
.source "AddPaymentOption.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddPaymentOption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddPaymentOption;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddPaymentOption;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddPaymentOption$1;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 72
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 73
    const/4 v0, 0x0

    return v0
.end method
