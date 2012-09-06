.class Lcom/android/inputmethod/latin/Settings$12;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->showKeyHeightDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$12;->this$0:Lcom/android/inputmethod/latin/Settings;

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 826
    move v0, p2

    .line 827
    .local v0, tempMs:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$12;->this$0:Lcom/android/inputmethod/latin/Settings;

    #getter for: Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtSettingsTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/inputmethod/latin/Settings;->access$8(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 832
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 837
    return-void
.end method
