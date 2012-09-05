.class Lcom/swype/android/inputmethod/SwypeInputMethod$3;
.super Ljava/lang/Object;
.source "SwypeInputMethod.java"

# interfaces
.implements Lcom/swype/android/settings/TipDialog$LoadViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/inputmethod/SwypeInputMethod;->showTipDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;


# direct methods
.method constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 2
    .parameter

    .prologue
    .line 5541
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$3;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadView(Lcom/swype/android/settings/TipDialog;Z)V
    .registers 4
    .parameter "tipDialog"
    .parameter "success"

    .prologue
    .line 5544
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$3;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showDialog(Lcom/swype/android/inputmethod/SwypeDialog;)V

    .line 5545
    return-void
.end method
