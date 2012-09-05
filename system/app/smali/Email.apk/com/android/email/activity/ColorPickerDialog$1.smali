.class Lcom/android/email/activity/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ColorPickerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/email/activity/ColorPickerDialog$1;->this$0:Lcom/android/email/activity/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog$1;->this$0:Lcom/android/email/activity/ColorPickerDialog;

    #getter for: Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;
    invoke-static {v0}, Lcom/android/email/activity/ColorPickerDialog;->access$000(Lcom/android/email/activity/ColorPickerDialog;)Lcom/android/email/activity/ColorPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerView;->SetSelectedColor(I)V

    .line 49
    return-void
.end method
