.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$1;
.super Landroid/app/ProgressDialog;
.source "SnsDisclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$1;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 144
    const/16 v0, 0x52

    if-ne p1, v0, :cond_6

    .line 145
    const/4 v0, 0x1

    .line 148
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method
